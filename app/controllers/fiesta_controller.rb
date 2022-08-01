class FiestaController < ApplicationController
  before_action :set_fiestum, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show, :fiesta_pasadas, :fiesta_proximas]

  # GET /fiesta or /fiesta.json
  def index
    @fiesta = Fiestum.all
  end

  # GET /fiesta/1 or /fiesta/1.json
  def show
  end

  # GET /fiesta/new
  def new
    @fiestum = current_user.created_fiesta.build 
  end

  # GET /fiesta/perfil
  def perfil
    @fiesta = current_user.created_fiesta.all
    @attended_fiesta = current_user.attended_fiesta #<---- to view attended events on profile page
  end

  # GET /fiesta/pasadas
  def fiesta_pasadas
    @fiesta = Fiestum.all
  end

  # GET /fiesta/proximas
  def fiesta_proximas
    @fiesta = Fiestum.all
  end

  # GET /fiesta/1/edit
  def edit
    if current_user.id == @fiestum.creator_id
      current_user.created_fiesta.find(params[:id])
    else
      redirect_to root_path, :alert => "Area prohibido" 
    end
  end

  # POST /fiesta or /fiesta.json
  def create
    @fiestum = current_user.created_fiesta.build(fiestum_params)

    respond_to do |format|
      if @fiestum.save
        format.html { redirect_to root_path, notice: "Creó una nueva fiesta." }
        format.json { render :show, status: :created, location: @fiestum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fiestum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fiesta/1 or /fiesta/1.json
  def update
    respond_to do |format|
      if @fiestum.update(fiestum_params)
        format.html { redirect_to fiestum_url(@fiestum), notice: "Fiesta se actualiza" }
        format.json { render :show, status: :ok, location: @fiestum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fiestum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fiesta/1 or /fiesta/1.json
  def destroy
    if current_user.id == @fiestum.creator_id
      @fiestum.destroy
      respond_to do |format|
        format.html { redirect_to fiesta_url, notice: "Se cancela la fiesta" }
        format.json { head :no_content }
      end
    else
      redirect_to root_path, :alert => "Area prohibido" 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fiestum
      @fiestum = Fiestum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fiestum_params
      params.require(:fiestum).permit(:nombre, :descripcion, :fetcha, :lugar)
    end
end

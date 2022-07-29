class AttendingFiestaController < ApplicationController
  def new
    @fiestum = Fiestum.find(params[:id])
  end

  # Join a party
  def create
    @fiestum = Fiestum.find(params[:id])
    @fiestum.attendees << current_user
    flash[:notice] = "Se registró para la fiesta. Genial!"
    redirect_to request.referer #, anchor:  "fiestum_#{@fiestum.id}"
  end

  def destroy
    @fiestum = Fiestum.find(params[:id])
    @fiestum.attendees.delete(current_user)
    flash[:notice] = "¿Por qué no quieres ir a la fiesta? No registrado."
    #redirect_back(fallback_location: root_path)   #<--- this aint working
    redirect_to root_path #, anchor: "fiestum_#{@fiestum.id}"
  end
end

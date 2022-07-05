class AttendingFiestaController < ApplicationController
  def new
    @fiestum = Fiestum.find(params[:id])
  end

  def create
    @fiestum = Fiestum.find(params[:id])
    @fiestum.attendees << current_user
    flash[:notice] = "Se registró para la fiesta"
    redirect_to_root_path
  end
end

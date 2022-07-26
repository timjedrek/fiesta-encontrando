class AttendingFiestaController < ApplicationController
  def new
    @fiestum = Fiestum.find(params[:id])
  end

  def create
    @fiestum = Fiestum.find(params[:id])
    @fiestum.attendees << current_user
    flash[:notice] = "Se registró para la fiesta"
    redirect_to root_path
  end

  # making another create function for show view so that when users click attend, it stays on the same page rather than redirect.
  def crear
    @fiestum = Fiestum.find(params[:id])
    @fiestum.attendees << current_user
    flash[:notice] = "test test"
    redirect_to @fiestum
  end

  def destroy
    @fiestum = Fiestum.find(params[:id])
    @fiestum.attendees.delete(current_user)
    flash[:notice] = "Por que no tu gusta va ala fiesta?!"
    redirect_to root_path
  end
end

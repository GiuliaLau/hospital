class DoctorsController < ApplicationController

def index
  @doctors = Doctor.all()
end

def show
  @doctor = Doctor.find(params[:id])
end

def new
  @doctor = Doctor.new()
end

def create
  @doctor = Doctor.new(doctor_params)
  @doctor.save
  redirect_to doctors_path(@doctors)
end

def edit
  @doctor = Doctor.find(params[:id])
end

def update
  @doctor = Doctor.find(params[:id])
  @doctor.update(doctor_params)
  redirect_to doctors_path(@doctor)
end

def destroy
  @doctor = Doctor.find(params[:id])
  @doctor.destroy
  redirect_to root_path
end

private

def doctor_params
  params.require(:doctor).permit(:first_name, :last_name, :title, :specialty, :experience)
end

end

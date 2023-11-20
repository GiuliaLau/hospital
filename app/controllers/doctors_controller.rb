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
  #redirect_to doctors_path(@doctors)
end

private

def doctor_params
  params.require(:doctor).permit(:first_name, :last_name, :title, :specialty, :experience)
end

end

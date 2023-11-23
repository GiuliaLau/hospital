class AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def new
    @patient = Patient.find(params[:patient_id])
    @appointment = Appointment.new
  end

  def create
    @patient = Patient.find(params[:patient_id])
    @appointment = Appointment.new(appoinment_params)
    @appointment.patient = @patient
    @appointment.save
    redirect_to patient_path(@patient)
  end

  private

  def appoinment_params
    params.require(:appointment).permit(:date, :cause, :urgent, :doctor_id)
  end
end

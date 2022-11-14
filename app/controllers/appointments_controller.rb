class AppointmentsController < ApplicationController
  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      redirect_to root_path
    else
      render 'pages/home'
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:start_time, :end_time)
  end
end

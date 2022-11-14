class PagesController < ApplicationController
  def home
    @appointment = Appointment.new
  end
end

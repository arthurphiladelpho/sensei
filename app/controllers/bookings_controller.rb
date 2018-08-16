class BookingsController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def create
    raise
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.datetime = 'January 1 2019 12:00 pm'
    @booking.save
  end

  def destroy
  end

  private
  def booking_params
    params.permit(:lesson_id)
  end
end

class BookingsController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def new
    @lesson = Lesson.find(params[:lesson_id])
    @booking = Booking.new
  end

  def create
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

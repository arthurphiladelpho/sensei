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
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.datetime = params[:booking]
    @booking.save
    redirect_to dashboard_path(current_user)
  end

  def destroy
  end

  private
  def booking_params
    params.permit(:lesson_id, :booking)
  end
end

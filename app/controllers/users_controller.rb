class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def dashboard
   @user = User.find(params[:id])
   @lessons = Lesson.where(user_id: @user.id)
   @bookings = Booking.where(user_id: @user.id)
  end

end

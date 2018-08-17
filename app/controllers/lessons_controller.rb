class LessonsController < ApplicationController

  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR description ILIKE :query OR style ILIKE :query"
      @lessons = Lesson.where(sql_query, query: "%#{params[:query]}%")
    else
      @lessons = Lesson.all
    end

    # create markers from the lesson latitude and longitude attributes which will be available to be displayed on the map.
    @markers = @lessons.map do |lesson|
      {
        lat: lesson.latitude,
        lng: lesson.longitude
      }
    end
  end

  def show
    @lesson = Lesson.find(params[:id])
    @markers = [{
      lat: @lesson.latitude,
      lng: @lesson.longitude
    }]
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)

    @lesson.user_id = current_user.id
    if @lesson.save
      redirect_to @lesson
    else
      render :new
    end
  end

  private

  def lesson_params
    params.require(:lesson).permit(
      :name,
      :description,
      :style,
      :difficulty,
      :duration,
      :price,
      :location,
      :photo
      )
  end
end

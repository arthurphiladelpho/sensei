class LessonsController < ApplicationController


  def index

    @lessons = Lesson.all

    # decided NOT to use the line below as we want ALL flats displayed on the page, regardless of whether they have lat/long.  This is due to API limits potentially not showing anything.  For deployment we would use the below line.
    @lessons_markers = Lesson.where.not(latitude: nil, longitude: nil)
    # create markers from the lesson latitude and longitude attributes which will be available to be displayed on the map.
    @markers = @lessons_markers.map do |lesson|
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
end

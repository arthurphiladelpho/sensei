class AddCoordinatesToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :location, :string
    add_column :lessons, :latitude, :float
    add_column :lessons, :longitude, :float
  end
end

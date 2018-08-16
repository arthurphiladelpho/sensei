class AddPhotoToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :photo, :string
  end
end

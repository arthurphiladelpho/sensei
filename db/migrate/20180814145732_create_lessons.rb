class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :description
      t.string :style
      t.integer :difficulty
      t.integer :duration
      t.integer :price

      t.timestamps
    end
  end
end

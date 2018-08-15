class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.datetime :datetime
      t.references :user, foreign_key: true
      t.references :lesson, foreign_key: true

      t.timestamps
    end
  end
end

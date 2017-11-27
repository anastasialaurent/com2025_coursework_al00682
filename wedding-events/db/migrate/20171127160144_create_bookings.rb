class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.belongs_to :event, index: true, foreign_key: true, null: false
      t.belongs_to :room, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end

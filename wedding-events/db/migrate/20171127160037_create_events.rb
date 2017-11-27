class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.date :date
      t.string :time_slot
      t.integer :no_of_guests
      t.boolean :paid
      t.string :client_telephone

      t.timestamps null: false
    end
  end
end

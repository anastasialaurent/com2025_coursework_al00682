class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.text :description
      t.date :date, null: false
      t.string :time_slot, null: false
      t.integer :no_of_guests
      t.boolean :paid, null: false
      t.string :client_telephone, null: false

      t.timestamps null: false
    end
  end
end

class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name, null: false
      t.string :theme
      t.string :img_url

      t.timestamps null: false
    end
  end
end

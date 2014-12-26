class CreateAppartments < ActiveRecord::Migration
  def change
    create_table :appartments do |t|
      t.string :house_type
      t.string :location
      t.integer :rent

      t.timestamps
    end
  end
end

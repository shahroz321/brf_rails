class CreateApartments < ActiveRecord::Migration[6.0]
  def change
    create_table :apartments do |t|
      t.integer :number
      t.float :area
      t.integer :floor
      t.integer :amount_of_room

      t.timestamps
    end
  end
end

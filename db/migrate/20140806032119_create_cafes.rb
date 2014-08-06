class CreateCafes < ActiveRecord::Migration
  def change
    create_table :cafes do |t|
      t.string :name
      t.text :address
      t.string :tel

      t.timestamps
    end
  end
end

class CreateParcs < ActiveRecord::Migration
  def change
    create_table :parcs do |t|
      t.string :name
      t.string :description
      t.string :city

      t.timestamps null: false
    end
  end
end

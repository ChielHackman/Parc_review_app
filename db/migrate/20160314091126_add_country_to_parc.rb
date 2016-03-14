class AddCountryToParc < ActiveRecord::Migration
  def change
    add_column :parcs, :country, :string
  end
end

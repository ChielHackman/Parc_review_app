class AddParcRefToReviews < ActiveRecord::Migration
  def change
    add_reference :reviews, :parc, index: true, foreign_key: true
  end
end

class AddTitleToReviews < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :user, foreign_key: true
    add_reference :reviews, :brand, foreign_key: true
    add_column :reviews, :title, :string, null: false

  end
end

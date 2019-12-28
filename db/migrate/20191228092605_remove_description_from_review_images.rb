class RemoveDescriptionFromReviewImages < ActiveRecord::Migration[5.2]
  def change
    remove_column :review_images, :description, :text
  end
end

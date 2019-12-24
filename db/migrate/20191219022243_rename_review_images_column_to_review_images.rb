class RenameReviewImagesColumnToReviewImages < ActiveRecord::Migration[5.2]
  def change
    rename_column :review_images, :review_images, :image

  end
end

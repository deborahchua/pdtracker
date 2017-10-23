class RenameReviewsColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :reviews, :objectives_id, :objective_id
  end
end

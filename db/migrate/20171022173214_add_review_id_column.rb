class AddReviewIdColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :objectives, :review_id, :integer
  end
end

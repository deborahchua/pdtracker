class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :question
      t.text :comment
      t.boolean :completed
      t.integer :confidence_level
      t.timestamps
    end
  end
end

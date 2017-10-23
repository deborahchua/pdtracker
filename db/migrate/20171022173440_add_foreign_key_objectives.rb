class AddForeignKeyObjectives < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :objectives, :reviews
  end
end

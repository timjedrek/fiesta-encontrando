class AddCreatorToFiesta < ActiveRecord::Migration[7.0]
  def change
    add_reference :fiesta, :creator, null: false
    add_foreign_key :fiesta, :users, column: :creator_id
  end
end

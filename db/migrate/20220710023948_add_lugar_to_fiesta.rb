class AddLugarToFiesta < ActiveRecord::Migration[7.0]
  def change
    add_column :fiesta, :lugar, :string
  end
end

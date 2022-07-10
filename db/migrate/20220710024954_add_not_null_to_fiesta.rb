class AddNotNullToFiesta < ActiveRecord::Migration[7.0]
  def change
    change_column_null :fiesta, :lugar, false
  end
end

class CreateAttendingFiesta < ActiveRecord::Migration[7.0]
  def change
    create_table :attending_fiesta do |t|
      t.references :user, null: false, foreign_key: true
      t.references :fiestum, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateFiesta < ActiveRecord::Migration[7.0]
  def change
    create_table :fiesta do |t|
      t.string :nombre
      t.text :descripcion
      t.datetime :fetcha

      t.timestamps
    end
  end
end

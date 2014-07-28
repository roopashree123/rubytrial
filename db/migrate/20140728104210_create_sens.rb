class CreateSens < ActiveRecord::Migration
  def change
    create_table :sens do |t|
      t.string :name
      t.integer :phone

      t.timestamps
    end
  end
end

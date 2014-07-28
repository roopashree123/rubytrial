class CreateOnes < ActiveRecord::Migration
  def change
    create_table :ones do |t|
      t.string :name
      t.integer :phone

      t.timestamps
    end
  end
end

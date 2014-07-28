class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.integer :age
      t.text :address

      t.timestamps
    end
  end
end

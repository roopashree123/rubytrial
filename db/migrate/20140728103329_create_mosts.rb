class CreateMosts < ActiveRecord::Migration
  def change
    create_table :mosts do |t|
      t.integer :phone

      t.timestamps
    end
  end
end

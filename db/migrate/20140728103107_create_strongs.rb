class CreateStrongs < ActiveRecord::Migration
  def change
    create_table :strongs do |t|
      t.string :name
      t.integer :phone

      t.timestamps
    end
  end
end

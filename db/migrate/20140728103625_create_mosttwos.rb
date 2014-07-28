class CreateMosttwos < ActiveRecord::Migration
  def change
    create_table :mosttwos do |t|
      t.integer :phone

      t.timestamps
    end
  end
end

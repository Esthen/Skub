class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.string :key
      t.boolean :isactive
      t.integer :accesstype

      t.timestamps null: false
    end
  end
end

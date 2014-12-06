class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :part_number
      t.text :description
      t.decimal :clp, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end

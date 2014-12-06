class CreatePartDetails < ActiveRecord::Migration
  def change
    create_table :part_details do |t|
      t.string :part_number
      t.text :description
      t.decimal :clp, :precision => 8, :scale => 2
      t.string :part_id

      t.timestamps
    end
  end
end

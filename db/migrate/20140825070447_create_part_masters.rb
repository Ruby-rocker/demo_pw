class CreatePartMasters < ActiveRecord::Migration
  def change
    create_table :part_masters do |t|
      t.integer :part_number
      t.integer :engine_number
      t.integer :cll

      t.timestamps
    end
  end
end

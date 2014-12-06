class CreateEngines < ActiveRecord::Migration
  def change
    create_table :engines do |t|
      t.string :engine_number
      t.integer :cll_no

      t.timestamps
    end
  end
end

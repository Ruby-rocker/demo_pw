class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.integer :engine_id
      t.integer :part_id
      t.string :search_name
      t.integer :frequency_id

      t.timestamps
    end
  end
end

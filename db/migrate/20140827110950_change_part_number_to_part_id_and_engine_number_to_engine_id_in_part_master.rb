class ChangePartNumberToPartIdAndEngineNumberToEngineIdInPartMaster < ActiveRecord::Migration
  def change
    rename_column :part_masters, :part_number, :part_detail_id
    rename_column :part_masters, :engine_number, :engine_id
  end
end

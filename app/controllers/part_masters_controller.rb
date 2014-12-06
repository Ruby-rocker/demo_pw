class PartMastersController < ApplicationController

  def index
    #spreadsheet = Roo::Spreadsheet.open('public/CLL.xlsx')
    #(0..28).each do |column_no|
    #  spreadsheet.each_with_index do |row, index|
    #    row_number  = index+1
    #    unless row[column_no] == 'N/A' || row[column_no] == nil
    #      e = []
    #      eng_column =  column_no + 1
    #      cll = Engine.where(:cll_no=> eng_column)
    #      cll.each do |key|
    #        e << key
    #      end
    #      ab = []
    #      b = e.each.map(&:id)
    #      b.each do |engine_id|
    #         ab <<  engine_id
    #        @part_master = PartMaster.create(:part_number=>row_number,:engine_number=>engine_id,:cll=>row[column_no])
    #        @part_master.save!
    #      end
    #    end
    #  end
    #end

    @part_masters = PartMaster.all
  end

end

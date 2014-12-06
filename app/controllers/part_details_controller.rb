class PartDetailsController < ApplicationController

  def index
    #spreadsheet = Roo::Spreadsheet.open('public/Parts_details.xlsx')
    #row_no = 2
    #(2..spreadsheet.last_row).each do |i|
    #  header = spreadsheet.row(row_no)
    #  row = Hash[[header].transpose]
    #  a = []
    #  row.each do |key,value|
    #    a << key
    #  end
    #  part_detail = PartDetail.create(:part_number => a[0],:description => a[1], :clp => a[2], :part_id => a[3])
    #  part_detail.save!
    #  row_no = row_no + 1
    #end

    @part_details = PartDetail.all
  end
end

class EnginesController < ApplicationController

  def index
    #spreadsheet = Roo::Spreadsheet.open('public/Engine_numbers.xlsx')
    #row_no = 2
    #(2..spreadsheet.last_row).each do |i|
    #  header = spreadsheet.row(row_no)
    #  row = Hash[[header].transpose]
    #  a = []
    #  row.each do |key,value|
    #    a << key
    #  end
    #  engine = Engine.create(:engine_number => a[0],:cll_no => a[1])
    #  engine.save!
    #  row_no = row_no + 1
    #end
    @engines = Engine.all
  end

  def get_parts
    if params[:engine_id]
      @parts = PartDetail.joins(:part_masters).where('part_masters.engine_id = ?',params[:engine_id])
    else
      @parts = PartDetail.all
    end
    respond_to do |format|
      format.html { render 'home/get_parts', :layout => nil }
    end
  end
end

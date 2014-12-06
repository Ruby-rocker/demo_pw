class SearchesController < ApplicationController
  def index
    @part_masters = PartMaster.all
    @engines = Engine.all
    @part_details = PartDetail.all
  end

  def search_details
    @part_masters = PartMaster.where(:engine_id => params[:search][:engine_id], :part_detail_id => params[:search][:part_id])
  end

private
  def search_params
  params.require(:search).permit(:engine_id,:part_id,:search_name,:frequency_id)
  end
end

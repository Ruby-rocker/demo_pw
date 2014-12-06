class HomeController < ApplicationController

  def index
   @engines = Engine.all
   @frequency = Frequency.all
  end

  def home_params
    params.require(:home).permit(:engine_id)
  end
end

class HomeController < ApplicationController
  
  def index
    if signed_in?
      @items = Item.paginate :page => params[:page]
    end
  end

  def show
  end

end

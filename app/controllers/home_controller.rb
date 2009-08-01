class HomeController < ApplicationController
  before_filter :authenticate, :except => [:index]
  
  def index
    
  end

  def show
    render :action => params[:page]
  end  

end

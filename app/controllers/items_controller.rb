class ItemsController < ApplicationController
  before_filter :authenticate
  before_filter :load_item, :only => [:show, :edit, :update, :destroy]
  before_filter :authorize, :only => [:edit, :update, :destroy]

  def index
    @items = Item.paginate :page => params[:page]

    respond_to do |format|
      format.html # index.html.erb
    end
  end


  def show
    @item = Item.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end


  def new
    @item = Item.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end


  def edit
    @item = Item.find(params[:id])
  end


  def create
    @item = Item.new(params[:item])

    @item.user = current_user

    if @item.title.empty?
      @item.title = @item.body.gsub(/\<[^\>]+\>/, '')[0...37] + "..."
    end

    respond_to do |format|
      if @item.save
        flash[:notice] = 'Message was successfully created.'
        format.html { redirect_to(@item) }
      else
        format.html { render :action => "new" }
      end
    end
  end


  def update
    @item = Item.find(params[:id])

    respond_to do |format|
      if @item.update_attributes(params[:item])
        flash[:notice] = 'Message was successfully updated.'
        format.html { redirect_to(@item) }
      else
        format.html { render :action => "edit" }
      end
    end
  end


  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    respond_to do |format|
      format.html { redirect_to(items_url) }
    end
  end
  
  
  private
    def load_item
      @item = Item.find(params[:id])
    end
    
    def authorize
      unless @item.changeable_by?(current_user)
        render :text => 'Unauthorized', :status => :unauthorized
      end
    end
end

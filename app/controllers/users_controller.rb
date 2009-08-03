class UsersController < Clearance::UsersController
  before_filter :authenticate, :except => [:new, :create]
  before_filter :load_user, :only => [:show, :edit, :update]
  before_filter :authorize, :only => [:edit, :update]
  
  def index
    @users = User.paginate :page => params[:page]
  end

  def show    
  end
  
  def edit    
  end
  
  def update
    
    if @user.update_attributes(params[:user])
      flash[:notice] = 'User Profile was successfully updated.'
      redirect_to @user
    else
      render :action => "edit" 
    end
    
  end

  protected 

    def load_user
      @user = User.find(params[:id])
    end

  private
    
    def authorize
      unless @user == current_user || current_user.admin?
        render :text => 'Unauthorized', :status => :unauthorized
      end
    end
end
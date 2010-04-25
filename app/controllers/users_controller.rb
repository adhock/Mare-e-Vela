class UsersController < ApplicationController
  before_filter :authorize

  layout "admin"

  def index
    @users = User.find(:all, :include => ['state','role'])
  end

  def show
    @user = User.find(params[:id], :include => ['state','role'])
  end

  def new
   @user = User.new
   @roles = Role.all
   @states = State.all
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = 'Utilisteur enregistre'
      redirect_to user_url(@user)
    else
      flash[:error] = 'Enregistrement utilisateur impossible'
      render :action => "new"
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:notice] = 'Modification effectuee'
      redirect_to user_url(@user)
    else
      flash[:error] = 'Modification impossible'
    end
  end

  def edit
    @user = User.find(params[:id])
    @roles = Role.all
    @states = State.all
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to users_url
  end

end

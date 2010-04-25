class UsersController < ApplicationController

  def index
    @users = User.find(:all, :include => ['state','role'])
  end

  def show
    @user = User.find(params[:id], :include => ['state','role'])
  end

  def new
   @user = User.new 
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = 'Utilisteur enregistre'
      redirect_to user_path(@user)
    else
      flash[:error] = 'Enregistrement utilisateur impossible'
      render :action => "new"
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end


end

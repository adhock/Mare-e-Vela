class ClubsController < ApplicationController
  before_filter :authorize

  layout "admin"

  def index
    @clubs = Club.find(:all)
  end

  def show
    @club = Club.find(params[:id])
  end

  def new
   @club = Club.new
  end

  def create
    @club = Club.new(params[:club])
    if @club.save
      flash[:notice] = 'Club enregistre'
      redirect_to club_url(@club)
    else
      flash[:error] = 'Enregistrement club impossible'
      render :action => "new"
    end
  end

  def update
    @club = Club.find(params[:id])
    if @club.update_attributes(params[:club])
      flash[:notice] = 'Modification effectuee'
      redirect_to club_url(@club)
    else
      flash[:error] = 'Modification impossible'
    end
  end

  def edit
    @club = Club.find(params[:id])
  end

  def destroy
    club = Club.find(params[:id])
    club.destroy
    redirect_to clubs_url
  end

end

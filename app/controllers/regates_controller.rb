class RegatesController < ApplicationController
  before_filter :authorize

  layout "admin"

  def index
    @regates = Regate.find(:all, :include => ['club','competition'])
  end

  def show
    @regate = Regate.find(params[:id], :include => ['club','competition'])
  end

  def new
   @regate = Regate.new
   @clubs = Club.all
   @competitions = Competition.all
  end

  def create
    @regate = Regate.new(params[:regate])
    if @regate.save
      flash[:notice] = 'Regate ajoutee'
      redirect_to regate_url(@regate)
    else
      flash[:error] = 'Ajout de regate impossible'
      render :action => "new"
    end
  end

  def update
    @regate = Regate.find(params[:id])
    if @regate.update_attributes(params[:regate])
      flash[:notice] = 'Modification effectuee'
      redirect_to regate_url(@regate)
    else
      flash[:error] = 'Modification impossible'
    end
  end

  def edit
    @regate = Regate.find(params[:id])
    @clubs = Club.all
    @competitions = Competition.all
  end

  def destroy
    regate = Regate.find(params[:id])
    regate.destroy
    redirect_to regates_url
  end


end

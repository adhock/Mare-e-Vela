class CompetitionsController < ApplicationController
  before_filter :authorize

  layout "admin"

  def index
    @competitions = Competition.find(:all)
  end

  def show
    @competition = Competition.find(params[:id])
  end

  def new
   @competition = Competition.new
  end

  def create
    @competition = Competition.new(params[:competition])
    if @competition.save
      flash[:notice] = 'Competition ajoutee'
      redirect_to competition_url(@competition)
    else
      flash[:error] = 'Ajout de competition impossible'
      render :action => "new"
    end
  end

  def update
    @competition = Competition.find(params[:id])
    if @competition.update_attributes(params[:competition])
      flash[:notice] = 'Modification effectuee'
      redirect_to competition_url(@competition)
    else
      flash[:error] = 'Modification impossible'
    end
  end

  def edit
    @competition = Competition.find(params[:id])
  end

  def destroy
    competition = Competition.find(params[:id])
    competition.destroy
    redirect_to competitions_url
  end

end

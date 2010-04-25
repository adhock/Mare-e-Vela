class LinksController < ApplicationController
  before_filter :authorize

  layout "admin"

  def index
    @links = Link.find(:all)
  end

  def show
    @link = Link.find(params[:id])
  end

  def new
   @link = Link.new
  end

  def create
    @link = Link.new(params[:link])
    if @link.save
      flash[:notice] = 'Link enregistre'
      redirect_to link_url(@link)
    else
      flash[:error] = 'Enregistrement link impossible'
      render :action => "new"
    end
  end

  def update
    @link = Link.find(params[:id])
    if @link.update_attributes(params[:link])
      flash[:notice] = 'Modification effectuee'
      redirect_to link_url(@link)
    else
      flash[:error] = 'Modification impossible'
    end
  end

  def edit
    @link = Link.find(params[:id])
  end

  def destroy
    link = Link.find(params[:id])
    link.destroy
    redirect_to links_url
  end

end

class HomeController < ApplicationController

  def index
  end

  def calendrier
    @date = Date.today
    @regates = Regate.apres(@date)
  end

  def liens
    @links = Link.find(:all)
  end

end

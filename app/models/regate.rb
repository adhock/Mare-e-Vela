class Regate < ActiveRecord::Base
  belongs_to :club
  belongs_to :competition

  def self.apres(date)
    find(:all, :conditions => ["end >= ?",date], :include => ['club','competition'], :order => "start")
  end
end

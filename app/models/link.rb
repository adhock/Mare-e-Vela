class Link < ActiveRecord::Base

  def before_save
    if ! self.url.match(/http:\/\//)
      self.url = 'http://' + self.url
    end
  end

end

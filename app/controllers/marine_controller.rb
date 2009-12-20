class MarineController < ApplicationController
	layout 'visitor'
	
	def index
		@marine = Marine.find(params[:id])
	end

end

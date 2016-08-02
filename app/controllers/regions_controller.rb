class RegionsController < ApplicationController

	def index
		@regions = Region.all
	end

	def show
		@region = Region.find(params[:id])
		@users = @region.users.where(guide: true)
	end

end


# region needs to be named as regions!!!!
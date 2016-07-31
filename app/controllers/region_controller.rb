class RegionController < ApplicationController

	def index
		@regions = Region.all
	end

	def show
		@region = Region.find(params[:id])
		@users = @region.users.where(guide: true)
	end

end

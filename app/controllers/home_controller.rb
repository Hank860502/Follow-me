class HomeController < ApplicationController
	def index
		@regions = Region.all
		redirect_to regions_path
	end

	def show

	end
end
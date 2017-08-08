class ServiceController < ApplicationController
	def index
		@albums = Album.order(id: 'desc')
	end

	def show
		@albums = Album::where(service_id: params[:id]).order(id: 'desc')
	end
end

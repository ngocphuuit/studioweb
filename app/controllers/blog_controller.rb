class BlogController < ApplicationController
	before_action :right_navigation
	def index
		@blogs = Blog.order(id: :desc).search(params[:term], params[:page])
	end

	def show
		@blog = Blog.find(params[:id])
	end

	def right_navigation
		@recent_posts = Blog.order(id: :desc).limit(3)
		@services = Service.all
	end
end

class HomeController < ApplicationController
	def index
		web_config = WebConfig.all

		# byebug
		@blogs = Blog.where(top_flg: true)

		@albums = Album.where(top_flg: true)
		@services1 = Service.where(prio_flg: 1)
		@services2 = Service.where(prio_flg: 2)
		@webconfig = {}
		web_config.each do |config|
			@webconfig[config.option_key] = config.option_value
 		end
	end
end

class HomeController < ApplicationController
	def index
		web_config = WebConfig.all

		@webconfig = {}
		web_config.each do |config|
			@webconfig[config.option_key] = config.option_value
 		end
	end
end

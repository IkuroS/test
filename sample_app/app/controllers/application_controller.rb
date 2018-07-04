class ApplicationController < ActionController::Base
	protect_from_fogery with::exception
	
	def index
		render plain:"Hello,This is Rails sample page!"
	end
end

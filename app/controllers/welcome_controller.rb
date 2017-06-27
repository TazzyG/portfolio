class WelcomeController < ApplicationController
	layout "application"
	def index
		@showcases = Showcase.all
		if params[:tag]
			@projects = Project.tagged_with(params[:tag]).all
		else
			@projects = Project.all
		end
		
	end
	def new
		@contact = Contact.new
	end
end

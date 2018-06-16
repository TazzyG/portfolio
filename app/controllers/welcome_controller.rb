class WelcomeController < ApplicationController
	layout "application"
	def index
		@showcases = Showcase.all
		@projects = Project.all
		@contact = Contact.new
		@project_infos = ProjectInfo.all
	end
	# def new
	# 	@contact = Contact.new
	# end
end

class WelcomeController < ApplicationController
	layout "application"
	def index
		@showcases = Showcase.all
		@projects = Project.all
		@contact = Contact.new
	end
	# def new
	# 	@contact = Contact.new
	# end
end

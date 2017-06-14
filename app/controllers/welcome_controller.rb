class WelcomeController < ApplicationController
	def index
		@showcases = Showcase.all
		@projects = Project.all
		
	end
	def new
		@contact = Contact.new
	end
end

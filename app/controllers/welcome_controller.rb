class WelcomeController < ApplicationController
	def index
		@showcases = Showcase.all
		@projects = Project.all
	end
end

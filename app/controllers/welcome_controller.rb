class WelcomeController < ApplicationController
	def index
		@showcases = Showcase.all
	end
end

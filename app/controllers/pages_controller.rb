class PagesController < ApplicationController
	skip_before_Action :require_user

	def about
	end
	
end
class UsersController < ApplicationController

	def show
    @pictures = current_user.pictures
	end
end


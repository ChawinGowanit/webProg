class UserController < ApplicationController
	def read
		a = params[:user_id]
		x = Integer(a) rescue nil

		@userPosts = User.find(x) rescue false
	end
end

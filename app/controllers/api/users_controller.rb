class Api::UsersController < ApplicationController
	respond_to :json

	def index
		respond_with User.all
	end
	def show

	end

	def create
		puts "*" * 100
		puts params

		respond_with User.first.weekly_charts[0].habits.create(params)
		# User.first.weekly_charts[0].habits.push(params)
	end

end

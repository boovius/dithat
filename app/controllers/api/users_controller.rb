class Api::UsersController < ApplicationController
	respond_to :json

	def index
		respond_with User.all
	end

	def show
		respond_with User.find(params[:id])
	end

	def week
		respond_with Habit.where(interval: :week)
	end

	def create
		puts "*" * 100
		puts params

	end

end

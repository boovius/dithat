class Api::UsersController < ApplicationController
	respond_to :json

	def index
		respond_with User.all
	end

	def show
		respond_with User.find(params[:id])
	end

	def week
		respond_with User.first.habits.where(interval: 'week')
	end

	def month
		respond_with User.first.habits.where(interval: 'month')
	end

	def add_habit
		puts '*' * 20
		puts params
		# habit = Habit.new({name: params[:name], count: params[:count]})
		# User.first.habits << habit
		# User.first.save
		respond_with User.all
	end

end

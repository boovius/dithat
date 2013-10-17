class Api::HabitsController < ApplicationController
	respond_to :json

	def index
	end
	def show
	end

	def create
		puts "*" * 100
		puts params
		respond_with User.find(params[:user_id]).weekly_habits.find(params[:weekly_habit_id]).habits.create!(name: params[:name], count: params[:count], last_update: Time.now)
		location: 'pages#home'
	end

end

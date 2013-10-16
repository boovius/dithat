class Api::WeeklyHabitsController < ApplicationController
	
	def show
		respond_with User.find(params[:user_id]).weekly_habits.find(params[:id])
	end
	
	def create 
		respond_with User.find(params[:user_id]).weekly_habits.find(params[:id])

	end

end
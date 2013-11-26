class HabitsController < ApplicationController
  def index

  end

  def create
    @habit = Habit.new(habit_params)
    @habit.last_update = Time.now
    @habit.save
  end



  private

  def habit_params
    params.require(:habit).permit(
      :name,
      :count,
      :last_update )
  end

end

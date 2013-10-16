class Habit
  include Mongoid::Document
  embedded_in :daily_habits
  embedded_in :weekly_habits
  embedded_in :monthly_habits

  field :name, type: String
  field :count, type: Integer
  field :last_update, type: DateTime
end

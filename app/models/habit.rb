class Habit
  include Mongoid::Document
  embedded_in :weekly_chart

  field :name, type: String
  field :count, type: Integer
  field :last_update, type: DateTime
end

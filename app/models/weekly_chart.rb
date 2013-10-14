class WeeklyChart
  include Mongoid::Document

  embedded_in :user
  embeds_many :habits
  
end

class WeeklyChart
  include Mongoid::Document

  embeds_many :habits
  
end

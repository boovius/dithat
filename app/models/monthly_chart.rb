class MonthlyChart
  include Mongoid::Document

  embeds_many :habits

  
end

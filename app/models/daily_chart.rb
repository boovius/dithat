class DailyChart
  include Mongoid::Document

  embeds_many :habits

end

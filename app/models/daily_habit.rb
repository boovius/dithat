class DailyHabit
  include Mongoid::Document

  embeds_many :habits
  embedded_in :user

end

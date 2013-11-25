class Habit
  include Mongoid::Document
  embedded_in :users

  field :name,        type: String
  field :count,       type: Integer
  field :last_update, type: DateTime
  field :interval,    type: String


  # defining interval- YAY
  def current_start(interval)

    if interval == "week"
      date = Date.today.beginning_of_week
    elsif interval == "month"
      date = Date.today.beginning_of_month
    end

    date.to_datetime
  end

  # distinguish current or past month
  # if current,
  # else store in some past record
  def in_past?(interval)

    if last_update < current_start(interval)
      true
    else
      false
    end
  end

end

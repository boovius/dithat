class User
	include Mongoid::Document
	#include ActiveModel::SecurePassword

 	before_save { self.email = email.downcase }

  #before_create :create_remember_token

  field :name,            type: String
  field :email,           type: String
  #field :password_digest, type: String
  #field :remember_token,  type: String

  embeds_many :habits

  validates_presence_of :email
  validates_uniqueness_of :email

  #has_secure_password


  def get_past_habits
    past_habits = []
    habits.each do |habit|
      if habit.in_past?(habit.interval)
        past_habits << habit
      end
    end
    past_habits
  end

  def get_current_habits(interval)
    current_habits = []
    habits.each do |habit|
      if !habit.in_past?(habit.interval)
        current_habits << habit
      end
    end
    current_habits
  end

end

class User
	include Mongoid::Document
	#include ActiveModel::SecurePassword
 	
 	before_save { self.email = email.downcase }

  #before_create :create_remember_token
  
  field :name,            type: String 
  field :email,           type: String 
  #field :password_digest, type: String
  #field :remember_token,  type: String

  embeds_many :daily_habits
  embeds_many :monthly_habits
  embeds_many :weekly_habits

  validates_presence_of :email
  validates_uniqueness_of :email

  #has_secure_password
end

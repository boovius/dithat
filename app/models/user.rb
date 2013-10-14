class User
	include ActiveModel::SecurePassword
 	include Mongoid::Document

 	before_save { self.email = email.downcase }
  
  field :name,            type: String 
  field :email,           type: String 
  field :password_digest, type: String
  field :remember_token,  type: String

  embeds_many :daily_charts
  embeds_many :monthly_charts
  embeds_many :weekly_charts 
  validates_presence_of :name
  validates_presence_of :email
  validates_uniqueness_of :email
end

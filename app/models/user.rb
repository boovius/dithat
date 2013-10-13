class User
	include ActiveModel::SecurePassword
 	include Mongoid::Document
  
  field :name,            type: String 
  field :email,           type: String 
  field :password_digest, type: String
  field :remember_token,  type: String
  
  validates_presence_of :name
  validates_presence_of :email
  validates_uniqueness_of :email
  has_secure_password
end

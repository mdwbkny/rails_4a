class User < ActiveRecord::Base
  has_many :listings
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

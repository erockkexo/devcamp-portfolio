class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # we are going to pull the first name and last name from the entry point of the user
  # we also should include a validation of a name so the customer can not skip it by accident 

  validates_presence_of :name 

  def first_name 
  	self.name.split.first 
  end

  def last_name
  	self.name.split.last
  end 
end

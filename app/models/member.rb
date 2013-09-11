class Member < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :phone_number
  validates_presence_of :address
  validates_presence_of :role
end

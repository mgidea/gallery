class Member < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :phone_number
  validates_presence_of :address
  validates_presence_of :role

  has_many :artworks, inverse_of: :member
  has_many :purchases, inverse_of: :member
  has_many :favorite_collections, inverse_of: :member
end

class Purchase < ActiveRecord::Base
  validates_presence_of :member
  validates_presence_of :artwork

  belongs_to :member, inverse_of: :purchases
  belongs_to :artwork, inverse_of: :purchases
end

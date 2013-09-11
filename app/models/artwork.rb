class Artwork < ActiveRecord::Base
  validates_presence_of :member
  validates_presence_of :creation_date
  validates_presence_of :on_sale_date
  validates_numericality_of :cost, greater_than_or_equal_to: 0
  validates_presence_of :medium
  validates_presence_of :available

  belongs_to :member
end

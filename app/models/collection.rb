class Collection < ActiveRecord::Base
  validates_presence_of :title

  has_many :favorite_collections, inverse_of: :collection
  has_many :artwork_collections, inverse_of: :collection
end

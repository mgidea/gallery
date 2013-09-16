class FavoriteCollection < ActiveRecord::Base

  validates_presence_of :member
  validates_presence_of :collection

  belongs_to :member, inverse_of: :favorite_collections
  belongs_to :collection, inverse_of: :favorite_collections
end

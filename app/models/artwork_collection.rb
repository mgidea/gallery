class ArtworkCollection < ActiveRecord::Base
  validates_presence_of :artwork
  validates_presence_of :collection

  belongs_to :artwork, inverse_of: :artwork_collections
  belongs_to :collection, inverse_of: :artwork_collections

end

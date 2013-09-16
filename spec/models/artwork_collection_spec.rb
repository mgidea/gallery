require 'spec_helper'

describe ArtworkCollection do
  it { should     have_valid( :collection ).when( Collection.new ) }
  it { should_not have_valid( :collection ).when( nil ) }

  it { should     have_valid( :artwork ).when( Artwork.new ) }
  it { should_not have_valid( :artwork ).when( nil ) }

  it { should belong_to( :collection ) }
  it { should belong_to( :artwork ) }
end

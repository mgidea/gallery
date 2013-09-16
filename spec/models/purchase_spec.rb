require 'spec_helper'

describe Purchase do
  it { should     have_valid( :member ).when( Member.new ) }
  it { should_not have_valid( :member ).when( nil ) }

  it { should     have_valid( :artwork ).when( Artwork.new ) }
  it { should_not have_valid( :artwork ).when( nil ) }

  it { should belong_to( :member ) }
  it { should belong_to( :artwork ) }

end

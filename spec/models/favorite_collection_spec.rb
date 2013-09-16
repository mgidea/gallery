require 'spec_helper'

describe FavoriteCollection do
  it { should     have_valid( :member ).when( Member.new ) }
  it { should_not have_valid( :member ).when( nil ) }

  it { should     have_valid( :collection ).when( Collection.new ) }
  it { should_not have_valid( :collection ).when( nil ) }

  it { should belong_to( :member ) }
  it { should belong_to( :collection ) }
end

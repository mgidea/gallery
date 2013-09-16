require 'spec_helper'

describe Artwork do
  it {should have_valid(:member).when(Member.new)}
  it {should_not have_valid(:member).when(nil)}

  it {should validate_presence_of(:creation_date)}

  it {should_not have_valid(:cost).when(-1)}

  it {should validate_presence_of(:medium)}
  it {should validate_presence_of(:available)}

  it { should belong_to( :member  ) }
  it { should have_many( :purchases ) }

end

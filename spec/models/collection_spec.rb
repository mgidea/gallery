require 'spec_helper'

describe Collection do
  it { should validate_presence_of( :title ) }

  it { should have_many( :favorite_collections ) }
  it { should have_many( :artwork_collections ) }

end

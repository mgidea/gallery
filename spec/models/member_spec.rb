require 'spec_helper'

describe Member do

  it { should validate_presence_of( :name )}
  it { should validate_presence_of( :email )}
  it { should validate_presence_of( :phone_number )}
  it { should validate_presence_of( :address )}
  it { should validate_presence_of( :role )}

  it { should have_many(:artworks) }
  it { should have_many(:purchases) }

end

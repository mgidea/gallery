require 'spec_helper'

describe Member do

  it { should have_valid( :name ).when( 'Thomas', 'Carl' ) }
  it { should_not have_valid( :name ).when( nil, '' ) }
  
  it { should have_valid( :email ).when( 'Thomas', 'Carl' ) }
  it { should_not have_valid( :email ).when( nil, '' ) }
  
  it { should have_valid( :phone_number ).when( 'Thomas', 'Carl' ) }
  it { should_not have_valid( :phone_number ).when( nil, '' ) }
  
  it { should have_valid( :address ).when( 'Thomas', 'Carl' ) }
  it { should_not have_valid( :address ).when( nil, '' ) }
  
  it { should have_valid( :role ).when( 'Thomas', 'Carl' ) }
  it { should_not have_valid( :role ).when( nil, '' ) }
  
end

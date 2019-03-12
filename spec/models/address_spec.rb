require 'rails_helper'

RSpec.describe Address, type: :model do

  before(:each) do 
    @address = FactoryBot.create(:address)    
  end

  it "has a valid factory" do
    # teste toujours tes factories pour voir si elles sont valides
    expect(build(:address)).to be_valid
  end

  context "validation" do

    it "is valid with valid attributes" do
      @address.postal_code = "34000"
      expect(@address).to be_a(Address)
      expect(@address).to be_valid
    end

    describe "#Address_number" do
      it { expect(@address).to validate_presence_of(:address_number) }
    end

    describe "#Address_main" do
      it { expect(@address).to validate_presence_of(:address_main) }
    end

    # describe "#password" do
    #   it { expect(@address).to validate_presence_of(:password) }
    #   it { expect(@address).to validate_length_of(:password).is_at_least(6) }
    # end

    # Test for a empty address_main
    describe 'When address_main is empty' do
      before {@address.address_main = ""}
      it { should_not be_valid }
    end

    # Test for address_number
    describe 'when password is too short' do
      before {@address.address_number = ''}
      it { should_not be_valid }
    end

    describe "Address City test" do
      it { expect(@address).to validate_presence_of(:city) }
    end

    describe 'when Address.city is not present' do
      before { @address.city = "" }
      it { should_not be_valid }
    end

    describe "postal_code test" do
      it { expect(@address).to validate_presence_of(:postal_code)}
    end
      
    describe "Address.postal_code is empty"
      before {@address.postal_code = ""}
      it { should_not be_valid }
    end
    
    describe "Country test" do
      it { expect(@address).to validate_presence_of(:country) }
    end

    describe "Address.country is empty" do 
      before {@address.country = ""}
      it { should_not be_valid }
    end
end
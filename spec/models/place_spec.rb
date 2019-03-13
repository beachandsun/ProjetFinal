require 'rails_helper'

RSpec.describe Place, type: :model do

  before(:each) do 
    @place = FactoryBot.create(:place)    
  end

  it "has a valid factory" do
    # teste toujours tes factories pour voir si elles sont valides
    expect(build(:place)).to be_valid
  end

  context "validation" do

    it "is valid with valid attributes" do
      expect(@place).to be_a(Place)
    end

    describe "#Name" do
      it { expect(@place).to validate_presence_of(:name) }
    end

    describe "#Description" do
      it { expect(@place).to validate_presence_of(:description) }
    end

    describe "#adresse_id" do
      it { expect(@place).to validate_length_of(:address_id) }
    end

  end

  # context "associations" do

  #   describe "books" do
  #     it { expect(@place).to have_many(:books) }
  #   end

  # end

  # context "public instance methods" do

  #   describe "#full_name" do

  #     it "should return a string" do
  #       expect(@place.full_name).to be_a(String)
  #     end

  #     it "should return the full name" do
  #       expect(@place.full_name).to eq("John Doe")
  #       place_2 = create(:place, first_name: "Jean-Michel", last_name: "Durant")
  #       expect(place_2.full_name).to eq("Jean-Michel Durant")
  #     end
  #   end

  # end

end
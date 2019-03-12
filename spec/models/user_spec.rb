require 'rails_helper'

RSpec.describe User, type: :model do

  before(:each) do 
    @user = FactoryBot.create(:user)    
  end

  it "has a valid factory" do
    # teste toujours tes factories pour voir si elles sont valides
    expect(build(:user)).to be_valid
  end

  context "validation" do

    it "is valid with valid attributes" do
      expect(@user).to be_a(User)
      expect(@user).to be_valid
    end

    describe "#first_name" do
      it { expect(@user).to validate_presence_of(:first_name) }
    end

    describe "#last_name" do
      it { expect(@user).to validate_presence_of(:last_name) }
    end

    # describe "#password" do
    #   it { expect(@user).to validate_presence_of(:password) }
    #   it { expect(@user).to validate_length_of(:password).is_at_least(6) }
    # end

    # Test for a empty password
    describe 'when password is not present' do
      before {@user.password = ""}
      it { should_not be_valid }
    end

    # Test for a too short password
    describe 'when password is too short' do
      before {@user.password = "azert"}
      it { should_not be_valid }
    end

    describe "#email" do
      it { expect(@user).to validate_presence_of(:email) }
    end

    describe 'when email is not present' do
      before { @user.email = " " }
      it { should_not be_valid }
    end
  end
end
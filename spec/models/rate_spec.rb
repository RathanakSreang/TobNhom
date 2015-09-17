require 'rails_helper'

RSpec.describe Rate, type: :model do
  before :each do
    @rate = FactoryGirl.build :rate
  end
  
  it "show be valid" do
    expect(@rate).to be_valid
  end

  context "Count" do
    it "should be integer only" do
      @rate.count = 5.3
      expect(@rate).not_to be_valid
    end

    it "should not less than 0" do
      @rate.count = -1
      expect(@rate).not_to be_valid
    end

    it "should not greater than 5" do
      @rate.count = 6
      expect(@rate).not_to be_valid
    end
  end
end

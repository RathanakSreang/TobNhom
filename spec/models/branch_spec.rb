require 'rails_helper'

RSpec.describe Branch, type: :model do  
  before :each do
    @branch = FactoryGirl.build :branch
  end
  
  it "show be valid" do
    expect(@branch).to be_valid
  end

  context "Name" do
    it "should be invalid when empty" do
      @branch.name = ""
      expect(@branch).not_to be_valid
    end

    it "should not less than 3 character" do 
      @branch.name = "aa"
      expect(@branch).not_to be_valid
    end

    it "should not long than 80 character" do
      @branch.name = "String" * 20
      expect(@branch).not_to be_valid
    end
  end

  context "Url" do
    
    it "should be invalid when empty" do
      @branch.url = ""
      expect(@branch).not_to be_valid
    end

    it "should be a valid url" do
      @branch.url = "aaaa" *100
      expect(@branch).not_to be_valid
    end

    it "should not less than 8 character" do
      @branch.url = "www.goo"
      expect(@branch).not_to be_valid
    end

    it "should not long than 150 character" do
      @branch.url = "www.google.com/" + "contrct" * 100
      expect(@branch).not_to be_valid
    end
  end
end

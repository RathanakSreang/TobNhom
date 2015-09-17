require 'rails_helper'

RSpec.describe Promotion, type: :model do
  before :each do
    @promotion = FactoryGirl.build :promotion
  end
  
  it "show be valid" do
    expect(@promotion).to be_valid
  end

  context "Title" do
    it "should invalid when empty" do
      @promotion.title = ""
      expect(@promotion).not_to be_valid
    end

    it "should not less than 5 character" do
      @promotion.title = "aaaa"
      expect(@promotion).not_to be_valid
    end

    it "should not long than 40 character" do
      @promotion.title = "aaaaaaa" * 10
      expect(@promotion).not_to be_valid
    end
  end

  context "URL" do
    it "should invalid when empty" do
      @promotion.url = ""
      expect(@promotion).not_to be_valid
    end

    it "should be a valid url" do
      @promotion.url = "aaaa" *100
      expect(@promotion).not_to be_valid
    end

    it "should not less than 8 character" do
      @promotion.url = "www.goo"
      expect(@promotion).not_to be_valid
    end

    it "should not long than 150 character" do
      @promotion.url = "www.google.com/" + "contrct" * 100
      expect(@promotion).not_to be_valid
    end
  end

  context "Description" do
    it "should valid when empty" do
      @promotion.description = ""
      expect(@promotion).to be_valid
    end

    it "should not longer than 100 character" do
      @promotion.description = "a" *100 + "a"
      expect(@promotion).not_to be_valid
    end
  end
end

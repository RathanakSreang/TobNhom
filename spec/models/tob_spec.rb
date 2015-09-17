require 'rails_helper'

RSpec.describe Tob, type: :model do
  before :each do
    @tob = FactoryGirl.build :tob
  end
  
  it "show be valid" do
    expect(@tob).to be_valid
  end
# :name,:url,:status,:description,:started_at,:expired_at,:key

  context "Key" do
    it "should invalid when empty" do
      @tob.key = ""
      expect(@tob).not_to be_valid
    end

    it "should be uniqueness" do
      other_tob = FactoryGirl.build :tob
      other_tob.key = @tob.key
      other_tob.save
      expect(@tob).not_to be_valid
    end

    it "should invalid when not follow format" do
      @tob.key = "aa sss"
      expect(@tob).not_to be_valid
    end
  end

  context "Description" do
    it "should not longer than 240 charater" do
      @tob.description = "a" * 240 + "a"
      expect(@tob).not_to be_valid
    end
  end

  context "domain" do
    it "should invalid when empty" do
      @tob.domain = ""
      expect(@tob).not_to be_valid
    end

    it "should invalid when not follow format" do
      @tob.domain = "aa sss"
      expect(@tob).not_to be_valid
    end

    it "should be uniqueness" do
      other_tob = FactoryGirl.build :tob
      other_tob.domain = @tob.domain
      other_tob.save
      expect(@tob).not_to be_valid
    end

    it "should not less than 3 character" do
      @tob.domain = "aa"
      expect(@tob).not_to be_valid
    end

    it "should not longer than 10 character" do
      @tob.domain = "a" * 10 + "a"
      expect(@tob).not_to be_valid
    end
  end

  context "Barcode" do
    it "should invalid when empty" do
      @tob.barcode = ""
      expect(@tob).not_to be_valid
    end

    it "should not longer than 4 character" do
      @tob.barcode = "a" * 4 + "a"
      expect(@tob).not_to be_valid
    end

    it "should not have space" do
      @tob.barcode = "a a"
      expect(@tob).not_to be_valid
    end
  end

  context "Name" do
    it "should invalid when empty" do
      @tob.name = ""
      expect(@tob).not_to be_valid
    end

    it "should not less than 3 character" do
      @tob.name = "aa"
      expect(@tob).not_to be_valid
    end

    it "should not longer than 40 character" do
      @tob.name = "a" * 40 + "a"
      expect(@tob).not_to be_valid
    end
  end
end

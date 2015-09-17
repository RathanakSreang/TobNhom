require 'rails_helper'

RSpec.describe TobSlider, type: :model do
  
  before :each do
    @tob_slider = FactoryGirl.build :tob_slider
  end
  
  it "show be valid" do
    expect(@tob_slider).to be_valid
  end

  context "Title" do
    it "should invalid when empty" do
      @tob_slider.title = ""
      expect(@tob_slider).not_to be_valid
    end

    it "should not less than 3 character" do
      @tob_slider.title = "aa"
      expect(@tob_slider).not_to be_valid
    end

    it "should not longer than 50 character" do
      @tob_slider.title = "a" * 50 + "a"
      expect(@tob_slider).not_to be_valid
    end
  end

  context "Description" do
    it "should not longer than 100" do
      @tob_slider.description = "a" * 100 + "a"
      expect(@tob_slider).not_to be_valid
    end
  end
end

require 'rails_helper'

RSpec.describe Review, type: :model do
  before :each do
    @review = FactoryGirl.build :review
  end
  
  it "show be valid" do
    expect(@review).to be_valid
  end

  context "Content" do
    it "should be invalid when empty" do
      @review.content = ""
      expect(@review).not_to be_valid
    end
  end
end

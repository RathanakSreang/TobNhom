require 'rails_helper'

RSpec.describe Category, type: :model do
  before :each do
    @category = FactoryGirl.build :category
  end
  
  it "show be valid" do
    expect(@category).to be_valid
  end

  context "Name" do
    it "should invalid when empty" do
      @category.name = ""
      expect(@category).not_to be_valid
    end
    
    it "should less than 3 character" do
      @category.name = "aa"
      expect(@category).not_to be_valid
    end

    it "should long than 50 character" do
      @category.name = "aaaaaaaaa" * 50
      expect(@category).not_to be_valid
    end
  end
end

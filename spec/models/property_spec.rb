require 'rails_helper'

RSpec.describe Property, type: :model do
  before :each do
    @property = FactoryGirl.build :property
  end
  
  it "show be valid" do
    expect(@property).to be_valid
  end

  context "Description" do
    it "should invalid when description empty" do
      @property.description = ""
      expect(@property).not_to be_valid 
    end
  end
end

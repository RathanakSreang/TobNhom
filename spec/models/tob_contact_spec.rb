require 'rails_helper'

RSpec.describe TobContact, type: :model do
  before :each do
    @tob_contact = FactoryGirl.build :tob_contact
  end
  
  it "show be valid" do
    expect(@tob_contact).to be_valid
  end

  context "Email" do
    it "should invalid when empty" do
      @tob_contact.email = ""
      expect(@tob_contact).not_to be_valid
    end

    it "should invalid when email not right format" do
      @tob_contact.email = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      expect(@tob_contact).not_to be_valid
    end

    it "should not less than 8" do
      @tob_contact.email = "em@em.c"
      expect(@tob_contact).not_to be_valid
    end

    it "should not longer than 50" do
      @tob_contact.email = "aaaaaaaaa" * 50 + "@email.com"
      expect(@tob_contact).not_to be_valid
    end
  end

  context "Phone" do
    it "should invalid when empty" do
      @tob_contact.phone = ""
      expect(@tob_contact).not_to be_valid
    end
  end
end

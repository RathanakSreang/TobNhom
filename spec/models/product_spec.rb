require 'rails_helper'

RSpec.describe Product, type: :model do
  #:user_id,:tob_id,:branch_id,:category_id,:name,:sku,
  #:price,:qty,:status,:code,:condition,:discount,:keyword
  before :each do
    @product = FactoryGirl.build :product
  end
  
  it "show be valid" do
    expect(@product).to be_valid
  end

  context "QTY" do
    it "should invalid when less than 0" do
      @product.qty = -1
      expect(@product).not_to be_valid
    end

    it "should invalid when not integer" do
      @product.qty = 1.5
      expect(@product).not_to be_valid
    end
  end

  context "Price" do
    it "should invalid when less than 0" do
      @product.price = -1
      expect(@product).not_to be_valid
    end

    it "should contain number only" do
      @product.price = "a"
      expect(@product).not_to be_valid
    end
  end

  context "code" do
    it "should invalid when empty" do
      @product.code = ""
      expect(@product).not_to be_valid
    end

    it "should not longer than 20 character" do
      @product.code = "a" * 20 + "a"
      expect(@product).not_to be_valid
    end

  end
  context "SKU" do
    it "should invalid when empty" do
      @product.sku = ""
      expect(@product).not_to be_valid
    end

    it "should not less than 3 character" do
      @product.sku = "aa"
      expect(@product).not_to be_valid
    end

    it "should not longer than 50 character" do
      @product.sku = "a" * 50 + "a"
      expect(@product).not_to be_valid
    end

    it "shoudl not have space" do
      @product.sku = "aaaaaa aaaaa"
      expect(@product).not_to be_valid
    end
  end

  context "Name" do
    it "should invalid when name empty" do
      @product.name = ""
      expect(@product).not_to be_valid
    end

    it "should not less than 3 character" do
      @product.name = "aa"
      expect(@product).not_to be_valid
    end

    it "should not longer than 80 character" do
      @product.name = "aa"
      expect(@product).not_to be_valid
    end
  end
end

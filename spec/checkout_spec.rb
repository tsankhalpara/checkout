require 'checkout'
require 'spec_helper'

describe Checkout do

  describe "scan" do
    it "adds item to basket from product code" do
      co = Checkout.new
      co.scan(001)
      expect(co.basket).to eq [1]
    end
  end

  describe "total" do
    it "calculates basket total with no promotions" do
      co = Checkout.new
      co.scan(001)
      expect(co.total).to eq 9.25
    end
  end

end
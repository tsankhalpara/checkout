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
      expect(co.total).to eq "£9.25"
    end

    it "takes 10% off purchases over £60" do
      co = Checkout.new
      co.scan(001)
      co.scan(002)
      co.scan(003)
      expect(co.total).to eq "£66.78"
    end

    it "reduces price of chairs to £8.50 when there are 2 or more" do
      co = Checkout.new
      co.scan(001)
      co.scan(003)
      co.scan(001)
      expect(co.total).to eq "£36.95"
    end
  end

end

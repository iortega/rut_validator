require 'spec_helper'

describe Rut do

  context "Rut format" do

    [11222333, '11222333', '11222333-9', '11.222.333-9'].each do |r|
      subject(:rut) { Rut.new(r) }

      it "#{r.inspect} formatted" do
        rut.format.should == '11.222.333-9'
      end

      it "#{r.inspect} no delimiters formatting" do
        rut.format(delimiter: '').should == '11222333-9'
      end

      it "#{r.inspect} only numbers formatting" do
        rut.format(delimiter: '', with_dash: false).should == '112223339'
      end

      it "#{r.inspect} should be valid" do
        rut.should be_valid
      end
    end
  end

  context "Rut validation" do

    ["6660982-0", "10461906-1", "6101821-2", "19516159-3", "11094848-4", "6209751-5", "13421096-6", "24651197-7", "5387375-8", "16551610-9", "7615998-k", "16562775-K"].each do |valid_rut|
      subject(:rut) { Rut.new(valid_rut) }

      it "#{valid_rut} should be valid" do
        rut.should be_valid
      end
    end

  end

  context 'invalid inputs' do

    ['invalid', '112223338', 1234, nil].each do |r|
      it "#{r.inspect} should be invalid" do
        Rut.new(r).should_not be_valid
      end
    end

  end

end

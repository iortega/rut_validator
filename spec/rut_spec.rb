require 'spec_helper'

describe Rut do

  context 'valid inputs' do

    [11222333, '11222333', '11222333-9', '11.222.333-9'].each do |r|
      let(:rut) { Rut.new(r) }

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
        rut.valid?.should be_true
      end
    end

  end

  context 'invalid inputs' do

    ['invalid', '112223338', 1234, nil].each do |r|
      it "#{r.inspect} should be invalid" do
        Rut.new(r).valid?.should be_false
      end
    end

  end

end

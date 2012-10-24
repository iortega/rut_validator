require 'spec_helper'

class TestUser < TestModel
  validates :rut, rut: true
end

class TestUserAllowNil < TestModel
  validates :rut, rut: true, allow_nil: true
end

describe RutValidator do

  context 'valid models' do
    it 'should be valid' do
      TestUser.new(rut: '11222333-9').should be_valid
    end

    it 'should not be valid' do
      TestUser.new(rut: 'invalid').should_not be_valid
    end

    it 'should be valid' do
      TestUserAllowNil.new(rut: nil).should be_valid
    end
  end

  context 'errors messages' do
    subject { TestUser.new(rut: 'invalid') }
    before { subject.valid? }

    it 'should contains errors messages' do
      subject.errors[:rut].should include 'invalid'
    end
  end
end

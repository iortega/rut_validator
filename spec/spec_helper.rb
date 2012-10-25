require 'rubygems'
require 'bundler/setup'
require 'simplecov'
require 'active_model'
require 'rut_validator'

class TestModel
  include ActiveModel::Validations

  def initialize(attributes={})
    @attributes = attributes
  end

  def read_attribute_for_validation(key)
    @attributes[key]
  end
end

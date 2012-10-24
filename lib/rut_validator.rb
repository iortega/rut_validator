require 'rut_validator/rut'
I18n.load_path += Dir.glob( File.dirname(__FILE__) + "/rut_validator/locale/*.{rb,yml}" )

class RutValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless Rut.new(value).valid?
      record.errors.add(attribute, :rut_invalid)
    end
  end
end

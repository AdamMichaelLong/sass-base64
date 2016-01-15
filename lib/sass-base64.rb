require 'sass'
require 'base64'

module SassBase64
  def sassBase64(string)
    assert_type string, :String
    Sass::Script::String.new(Base64.strict_encode64(string.value))
  end
  declare :sassBase64, :args => [:string]
end

module Sass::Script::Functions
  include SassBase64
end

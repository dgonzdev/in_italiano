require 'in_italiano/history'
require 'in_italiano/translations'

module InItaliano
  def self.last_class=(_class)
    @history ||= History.new
    @history.last_class = _class
  end

  def self.last_class
    @history ||= History.new
    @history.last_class
  end

  def self.last_method=(_method)
    @history ||= History.new
    @history.last_method = _method
  end

  def self.last_method
    @history ||= History.new
    @history.last_method
  end
end

require 'in_italiano/classes/array/patch'
require 'in_italiano/classes/string/class_methods_patch'
require 'in_italiano/classes/string/patch'
require 'in_italiano/classes/true_class/patch'

class Array
  prepend InItaliano::Classes::Array::Patch
end

class String
  extend InItaliano::Classes::String::ClassMethodsPatch
  prepend InItaliano::Classes::String::Patch
end

class TrueClass
  prepend InItaliano::Classes::TrueClass::Patch
end
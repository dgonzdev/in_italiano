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

require 'in_italiano/classes/array/instance_methods_patch'
require 'in_italiano/classes/false_class/instance_methods_patch'
require 'in_italiano/classes/integer/instance_methods_patch'
require 'in_italiano/classes/nil_class/instance_methods_patch'
require 'in_italiano/classes/string/class_methods_patch'
require 'in_italiano/classes/string/instance_methods_patch'
require 'in_italiano/classes/true_class/instance_methods_patch'

class Array
  prepend InItaliano::Classes::Array::InstanceMethodsPatch
end

class FalseClass
  prepend InItaliano::Classes::FalseClass::InstanceMethodsPatch
end

class Integer
  prepend InItaliano::Classes::Integer::InstanceMethodsPatch
end

class NilClass
  prepend InItaliano::Classes::NilClass::InstanceMethodsPatch
end

class String
  extend InItaliano::Classes::String::ClassMethodsPatch
  prepend InItaliano::Classes::String::InstanceMethodsPatch
end

class TrueClass
  prepend InItaliano::Classes::TrueClass::InstanceMethodsPatch
end
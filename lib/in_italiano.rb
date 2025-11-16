require 'in_italiano/history'

require 'in_italiano/classes/string/patch'
require 'in_italiano/classes/true_class/patch'

module InItaliano
  TRANSLATIONS = {
    string: {
      append_as_bytes: "aggiungere come byte",
      ascii_only?: "solo ascii?",
      capitalize: "capitalizzare"
    }
  }

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

class String
  prepend InItaliano::Classes::String::Patch
end

class TrueClass
  prepend InItaliano::Classes::TrueClass::Patch
end
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
end

class String
  prepend InItaliano::Classes::String::Patch
end

class TrueClass
  prepend InItaliano::Classes::TrueClass::Patch
end
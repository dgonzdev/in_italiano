require 'in_italiano/classes/string/patch'

module InItaliano
  @@last_class = nil
  @@last_method = nil

  TRANSLATIONS = {
    string: {
      capitalize: "capitalizzare"
    }
  }
end

class String
  prepend InItaliano::Classes::String::Patch
end
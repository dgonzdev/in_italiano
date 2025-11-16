module InItaliano
  class Translations
    STRING = {
      append_as_bytes: "aggiungere come byte",
      ascii_only?: "solo ascii?",
      bytes: "i byte",
      capitalize: "capitalizzare"
    }

    def self.find(class_name, method_name)
      if class_name == :string
        STRING[method_name]
      end
    end
  end
end
module InItaliano
  class Translations
    STRING = {
      append_as_bytes: "aggiungere come byte",
      ascii_only?: "solo ascii?",
      b: "b",
      byteindex: "indice del byte",
      byterindex: "indice dell'ultimo byte",
      bytes: "i byte",
      bytesize: "numero di byte",
      byteslice: "spaccato di byte",
      bytesplice: "giunzione di byte",
      capitalize: "capitalizzare",
      capitalize!: "capitalizzare!",
      casecmp: "confronta senza distinzione tra maiuscole e minuscole"
    }

    def self.find(class_name, method_name)
      if class_name == :string
        STRING[method_name]
      end
    end
  end
end
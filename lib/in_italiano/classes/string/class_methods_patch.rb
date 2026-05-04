module InItaliano
  module Classes
    module String
      module ClassMethodsPatch
        # String Class Documentation:
        # https://docs.ruby-lang.org/en/3.4/String.html

        STRING_TRANSLATIONS = {
          "%" => "%",
          "*" => "*",
          "+" => "+",
          "+@" => "+@",
          "-@" => "-@",
          "<<" => "<<",
          "<=>" => "<=>",
          "==" => "==",
          "===" => "===",
          "=~" => "=~",
          "[]" => "[]",
          "[]=" => "[]=",
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
          casecmp: "confronta senza distinzione tra maiuscole e minuscole",
          casecmp?: "confronta senza distinzione tra maiuscole e minuscole?",
          center: "centrare",
          chars: "caratteri",
          chomp: "accorciare"
        }

        def in_italiano(method_name = nil)
          if method_name.nil?
            return "Cordicella"
          end

          STRING_TRANSLATIONS[method_name] || STRING_TRANSLATIONS[method_name.to_s]
        end
      end
    end
  end
end
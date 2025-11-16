module InItaliano
  module Classes
    module String
      module ClassMethodsPatch
        # String Class Documentation:
        # https://docs.ruby-lang.org/en/3.4/String.html

        def in_italiano(method_name = nil)
          if method_name.nil?
            return "Cordicella"
          end

          Translations.find(:string, method_name)
        end
      end
    end
  end
end
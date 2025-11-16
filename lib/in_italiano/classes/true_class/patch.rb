module InItaliano
  module Classes
    module TrueClass
      module Patch
        # True Class Documentation:
        # https://docs.ruby-lang.org/en/3.4/TrueClass.html

        def method_missing(symbol, *args)
          if symbol === :in_italiano
            translation = TRANSLATIONS[::InItaliano.last_class][::InItaliano.last_method]
            ::InItaliano.last_class = nil
            ::InItaliano.last_method = nil
            translation
          else
            super(symbol, *args)
          end
        end
      end
    end
  end
end
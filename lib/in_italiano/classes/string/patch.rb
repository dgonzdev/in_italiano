module InItaliano
  module Classes
    module String
      module Patch
        def capitalize
          @@last_class = :string
          @@last_method = :capitalize

          super
        end

        def method_missing(symbol, *args)
          if symbol === :in_italiano
            translation = TRANSLATIONS[@@last_class][@@last_method]
            @@last_class = nil
            @@last_method = nil
            translation
          else
            super(symbol, *args)
          end
        end
      end
    end
  end
end
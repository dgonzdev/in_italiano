module InItaliano
  module Classes
    module String
      module Patch
        # String Class Documentation:
        # https://docs.ruby-lang.org/en/3.4/String.html

        # Instance Methods
        def append_as_bytes(*objects)
          @@last_class = :string
          @@last_method = :append_as_bytes

          super
        end

        def ascii_only?
          @@last_class = :string
          @@last_method = :ascii_only?

          super
        end

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
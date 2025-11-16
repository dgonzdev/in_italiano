module InItaliano
  module Classes
    module String
      module Patch
        # String Class Documentation:
        # https://docs.ruby-lang.org/en/3.4/String.html

        # Instance Methods
        def append_as_bytes(*objects)
          ::InItaliano.last_class = :string
          ::InItaliano.last_method = :append_as_bytes

          super
        end

        def ascii_only?
          ::InItaliano.last_class = :string
          ::InItaliano.last_method = :ascii_only?

          super
        end

        def bytes
          ::InItaliano.last_class = :string
          ::InItaliano.last_method = :bytes

          super
        end

        def capitalize
          ::InItaliano.last_class = :string
          ::InItaliano.last_method = :capitalize

          super
        end

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
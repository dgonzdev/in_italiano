module InItaliano
  module Classes
    module String
      module InstanceMethodsPatch
        # String Class Documentation:
        # https://docs.ruby-lang.org/en/3.4/String.html

        # Instance Methods
        def %(object)
          ::InItaliano.last_class = :string
          ::InItaliano.last_method = "%"

          super
        end

        def *(integer)
          ::InItaliano.last_class = :string
          ::InItaliano.last_method = "*"

          super
        end

        def +(other_string)
          ::InItaliano.last_class = :string
          ::InItaliano.last_method = "+"

          super
        end

        def +@
          ::InItaliano.last_class = :string
          ::InItaliano.last_method = "+@"

          super
        end

        def -@
          ::InItaliano.last_class = :string
          ::InItaliano.last_method = "-@"

          super
        end

        def <<(object)
          ::InItaliano.last_class = :string
          ::InItaliano.last_method = "<<"

          super
        end

        def <=>(other_string)
          ::InItaliano.last_class = :string
          ::InItaliano.last_method = "<=>"

          super
        end

        def ==(object)
          ::InItaliano.last_class = :string
          ::InItaliano.last_method = "=="

          super
        end

        # ===
        # =~
        # []
        # []=

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

        def b
          ::InItaliano.last_class = :string
          ::InItaliano.last_method = :b

          super
        end

        def byteindex(substring, offset = 0)
          ::InItaliano.last_class = :string
          ::InItaliano.last_method = :byteindex

          super
        end

        def byterindex(substring, offset = 0)
          ::InItaliano.last_class = :string
          ::InItaliano.last_method = :byterindex

          super
        end

        def bytes
          ::InItaliano.last_class = :string
          ::InItaliano.last_method = :bytes

          super
        end

        def bytesize
          ::InItaliano.last_class = :string
          ::InItaliano.last_method = :bytesize

          super
        end

        def byteslice(*args)
          ::InItaliano.last_class = :string
          ::InItaliano.last_method = :byteslice

          super
        end

        def bytesplice(*args)
          ::InItaliano.last_class = :string
          ::InItaliano.last_method = :bytesplice

          super
        end

        def capitalize
          ::InItaliano.last_class = :string
          ::InItaliano.last_method = :capitalize

          super
        end

        def capitalize!
          ::InItaliano.last_class = :string
          ::InItaliano.last_method = :capitalize!

          super
        end

        def casecmp(other_string)
          ::InItaliano.last_class = :string
          ::InItaliano.last_method = :casecmp

          super
        end

        def casecmp?(other_string)
          ::InItaliano.last_class = :string
          ::InItaliano.last_method = :casecmp?

          super
        end

        def center(size, pad_string = '')
          ::InItaliano.last_class = :string
          ::InItaliano.last_method = :center

          super
        end

        def chars
          ::InItaliano.last_class = :string
          ::InItaliano.last_method = :chars

          super
        end

        def chomp(line_sep = $/)
          ::InItaliano.last_class = :string
          ::InItaliano.last_method = :chomp

          super
        end

        # chomp!
        # chop
        # chop!
        # chr
        # clear
        # codepoints
        # concat
        # count
        # crypt
        # dedup
        # delete
        # delete!
        # delete_prefix
        # delete_prefix!
        # delete_suffix
        # delete_suffix!
        # downcase
        # downcase!
        # dump
        # each_byte
        # each_char
        # each_codepoint
        # each_grapheme_cluster
        # each_line
        # empty?
        # encode
        # encode!
        # encoding
        # end_with?
        # eql?
        # force_encoding
        # getbyte
        # grapheme_clusters
        # gsub
        # gsub!
        # hash
        # hex
        # include?
        # index
        # initialize_copy
        # insert
        # inspect
        # intern
        # length
        # lines
        # ljust
        # lstrip
        # lstrip!
        # match
        # match?
        # next
        # next!
        # oct
        # ord
        # partition
        # prepend
        # replace
        # reverse
        # reverse!
        # rindex
        # rjust
        # rpartition
        # rstrip
        # rstrip!
        # scan
        # scrub
        # scrub!
        # setbyte
        # shellescape
        # shellsplit
        # size
        # slice
        # slice!
        # split
        # squeeze
        # squeeze!
        # start_with?
        # strip
        # strip!
        # sub
        # sub!
        # succ
        # succ!
        # sum
        # swapcase
        # swapcase!
        # to_c
        # to_f
        # to_i
        # to_r
        # to_s
        # to_str
        # to_sym
        # tr
        # tr!
        # tr_s
        # tr_s!
        # undump
        # unicode_normalize
        # unicode_normalize!
        # unicode_normalized?
        # unpack
        # unpack1
        # upcase
        # upcase!
        # upto
        # valid_encoding?

        def method_missing(symbol, *args)
          if symbol === :in_italiano
            translation = Translations.find(::InItaliano.last_class, ::InItaliano.last_method)
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
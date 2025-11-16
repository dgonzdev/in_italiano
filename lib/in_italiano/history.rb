module InItaliano
  class History
    attr_accessor :last_class
    attr_accessor :last_method

    def intialize
      @last_class = nil
      @last_method = nil
    end
  end
end
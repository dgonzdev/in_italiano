module InItaliano
  class History
    attr_accessor :last_class
    attr_accessor :last_method

    def intialize
      @last_class = nil
      @last_method = nil
    end
  end

  def self.last_class=(_class)
    @history ||= History.new
    @history.last_class = _class
  end

  def self.last_class
    @history ||= History.new
    @history.last_class
  end

  def self.last_method=(_method)
    @history ||= History.new
    @history.last_method = _method
  end

  def self.last_method
    @history ||= History.new
    @history.last_method
  end
end
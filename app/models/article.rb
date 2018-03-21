class Article


  attr_accessor :title, :author, :magazine

  ALL = []

  def initialize(title, author, magazine)
    @title = title
    @author = author
    @magazine = magazine
    ALL << self
  end

  def self.all
    ALL
  end


end

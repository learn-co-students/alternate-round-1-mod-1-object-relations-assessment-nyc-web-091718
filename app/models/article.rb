class Article
  attr_reader :author, :magazine, :title
  @@all = []

  def initialize(title, author, magazine)
    @title = title
    @author = author
    @magazine = magazine

    @@all << self
  end


  ### Class Methods
  def self.all
    @@all
  end
end ### End of Article Class

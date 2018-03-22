class Author
  attr_accessor :name
  ALL = []

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end

  def articles
    Article.all.select do |article|
      article.author == self
    end
  end

  def magazines
    articles.map do |article|
      article.magazine
    end.uniq
  end

  def add_article(title, magazine)
    Article.new(title, self, magazine)
  end

  def find_specialties
    magazines.map {|magazine| magazine.category}.uniq
  end

end

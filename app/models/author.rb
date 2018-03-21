class Author
  attr_accessor :name, :age
  ALL = []

  def initialize(name, age)
    @name = name
    @age = age
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

  def self.find_oldest
    oldest_age = 0
    oldest_author = nil
    Author.all.each do |author|
      if author.age > oldest_age
        oldest_age = author.age
        oldest_author = author
      end
    end
    oldest_author
  end

  def add_article(title, magazine)
    Article.new(title, self, magazine)
  end

  def find_specialties
    magazines.map {|magazine| magazine.category}.uniq
  end

end

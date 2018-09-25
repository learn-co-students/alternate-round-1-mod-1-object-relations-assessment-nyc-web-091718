# Please copy/paste all three classes into this file to submit your solution!
class Author
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def add_article(title, magazine)
    Article.new(title, self, magazine)
  end

  def articles
    Article.all.select do |article|
      article.author == self
    end
  end

  def magazines
    self.articles.map do |article|
      article.magazine
    end
  end

  def show_specialties
    self.magazines.map do |magazine|
      magazine.category
    end
  end

  ### Class Methods
  def self.all
    @@all
  end

end ## End of Author Class




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






class Magazine
  attr_accessor :name, :category
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category

    @@all << self
  end

  def articles
    Article.all.select do |article|
      article.magazine == self
    end
  end

  def article_titles
    self.articles.map do |article|
      article.title
    end
  end

  ### Class Methods
  def self.all
    @@all
  end

  def self.find_by_name(name)
    all.find do |magazine|
      magazine.name == name
    end
  end

end ### End of Magazine Class

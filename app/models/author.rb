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

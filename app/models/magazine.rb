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

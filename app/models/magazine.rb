class Magazine
  attr_accessor :name, :category

  ALL = []

  def initialize(name, category)
    @name = name
    @category = category
    ALL << self
  end

  def self.all
    ALL
  end

  def self.find_by_name(name)
    Magazine.all.find {|magazine| magazine.name == name}
  end

  def articles
    Article.all.select{ |article| article.magazine == self}
  end

  def article_names
    articles.map {|article| article.name}
  end


end

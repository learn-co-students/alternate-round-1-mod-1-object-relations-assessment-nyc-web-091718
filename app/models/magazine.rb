class Magazine
  attr_reader :name, :category


  @@all =[]

  def self.all
  @@all
  end

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.find_by_name
 self.all.select {|mag| mag.name == self}
  end


  def articles
    Article.all.select {|art| art.magazine == self}
  end

  def article_titles
 self.articles.map {|art| art.title}
  end
end
#

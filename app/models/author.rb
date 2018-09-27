class Author
  attr_reader :name

  @@all =[]

  def self.all
  @@all
  end
   def initialize(name)
     @name = name
     @@all << self
   end

  def add_article(title, author, magazine)
    Article.new(title, self, magazine)
  end


  def articles
    Article.all.select {|art| art.author == self}
  end

  def magazines
    self.articles.map {|art| art.magazine}
  end

  def show_specialties
    self.magazines.map {binding.pry |mag| mag.category}
  end

end

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
  
  # Article.find_all_by_category("Weird")
  
  def self.find_all_by_category(category)
    Article.all.select do |article|
      article.category.name == category
    end
  end



end

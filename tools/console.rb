require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

a1 = Author.new("Author1")
a2 = Author.new("Author2")
a3 = Author.new("Author3")

m1 = Magazine.new("Mag1", "Mag1 category")
m2 = Magazine.new("Mag2", "Mag2 category")
m3 = Magazine.new("Mag3", "Mag3 category")

art1 = Article.new("Title1", a1, m1)
art2 = Article.new("Title2", a2, m2)
art3 = Article.new("Title3", a3, m3)

art4 = a1.add_article("Title 4", m1)





### DO NOT REMOVE THIS
binding.pry

0

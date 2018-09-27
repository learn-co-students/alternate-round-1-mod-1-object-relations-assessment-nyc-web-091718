require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

###  WRITE YOUR TEST CODE HERE ###

a1 = Author.new("a1")
a2 = Author.new("a2")
a3 = Author.new("a3")

m1 = Magazine.new("m1", "cat1")
m2 = Magazine.new("m2", "cat2")
m3 = Magazine.new("m3", "cat1")

art1 = Article.new("art1", a1, m1)
art2 = Article.new("art1", a2, m2)
art3 = Article.new("art1", a3, m3)








### DO NOT REMOVE THIS
binding.pry

0

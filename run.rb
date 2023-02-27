require_relative 'lib/Articles.rb'
require_relative 'lib/Author.rb'
require_relative 'lib/Magazine.rb'

author1 = Author.new("Alex tanui")
author2 = Author.new("Martin tanui")

magazine1 = Magazine.new("mwangaza", "politics")
magazine2 = Magazine.new("Photography basics", "Art")
puts "all #{Magazine.all}"

article1 = Article.new(author1, magazine1, "trnding vehicles in kenya")
article2 = Article.new(author1, magazine2, "mt kenya regime")
article3 = Article.new(author2, magazine2, "Volcanic Eruptions in china")

author1.add_article(magazine2, "Sky viewing")
author2.add_article(magazine2, "Best ways to code")



# pp author1.articles
# # should return [article1, article2]

# pp author1.magazines
# # should return [magazine1, magazine2]

# pp author2.magazines
# # should return [magazine2]

p magazine1.article_titles

# p magazine2.article_titles
# # should return ["Wildlife Conservation", "Ocean Exploration", "Rainforest Preservation"]

# p magazine1.contributing_authors
p magazine2.contributing_authors
# # should return [author1, author2]
author1.add_article(magazine1, "The Forbes Monday")

p Article.all

p Magazine.all

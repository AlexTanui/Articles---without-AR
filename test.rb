require_relative './articles.rb'
# Create some authors
alex = Author.new("alex Austen")
puts alex
charlotte = Author.new("Charlotte Bronte")
puts charlotte
# Create some magazines
vogue = Magazine.new("Vogue", "Fashion")
nat_geo = Magazine.new("National Geographic", "Science")
puts vogue
puts nat_geo
# Add an article to a magazine for an author
alex.add_article(vogue, "The Latest in Fashion")

# Get an author's articles
alex.articles # => [#<Article:0x00007ff19d0e5af0 @title="The Latest in Fashion", @author=#<Author:0x00007ff19d0e5b98 @name="Jane Austen">, @magazine=#<Magazine:0x00007ff19d0e5b70 @name="Vogue", @category="Fashion">>]
puts alex.articles
# Get a magazine's contributing authors
vogue.contributors # => [#<Author:0x00007ff19d0e5b98 @name="Jane Austen">]
puts vogue.contributors
# Change the name of a magazine
nat_geo.name = "National Geographic Magazine"
puts  nat_geo.name
# Find a magazine by name
Magazine.find_by_name("National Geographic Magazine") # => #<Magazine:0x00007ff19d0e5a90 @name="National Geographic Magazine", @category="Science">

# Get a magazine's article titles
vogue.article_titles # => ["The Latest in Fashion"]
puts vogue.article_titles
# Add another article to a magazine for an author
alex.add_article(vogue, "The Hottest Trends")

# Get a magazine's contributing authors who have written more than 2 articles
vogue.contributing_authors # => []
puts vogue.contributing_authors
# Add more articles to a magazine for an author
alex.add_article(vogue, "beautiful kitchen")

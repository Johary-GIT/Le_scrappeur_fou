require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'



# 1) Isoler les éléments HTML
# 2) En extraire le texte et mettre ça dans un hash,
# 3) Réorganiser ce hash dans un array de plusieurs mini-hash comme demandé.

def crypto

  page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))
  links_name = page.xpath("//a[@class='currency-name-container link-secondary']")
  links_price = page.xpath("//a[@class='price']")

  tab = []
  i = 0
  (links_name.size).times do
    crypto_hash = Hash.new
    crypto_hash[links_name[i].text] = links_price[i].text
    tab << crypto_hash
    i += 1
  end
  
 p tab 

end

crypto

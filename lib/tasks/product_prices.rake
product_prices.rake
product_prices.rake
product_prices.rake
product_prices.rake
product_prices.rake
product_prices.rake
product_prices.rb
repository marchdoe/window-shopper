desc "Fetch product prices"
task :fetch_prices => :environment do
  require 'nokogiri'
  require 'open-uri'
  
  Product.find_all_by_price(nil).each do |product|
    url = "http://www.jcrew.com/AST/Browse/WomenBrowse/Women_Feature_Assortment/NewArrivals/sweaters/PRDOVR~24573/24573.jsp"
    doc = Nokogiri::HTML(open(url))
    price = doc.at_css("#product_details_form td td.standard_nopad").text
    product.update_attribute(:price, price)
  end
end
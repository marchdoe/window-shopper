require 'lib/fetch/jcrew'
namespace :jcrew do 
  desc "Fetch price for a product at jcrew.com"
  task :fetch_price => :environment do
    product = Product.first
    puts "Fetching price for item at: #{product.url}"
    snapshot = JCrew.fetch_product_info(product)
    print "Price is: #{snapshot.price}. Item is #{snapshot.sold_out? ? '' : 'not '}sold out"
  end
end

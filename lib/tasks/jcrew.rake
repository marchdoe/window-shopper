require 'lib/fetch/jcrew'
namespace :jcrew do 
  desc "Fetch price for a product at jcrew.com"
  task :fetch_price => :environment do
    product = Product.first
    puts "Fetching price for item at: #{product.url}"
    price = JCrew.fetch_price(product)
    print "Price is: #{price}"
  end
end

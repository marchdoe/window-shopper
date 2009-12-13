require 'lib/fetch/jcrew'
namespace :jcrew do 
  desc "Fetch price for a product at jcrew.com"
  task :fetch_price => :environment do
    product = Product.first
    puts "Fetching price for item at: #{product.url}"
    price = JCrew.fetch_price(product)
    PriceSnapShot.create!(:price => price, :product_id => product.id)
    print "Price is: #{price}"
  end
end

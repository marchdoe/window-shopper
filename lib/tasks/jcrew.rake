namespace :jcrew do 
  desc "Fetch price for a product at jcrew.com"
  task :fetch_price => :environment do
    require 'mechanize'
    agent = WWW::Mechanize.new
    url = "http://www.jcrew.com/AST/Browse/MensBrowse/Men_Feature_Assortment/catalogjcrewcomexclusives/sportcoatsouterwear/PRDOVR~10879/99101630642/ENE~1+2+3+22+4294967294+20~~~16~15~all~mode+matchallany~~~~~suede/10879.jsp"
    puts "Fetching price for item at: #{url}"
    agent.get(url)
    agent.page.search('font').each do |price|
    print "Price is: "
    puts /([0-9\.]+)/.match(price.text)[1]
    end
  end
end

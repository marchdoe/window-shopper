require 'mechanize'

module JCrew
  extend self

  def fetch_product_info(product)
    agent = create_page_agent(product.url)
    price = fetch_price(agent)
    if !price && product_sold_out(agent)
      PriceSnapShot.create!(:sold_out => true, :product_id => product.id)
    else
      PriceSnapShot.create!(:price => price, :product_id => product.id)
    end
  end

  def fetch_price(agent)
    price_text = agent.page.search('font').first
    matched_text = /([0-9\.]+)/.match(price_text)
    matched_text[1].to_f if matched_text
  end

  def product_sold_out(agent)
    soldout_text = agent.page.search('#product_details_form .prod_desc_bg .standard_nopad').first
    matched_text = /sold out/.match(soldout_text)
  end

  def create_page_agent(url)
    agent = WWW::Mechanize.new
    agent.get(url)
    agent
  end
end

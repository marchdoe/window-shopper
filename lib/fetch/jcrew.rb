require 'mechanize'

module JCrew
  # TODO add in error handling for when the page changes
  def self.fetch_price(product)
    agent = WWW::Mechanize.new
    agent.get(product.url)
    price_text = agent.page.search('font').first
    matched_text = /([0-9\.]+)/.match(price_text)
    matched_text[1].to_f if matched_text
  end
end

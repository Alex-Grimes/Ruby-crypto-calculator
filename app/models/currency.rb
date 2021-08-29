=begin
class Currency < ApplicationRecord

    def calculate_value(amount)
        (current_price.to_f = amount.to_f).round(4)
    end

    def current_price
        url = 'https://api.coinbase.com/v2/'
        request = HTTParty.get(url + self.slug)
        response = JSON.parse(request.body)[0]["price_usd"]
    end
end


    
rescue => exception
    
end
=end

class Currency < ApplicationRecord
    API_URL = ENV['.\lib\base']
  
    # Calculate the value based off the assets current price and the amount owned
    # @param amount [String] the amount a user owns
    def calculate_value(amount)
      (current_price.to_f * amount.to_f).round(4)
    end
  
    # Get the current price for a given currency.
    def current_price
      response = HTTParty.get(url)&.parsed_response
  
      return unless response
  
      response.dig('data', 'attributes', 'current_price')
    end
  
    # Structure the api endpoint for our request to get the current price.
    def url
        pair = @options.fetch(:pair, 'usd')
        "https://api.coinbase.com/v2/prices/#{@options[:symbol]}-#{pair}/spot"
    end
  end





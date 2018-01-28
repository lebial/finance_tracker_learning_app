class Stock < ApplicationRecord
  def self.new_from_lookup(ticker_symbol)
    begin
      looked = StockQuote::Stock.quote(ticker_symbol)
      price = strip_commas(looked.l)
      new(name: looked.name, ticker: looked.symbol, last_price: price )
    rescue Exception => e
      return nil
    end
  end

  def self.strip_commas(number)
    number.gsub(",", "")
  end
end

class Stock < ApplicationRecord

  def self.new_from_lookup(ticker_symbol)
    begin
      iex_api = StockQuote::Stock.new(api_key:'pk_4aa052b1e80842f18b29e5e19634b3bf')
      looked_up_stock = StockQuote::Stock.quote(ticker_symbol)
      company_name = strip_commas(looked_up_stock.company_name)
      new(name: company_name, ticker: looked_up_stock.symbol, last_price: looked_up_stock.latest_price)
     rescue Exception => e
       return nil
     end
   end

   def self.strip_commas(number)
     number.gsub(",", "")
   end
end

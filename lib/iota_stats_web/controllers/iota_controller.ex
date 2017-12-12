defmodule IotaStatsWeb.IotaController do
    use IotaStatsWeb, :controller
  
   def index(conn, _params) do
    text conn, current_value
   end

   def current_value do
   response = HTTPotion.get "https://api.bitfinex.com/v1/pubticker/iotusd"
   response = Poison.Parser.parse!(~s(#{response.body}))
   Map.get response, "last_price"
   end

   def calculate_holding(iota_amount) do
    iota_value = String.to_float(current_value)
    iota_amount * Float.round(iota_value,2)
   end

   def calculcate_profit(current_holding, cost) do
    Float.round((current_holding - cost),2)
   end
end

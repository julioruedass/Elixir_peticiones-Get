defmodule Apicripto do

  def start_get do
    HTTPotion.start
    request("https://pro-api.coinmarketcap.com/v1/cryptocurrency/map?symbol=BTC")
    |> body
    |> parse_body_map
    |> element_data
    |> head_list
    |> create_message
    |> show_message
  end

  def request(url) do
    HTTPotion.get url ,
    [ headers: ["X-CMC_PRO_API_KEY": "457e5d6c-8216-4655-85a3-705a51b3b51d"]]
  end

  defp body(response) do
    response.body
  end

  defp parse_body_map (body) do
    Poison.Parser.parse! body
  end

  defp element_data (map_body) do
    map_body["data"]
  end

  defp head_list (dala_list) do
    hd dala_list
  end

  defp create_message(map) do
    "> #{map["symbol"]} : #{map["name"]}  Recuperado desde"
  end

  defp show_message(message) do
    IO.puts message
  end

end

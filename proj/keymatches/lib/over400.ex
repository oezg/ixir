defmodule Over400 do
  def main do
    file = File.open!("ThirdOver400.csv", [:write, :utf8])

    File.stream!("SecondOver400.csv")
    |> NimbleCSV.RFC4180.parse_stream(skip_headers: false)
    |> Enum.filter(fn [code, _url] -> String.to_integer(code) == 600 end)
    |> Enum.map(fn [_code, url] -> url end)
    |> Enum.map(fn url -> [slow_request(url), url] end)
    |> CSV.encode()
    |> Enum.each(&IO.write(file, &1))
  end

  def slow_request(url) do
    :timer.sleep(200)

    case HTTPoison.get(url) do
      {:ok, %HTTPoison.Response{status_code: status}} -> status
      {:error, %HTTPoison.Error{reason: :timeout}} -> 600
      {:error, %HTTPoison.Error{reason: :nxdomain}} -> 700
    end
  end

  def get(n, x) do
    File.stream!(filename(x))
    |> NimbleCSV.RFC4180.parse_stream(skip_headers: false)
    |> Enum.filter(fn [code, _url] -> String.to_integer(code) == n end)
    |> Enum.map(fn [_code, url] -> url end)
  end

  def group_codes(x) do
    File.stream!(filename(x))
    |> NimbleCSV.RFC4180.parse_stream(skip_headers: false)
    |> Enum.group_by(fn [code, _url] -> code end, fn _ -> 1 end)
    |> Enum.into(%{}, fn {key, val} ->
      {key, Enum.sum(val)}
    end)
  end

  def write_urls(code, x) do
    endfile = File.open!("list_fehler_urls.txt", [:append])

    get(code, x)
    |> Enum.each(&IO.write(endfile, &1 <> "\n"))

    File.close(endfile)
  end

  def filename(x) do
    case x do
      1 -> "over"
      2 -> "SecondOver"
      3 -> "ThirdOver"
    end <> "400.csv"
  end
end

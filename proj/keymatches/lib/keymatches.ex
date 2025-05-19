defmodule Keymatches do
  @headers [
    {"Authorization", "Basic " <> Base.encode64("readonly_adm:TvHM92xGZ9v5")}
  ]
  def main do
    file = File.open!("results.csv", [:write, :utf8])

    results =
      ~W"dasding swr kindernetz swr3"
      |> Enum.map(&per_domain/1)

    table =
      for {domain, urls} <- results, {url, keywords} <- urls do
        [slow_request(url), domain, url, Enum.join(keywords, ";")]
      end

    table
    |> CSV.encode()
    |> Enum.each(&IO.write(file, &1))
  end

  def url2rules(url) do
    {:ok, %HTTPoison.Response{status_code: 200, body: body}} = HTTPoison.get(url, @headers)
    {:ok, %{"stages" => [%{"rules" => rules}]}} = Jason.decode(body)
    rules
  end

  def abracadabra do
    file = File.open!("over400.csv", [:write, :utf8])
    doma = &"http://s0004222.swr.ard:8764/api/query-pipelines/keymatches_#{&1}_prod"

    pasha = fn url ->
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} = HTTPoison.get(url, @headers)
      {:ok, %{"stages" => [%{"rules" => rules}]}} = Jason.decode(body)
      rules
    end

    ~W"dasding swr kindernetz swr3"
    |> Enum.map(doma)
    |> Enum.map(pasha)
    |> List.flatten()
    |> Enum.map(& &1["url"])
    |> Enum.map(&String.split(&1, "|", parts: 2))
    |> Enum.map(&List.first/1)
    |> Enum.map(&String.trim/1)
    |> Enum.uniq()
    |> Enum.map(&[slow_request(&1), &1])
    |> Enum.filter(&(&1 |> hd >= 400))
    |> CSV.encode()
    |> Enum.each(&IO.write(file, &1))
  end

  def request_url(url) do
    case HTTPoison.get(url) do
      {:ok, %HTTPoison.Response{status_code: status}} -> to_string(status) <> "|" <> url
      {:error, %HTTPoison.Error{reason: reason}} -> to_string(reason) <> "|" <> url
    end
  end

  def slow_request(url) do
    :timer.sleep(100)

    case HTTPoison.get(url) do
      {:ok, %HTTPoison.Response{status_code: status}} -> status
      {:error, %HTTPoison.Error{reason: :timeout}} -> 600
      {:error, %HTTPoison.Error{reason: :nxdomain}} -> 700
    end
  end

  def per_domain(domain) do
    url = "http://s0004222.swr.ard:8764/api/query-pipelines/keymatches_#{domain}_prod"

    {:ok, %HTTPoison.Response{status_code: 200, body: body}} =
      HTTPoison.get(url, @headers)

    {:ok, %{"stages" => [%{"rules" => rules} | _t]}} = Jason.decode(body)

    %{domain => rules |> Enum.map(&per_rule/1) |> Enum.group_by(& &1.url, & &1.keyword)}
  end

  def per_rule(%{"keyword" => keyword, "url" => url}) do
    [url, title] =
      url |> String.split("|", parts: 2) |> Enum.map(fn part -> String.trim(part) end)

    %{keyword: keyword, url: url, title: title}
  end
end

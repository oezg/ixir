defmodule SwrDatesWeb.PageController do
  use SwrDatesWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end

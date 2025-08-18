defmodule DateSorterWeb.PageController do
  use DateSorterWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end

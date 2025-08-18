defmodule SwrDateSorterWeb.PageController do
  use SwrDateSorterWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end

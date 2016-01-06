defmodule PhoenixMim.PageController do
  use PhoenixMim.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

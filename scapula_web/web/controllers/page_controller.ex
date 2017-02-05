defmodule ScapulaWeb.PageController do
  use ScapulaWeb.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

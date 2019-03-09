defmodule MobillsApi.PageController do
  use MobillsApi.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

defmodule IotaStatsWeb.PageController do
  use IotaStatsWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

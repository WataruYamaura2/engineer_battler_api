defmodule EngineerBattlerApi.PageController do
  use EngineerBattlerApi.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

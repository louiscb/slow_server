defmodule SlowServerWeb.ApiController do
  use SlowServerWeb, :controller

  def ping(conn, _params) do
    # wait 5 seconds before responding
    Process.sleep(5000)
    resp(conn, 200, "pong")
  end
end

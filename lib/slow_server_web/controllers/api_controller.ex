defmodule SlowServerWeb.ApiController do
  use SlowServerWeb, :controller

  def ping(conn, _params) do
    fib = SlowServer.Fibonacci.fib(100_000)
    IO.inspect(fib)
    resp(conn, 200, "pong")
  end
end

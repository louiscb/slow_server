defmodule SlowServerWeb.ApiController do
  use SlowServerWeb, :controller

  def desc(conn, _params) do
    desc = Req.get!("https://api.github.com/repos/elixir-lang/elixir").body["description"]
    resp(conn, 200, desc)
  end

  def fib(conn, %{"n" => n}) do
    fib = SlowServer.Fibonacci.fib(n)
    resp(conn, 200, Integer.to_string(fib))
  end
end

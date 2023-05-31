defmodule SlowServerWeb.ApiController do
  use SlowServerWeb, :controller

  def ping(conn, _params) do
    # fib = SlowServer.Fibonacci.fib(100_000)
    # IO.inspect(fib)
    d = Req.get!("https://api.github.com/repos/elixir-lang/elixir").body["description"]
    resp(conn, 200, d)
  end
end

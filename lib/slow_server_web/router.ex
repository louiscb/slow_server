defmodule SlowServerWeb.Router do
  use SlowServerWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SlowServerWeb do
    pipe_through :api

    get "/desc", ApiController, :desc
    post "/fib", ApiController, :fib
  end
end

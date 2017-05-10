defmodule UnparsedEndpoint.Router do
  use UnparsedEndpoint.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", UnparsedEndpoint do
    pipe_through :api

    resources "/event", EventController
  end
end

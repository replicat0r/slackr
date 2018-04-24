defmodule Slackr.Router do
  use Slackr.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Slackr do
    pipe_through :api
  end
end

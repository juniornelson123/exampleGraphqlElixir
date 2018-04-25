defmodule CommunityWeb.Router do
  use CommunityWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end



  scope "/api" do
    pipe_through :api

    # forward "/graphiql", Absinthe.Plug,schema: CommunityWeb.Schema
    forward "/graphiql", Absinthe.Plug.GraphiQL,schema: CommunityWeb.Schema
  end
end

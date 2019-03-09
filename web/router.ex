defmodule MobillsApi.Router do
  use MobillsApi.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug CORSPlug, origin: "*"
    # plug CORSPlug, origin: ["http://localhost:3000", "http://127.0.0.1:3000"]
    # plug CORSPlug, origin: "http://localhost:3000"
    plug :accepts, ["json"]
  end

  scope "/", MobillsApi do
    pipe_through :browser # Use the default browser stack
    #resources "/categories", CategoryController, except: [:new, :edit]
    resources "/categories", CategoryController
    resources "/todos", TodoController
    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
   scope "/api", MobillsApi do
     pipe_through :api
     #resources "/categories", CategoryController, except: [:new, :edit]
     resources "/categories", CategoryController
     resources "/todos", TodoController
   end
end

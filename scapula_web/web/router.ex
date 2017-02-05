defmodule ScapulaWeb.Router do
  use ScapulaWeb.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ScapulaWeb do
    pipe_through :browser # Use the default browser stack

    get "/", UploadController, :index
    get "/hello", HelloController, :index
    get "/hello/:messenger", HelloController, :show

    post "/upload", UploadController, :upload
  end

  # Other scopes may use custom stacks.
  # scope "/api", ScapulaWeb do
  #   pipe_through :api
  # end
end

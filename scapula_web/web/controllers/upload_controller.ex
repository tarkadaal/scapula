defmodule ScapulaWeb.UploadController do
  use ScapulaWeb.Web, :controller


  def index(conn, _params) do
    render conn, "index.html"
  end

  def upload(conn, %{"upload" => %{"data" => upload}}) do
    basename = Path.basename upload.path
    extension = Path.extname upload.filename
    storage_location = Application.fetch_env!(:scapula_web, ScapulaWeb.Endpoint)[:storage]
    path = pick_path storage_location, basename, extension
    File.cp!(upload.path, path)
    render conn, "thanks.html", filename: upload.filename
  end

  defp pick_path(location, basename, ".jpg") do
      Path.join location, "raw/#{basename}.jpg"
  end

  defp pick_path(location, basename, extension) do
      Path.join location, "#{basename}#{extension}"
  end
end
defmodule ScapulaWeb.UploadController do
  use ScapulaWeb.Web, :controller


  def index(conn, _params) do
    render conn, "index.html"
  end

  def upload(conn, %{"upload" => %{"data" => upload}}) do
    basename = Path.basename upload.path
    extension = Path.extname upload.filename
    storage_location = Application.fetch_env!(:scapula_web, ScapulaWeb.Endpoint)[:storage]
    path = Path.join storage_location, "#{basename}#{extension}"
    File.cp!(upload.path, path)
    render conn, "thanks.html", filename: upload.filename
  end

end
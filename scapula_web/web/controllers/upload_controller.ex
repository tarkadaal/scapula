defmodule ScapulaWeb.UploadController do
  use ScapulaWeb.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def upload(conn, %{"upload" => upload}) do
    upload = upload["data"]
    basename = Path.basename upload.path
    extension = Path.extname upload.filename
    File.cp!(upload.path, "/home/dan/uploaded/#{basename}#{extension}")
    render conn, "thanks.html", filename: upload.filename
  end

end
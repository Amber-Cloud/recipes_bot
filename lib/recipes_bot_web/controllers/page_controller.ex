defmodule RecipesBotWeb.PageController do
  use RecipesBotWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

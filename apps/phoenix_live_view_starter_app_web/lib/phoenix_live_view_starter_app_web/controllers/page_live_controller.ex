defmodule PhoenixLiveViewStarterAppWeb.PageLiveController do
  use PhoenixLiveViewStarterAppWeb, :controller
  alias Phoenix.LiveView

  def index(conn, _params) do
    LiveView.Controller.live_render(conn, PhoenixLiveViewStarterAppWeb.PageLive,
      session: %{
        page_index_path: Routes.page_path(conn, :index),
        thing_index_path: Routes.thing_path(conn, :index)
      }
    )
  end
end

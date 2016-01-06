defmodule PhoenixMim.EjabberdController do
  use PhoenixMim.Web, :controller

  # This is used to import the jid record structure from ejabberd:
  require Record
  Record.defrecord :jid, Record.extract(:jid, from: "deps/mongooseim/apps/ejabberd/include/jlib.hrl")

  def index(conn, _params) do
    # get online users and then extract user
    online_users = :ejabberd_auth.dirty_get_registered_users |> Enum.map(fn {user, _} -> user end)
    render conn, "index.html", users: online_users
  end
end
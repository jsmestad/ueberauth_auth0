defmodule SpecRouter do
  # Credit goes to:
  # https://github.com/he9qi/ueberauth_weibo/blob/master/test/test_helper.exs
  # and
  # https://github.com/ueberauth/ueberauth_vk/blob/master/test/test_helper.exs

  require Ueberauth
  use Plug.Router

  plug(:fetch_query_params)

  plug(Ueberauth, base_path: "/auth")

  plug(:match)
  plug(:dispatch)

  get("/auth/auth0", do: send_resp(conn, 200, "auth0 request"))

  get("/auth/auth0/callback", do: send_resp(conn, 200, "auth0 callback"))
end

ExUnit.start()

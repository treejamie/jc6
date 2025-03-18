defmodule Jc6.Repo do
  use Ecto.Repo,
    otp_app: :jc6,
    adapter: Ecto.Adapters.Postgres
end

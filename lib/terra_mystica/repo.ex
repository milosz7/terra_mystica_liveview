defmodule TerraMystica.Repo do
  use Ecto.Repo,
    otp_app: :terra_mystica,
    adapter: Ecto.Adapters.Postgres
end

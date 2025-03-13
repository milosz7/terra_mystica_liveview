defmodule TerraMystica.Game do
  use Ecto.Schema
  import Ecto.Changeset

  schema "games" do
    field :start, :utc_datetime
    field :end, :utc_datetime

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(game, attrs) do
    game
    |> cast(attrs, [:start, :end])
    |> validate_required([:start, :end])
  end
end

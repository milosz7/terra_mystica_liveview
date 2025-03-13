defmodule TerraMystica.Faction do
  use Ecto.Schema
  import Ecto.Changeset

  schema "factions" do
    field :name, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(faction, attrs) do
    faction
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end

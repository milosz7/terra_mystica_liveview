defmodule TerraMystica.Schemas.PassTile do
  use Ecto.Schema
  import Ecto.Changeset

  schema "pass_tiles" do
    field :pass_tile_name, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(pass_tile, attrs) do
    pass_tile
    |> cast(attrs, [:pass_tile_name])
    |> validate_required([:pass_tile_name])
  end
end

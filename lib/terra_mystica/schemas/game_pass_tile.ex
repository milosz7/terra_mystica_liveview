defmodule TerraMystica.Schemas.GamePassTile do
  use Ecto.Schema
  import Ecto.Changeset

  schema "game_pass_tiles" do
    field :pass_tile_id, :id
    field :game_id, :id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(game_pass_tile, attrs) do
    game_pass_tile
    |> cast(attrs, [])
    |> validate_required([])
  end
end

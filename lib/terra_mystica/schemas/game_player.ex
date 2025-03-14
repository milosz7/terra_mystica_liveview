defmodule TerraMystica.Schemas.GamePlayer do
  use Ecto.Schema
  import Ecto.Changeset

  schema "game_players" do
    field :final_score, :integer
    field :player_id, :id
    field :faction_id, :id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(game_player, attrs) do
    game_player
    |> cast(attrs, [:final_score])
    |> validate_required([:final_score])
  end
end

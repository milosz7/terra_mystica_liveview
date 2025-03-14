defmodule TerraMystica.Schemas.Round do
  use Ecto.Schema
  import Ecto.Changeset

  @first_round_number 1
  @last_round_number 6

  schema "rounds" do
    field :round_number, :integer
    field :game_id, :id
    field :round_bonus_id, :id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(round, attrs) do
    round
    |> cast(attrs, [:round_number])
    |> validate_required([:round_number])
    |> validate_inclusion(:round_number, @first_round_number..@last_round_number)
  end
end

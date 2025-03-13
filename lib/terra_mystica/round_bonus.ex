defmodule TerraMystica.RoundBonus do
  use Ecto.Schema
  import Ecto.Changeset

  schema "round_bonuses" do
    field :round_bonus_name, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(round_bonus, attrs) do
    round_bonus
    |> cast(attrs, [:round_bonus_name])
    |> validate_required([:round_bonus_name])
  end
end

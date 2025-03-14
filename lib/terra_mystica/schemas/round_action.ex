defmodule TerraMystica.Schemas.RoundAction do
  use Ecto.Schema
  import Ecto.Changeset

  schema "round_actions" do
    field :move_number, :integer
    field :action_id, :id
    field :action_payload, :map

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(round_action, attrs) do
    round_action
    |> cast(attrs, [:move_number, :action_payload])
    |> validate_required([:move_number, :action_payload])
  end
end

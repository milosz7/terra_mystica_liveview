defmodule TerraMystica.Schemas.Action do
  use Ecto.Schema
  import Ecto.Changeset

  schema "actions" do
    field :action_name, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(action, attrs) do
    action
    |> cast(attrs, [:action_name])
    |> validate_required([:action_name])
  end
end

defmodule TerraMystica.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :username, :string
    field :password_hash, :string
    field :email, :string
    field :is_ai, :boolean, default: false

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:username, :password_hash, :email, :is_ai])
    |> validate_required([:username, :password_hash, :email, :is_ai])
  end
end

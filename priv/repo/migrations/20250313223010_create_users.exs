defmodule TerraMystica.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :username, :string
      add :password_hash, :string
      add :email, :string
      add :is_ai, :boolean, default: false, null: false

      timestamps(type: :utc_datetime)
    end
  end
end

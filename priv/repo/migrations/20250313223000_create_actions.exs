defmodule TerraMystica.Repo.Migrations.CreateActions do
  use Ecto.Migration

  def change do
    create table(:actions) do
      add :action_name, :string

      timestamps(type: :utc_datetime)
    end
  end
end

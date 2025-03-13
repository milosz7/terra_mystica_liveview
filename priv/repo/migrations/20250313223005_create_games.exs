defmodule TerraMystica.Repo.Migrations.CreateGames do
  use Ecto.Migration

  def change do
    create table(:games) do
      add :start, :utc_datetime
      add :end, :utc_datetime

      timestamps(type: :utc_datetime)
    end

    alter table(:games) do
      modify(:start, :utc_datetime, default: fragment("NOW()"))
    end
  end
end

defmodule TerraMystica.Repo.Migrations.CreateGamePlayers do
  use Ecto.Migration

  def change do
    create table(:game_players) do
      add :final_score, :integer
      add :player_id, references(:users, on_delete: :nothing)
      add :faction_id, references(:factions, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:game_players, [:player_id])
    create index(:game_players, [:faction_id])
  end
end

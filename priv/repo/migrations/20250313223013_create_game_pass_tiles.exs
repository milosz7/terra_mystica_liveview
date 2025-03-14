defmodule TerraMystica.Repo.Migrations.CreateGamePassTiles do
  use Ecto.Migration

  def change do
    create table(:game_pass_tiles) do
      add :pass_tile_id, references(:pass_tiles, on_delete: :nothing)
      add :game_id, references(:games, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:game_pass_tiles, [:pass_tile_id])
    create index(:game_pass_tiles, [:game_id])
  end
end

defmodule TerraMystica.Repo.Migrations.CreatePassTiles do
  use Ecto.Migration

  def change do
    create table(:pass_tiles) do
      add :pass_tile_name, :string

      timestamps(type: :utc_datetime)
    end
  end
end

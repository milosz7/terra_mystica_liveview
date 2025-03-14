defmodule TerraMystica.Repo.Migrations.CreateRounds do
  use Ecto.Migration

  def change do
    create table(:rounds) do
      add :round_number, :integer
      add :game_id, references(:games, on_delete: :nothing)
      add :round_bonus_id, references(:round_bonuses, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:rounds, [:game_id])
    create index(:rounds, [:round_bonus_id])
  end
end

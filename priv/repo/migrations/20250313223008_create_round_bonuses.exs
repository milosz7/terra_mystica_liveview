defmodule TerraMystica.Repo.Migrations.CreateRoundBonuses do
  use Ecto.Migration

  def change do
    create table(:round_bonuses) do
      add :round_bonus_name, :string

      timestamps(type: :utc_datetime)
    end
  end
end

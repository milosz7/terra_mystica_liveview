defmodule TerraMystica.Repo.Migrations.CreateRoundActions do
  use Ecto.Migration

  def change do
    create table(:round_actions) do
      add :move_number, :integer
      add :action_id, references(:actions, on_delete: :nothing)
      add :action_payload, :map, default: %{}

      timestamps(type: :utc_datetime)
    end

    create index(:round_actions, [:action_id])
  end
end

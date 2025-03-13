defmodule TerraMystica.Repo.Migrations.AddIndexToActionPayload do
  use Ecto.Migration

  def up do
    execute("CREATE INDEX action_payload_index ON round_actions USING GIN(action_payload)")
  end

  def down do
    execute("DROP INDEX action_payload_index")
  end
end

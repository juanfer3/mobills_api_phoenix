defmodule MobillsApi.Repo.Migrations.CreateCategory do
  use Ecto.Migration

  def change do
    create table(:categories) do
      add :title, :string
      add :color, :string
      add :color_letter, :string
      add :icon, :string

      timestamps()
    end

  end
end

defmodule EngineerBattlerApi.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :score, :integer
      add :level, :integer
      add :qiita, :string
      add :rank, :integer

      timestamps()
    end
  end
end

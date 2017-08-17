defmodule EngineerBattlerApi.User do
  use EngineerBattlerApi.Web, :model

  schema "users" do
    field :name, :string
    field :score, :integer
    field :level, :integer
    field :qiita, :string
    field :rank, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :score, :level, :qiita, :rank])
    |> validate_required([:name, :score, :level, :qiita, :rank])
  end
end

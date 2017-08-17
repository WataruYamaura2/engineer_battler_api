defmodule EngineerBattlerApi.UserTest do
  use EngineerBattlerApi.ModelCase

  alias EngineerBattlerApi.User

  @valid_attrs %{level: 42, name: "some name", qiita: "some qiita", rank: 42, score: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end

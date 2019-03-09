defmodule MobillsApi.CategoryTest do
  use MobillsApi.ModelCase

  alias MobillsApi.Category

  @valid_attrs %{color: "some content", color_letter: "some content", icon: "some content", title: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Category.changeset(%Category{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Category.changeset(%Category{}, @invalid_attrs)
    refute changeset.valid?
  end
end

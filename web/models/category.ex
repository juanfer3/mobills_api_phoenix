defmodule MobillsApi.Category do
  use MobillsApi.Web, :model

  schema "categories" do
    field :title, :string
    field :color, :string
    field :color_letter, :string
    field :icon, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :color, :color_letter, :icon])
    |> validate_required([:title, :color, :color_letter, :icon])
  end
end

defmodule MobillsApi.CategoryView do
  use MobillsApi.Web, :view

  def render("index.json", %{categories: categories}) do
    %{data: render_many(categories, MobillsApi.CategoryView, "category.json")}
  end

  def render("show.json", %{category: category}) do
    %{data: render_one(category, MobillsApi.CategoryView, "category.json")}
  end

  def render("category.json", %{category: category}) do
    %{id: category.id,
      title: category.title,
      color: category.color,
      color_letter: category.color_letter,
      icon: category.icon}
  end
end

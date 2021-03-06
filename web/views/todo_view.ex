defmodule MobillsApi.TodoView do
  use MobillsApi.Web, :view

  def render("index.json", %{todos: todos}) do
    %{data: render_many(todos, MobillsApi.TodoView, "todo.json")}
  end

  def render("show.json", %{todo: todo}) do
    %{data: render_one(todo, MobillsApi.TodoView, "todo.json")}
  end

  def render("todo.json", %{todo: todo}) do
    %{id: todo.id,
      description: todo.description,
      complete: todo.complete}
  end
end

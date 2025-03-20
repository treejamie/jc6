defmodule Jc6.Blog.Posts do
  import Ecto.Query
  alias Jc6.Blog.Post
  alias Jc6.Repo

  def create(attrs) do
    {:ok, _post} =
      Post.changeset(%Post{}, attrs)
      |> Repo.insert()
  end

  def published, do: published(Post)

  def published(q) do
    q
    |> where(status: "published")
    |> Repo.all()
  end
end

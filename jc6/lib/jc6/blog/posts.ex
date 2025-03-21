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
    |> order_by(desc: :published_at)
    |> Repo.all()
  end

  def all, do: all(Post)

  def all(q) do
    q
    |> where([p], p.status != "deleted" )
    |> order_by(desc: :published_at)
    |> Repo.all()
  end

  def by_slug(slug) do
    Repo.get_by(Post, slug: slug)
  end
end

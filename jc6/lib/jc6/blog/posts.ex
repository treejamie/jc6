defmodule Jc6.Blog.Posts do
  @doc """
  The service context for the posts
  """
  alias Jc6.Blog.Post
  alias Jc6.Repo

  def create(attrs) do
    {:ok, _post} =
      Post.changeset(%Post{}, attrs)
      |> Repo.insert()
  end
end

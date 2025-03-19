# this is the service
defmodule Jc6.Blog.Posts do
  alias Jc6.Blog.Post
  alias Jc6.Repo

  def create(attrs) do
    {:ok, _post} = Post.changeset(%Post{}, attrs)
    |> Repo.insert

  end

end

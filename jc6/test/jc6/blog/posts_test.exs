defmodule Jc6.Blog.PostTests do
  use Jc6.DataCase
  alias Jc6.Blog.{Post, Posts}

  test "creating a post works", %{} do
    # build the basic thing
    p = %Post{
      title: "Foo",
      slug: "foo",
      content: "<p>This is foo.</p>",
      markdown: "This is foo.",
      excerpt: "yeah, this is food"
    }
    # no shenanigans when we insert it
    {:ok, _post} = Repo.insert(p)
  end

  test "content is built from markdown with service", %{} do


  end
end

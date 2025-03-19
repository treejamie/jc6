defmodule Jc6.Blog.PostTests do
  use Jc6.DataCase
  alias Jc6.Blog.Post

  test "creating a post works", %{} do
    # build the basic thing
    p = %Post{
      title: "Foo",
      slug: "foo",
      content: "<p>This is foo.</p>",
      markdown: "This is foo.",
      excerpt: "yeah, this is food"
    }
    # now insert it into the database
    {:ok, _post} = Repo.insert(p)

  end
end

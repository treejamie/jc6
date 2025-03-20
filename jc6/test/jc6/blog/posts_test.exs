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
      excerpt: "yeah, this is foo"
    }
    # no shenanigans when we insert it
    {:ok, _post} = Repo.insert(p)
  end

  test "content is built from markdown with service", %{} do
    # the attrs
    attrs = %{
      title: "Foo2",
      markdown: "This is foo.\n* one\n* two",
      excerpt: "yeah, this is foo"
    }

    # insert using service
    {:ok, post} = Posts.create(attrs)

    # post has the right content
    assert post.content == "<p>This is foo.</p>\n<ul>\n<li>one</li>\n<li>two</li>\n</ul>"

  end
end

defmodule Jc6.Blog.PostTests do
  use Jc6.DataCase
  alias Jc6.Blog.Posts
  alias Jc6.Test.Jc6Helper



  test "content is built from markdown with service", %{} do
    # make a user
    u = Jc6Helper.make_user()

    # the attrs
    attrs = %{
      title: "Foo2",
      markdown: "This is foo.\n* one\n* two",
      excerpt: "yeah, this is foo",
      author_id: u.id
    }

    # insert using service
    {:ok, post} = Posts.create(attrs)

    # post has the right content
    assert post.content == "<p>This is foo.</p>\n<ul>\n<li>one</li>\n<li>two</li>\n</ul>"
  end

  test "posts default to draft when they are created", %{} do
    # make a user
    u = Jc6Helper.make_user()

    # the attrs
    attrs = %{
      title: "Foo2",
      markdown: "This is foo.\n* one\n* two",
      excerpt: "yeah, this is foo",
      author_id: u.id
    }

    # insert using service
    {:ok, post} = Posts.create(attrs)

    # post is draft
    assert post.status == "draft"
  end

  test "published returns only published, all returns all non deleted", %{} do
    # make a user
    user = Jc6Helper.make_user()

    # now make two posts - one defaults to draft and not published
    _p1 = Jc6Helper.make_post(%{title: "little mandy buttercap"}, user)

    # the second is explicitaly made to be published
    _p2 = Jc6Helper.make_post(%{
      title: "little bingo butterbash",
      status: "published",
      published_at: DateTime.utc_now,
    }, user)

    # we get one post from published
    assert 1 == Posts.published |> length

    # and we get two from all
    assert 2 = Posts.all |> length

  end
end

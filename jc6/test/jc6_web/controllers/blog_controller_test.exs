defmodule Jc6Web.BlogControllerTest do
  use Jc6Web.ConnCase
  alias Jc6.Blog.Posts

  test "GET /words/", %{conn: conn} do
    conn = get(conn, ~p"/words")
    assert conn.status == 200
  end

  test "404 on a post that does not exist", %{conn: conn} do
    conn = get(conn, ~p"/words/this-one-doesnot-exist")
    assert conn.status == 404
  end

  test "200 on a post that exists", %{conn: conn} do
    # the attrs
    attrs = %{
      title: "Foo2",
      markdown: "This is foo.\n* one\n* two",
      excerpt: "yeah, this is foo",
      status: "published"
    }

    # insert using service
    {:ok, _post} = Posts.create(attrs)

    conn = get(conn, ~p"/words/foo2")
    assert conn.status == 200
  end



end

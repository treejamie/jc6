defmodule Jc6Web.BlogControllerTest do
  use Jc6Web.ConnCase
  alias Jc6.Test.Jc6Helper

  test "GET /words/", %{conn: conn} do
    conn = get(conn, ~p"/words")
    assert conn.status == 200
  end

  test "404 on a post that does not exist", %{conn: conn} do
    conn = get(conn, ~p"/words/this-one-doesnot-exist")
    assert conn.status == 404
  end

  test "200 on a post that exists", %{conn: conn} do
    # make a post
    _post = Jc6Helper.make_post(%{title: "Barry Buttercap"})

    conn = get(conn, ~p"/words/barry-buttercap")
    assert conn.status == 200
  end



end

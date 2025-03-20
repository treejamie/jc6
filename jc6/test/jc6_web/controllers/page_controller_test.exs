defmodule Jc6Web.PageControllerTest do
  use Jc6Web.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, ~p"/")
    assert conn.status == 200
  end
end

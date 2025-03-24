defmodule Jc6Web.BlogController do
  use Jc6Web, :controller
  alias Jc6.Blog.Posts

  def list(conn, _params) do
    # get the posts
    posts = Posts.published()

    # and done
    render(conn, :list, posts: posts)
  end

  def detail(conn, %{"slug" => slug}) do
    # get the post
    post = Posts.by_slug(slug)

    case post do
      # nope
      nil ->
        conn
        |> put_status(:not_found)
        |> render(:not_found, layout: false, post: post)

      _ ->
        # and done
        conn
        |> render(:detail, post: post)
    end
  end
end

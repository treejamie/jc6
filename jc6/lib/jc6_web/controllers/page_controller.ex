defmodule Jc6Web.PageController do
  use Jc6Web, :controller
  alias Jc6.Blog.Posts

  def home(conn, _params) do
    # gert the posts
    posts = Posts.published()

    # and done
    render(conn, :home, layout: false, posts: posts)
  end


  def detail(conn, %{"slug" => slug}) do
    # get the post
    post = Posts.by_slug(slug)

    # and done
    render(conn, :detail, layout: true, post: post)
  end
end

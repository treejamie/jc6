defmodule Jc6Web.BlogHTML do
  @moduledoc """
  This module contains pages rendered by PageController.

  See the `page_html` directory for all templates available.
  """
  use Jc6Web, :html

  embed_templates "blog_html/*"

  # TODO: don't duplicate this function - it is already in the page html file
  def ui_time(time) do
    case Timex.format(time, "{WDfull} {D} {Mfull} {YYYY}") do
      {:ok, string_time} ->
        string_time
      {:error, _ } ->
        "dates are broken"
    end
  end
end

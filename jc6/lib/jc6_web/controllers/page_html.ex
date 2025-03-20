defmodule Jc6Web.PageHTML do
  @moduledoc """
  This module contains pages rendered by PageController.

  See the `page_html` directory for all templates available.
  """
  use Jc6Web, :html

  embed_templates "page_html/*"


  def ui_time(time) do

    case Timex.format(time, "{WDfull} {D} {Mfull} {YYYY}") do
      {:ok, string_time} ->
        string_time
      {:error, _ } ->
        "dates are broken"
    end
  end
end

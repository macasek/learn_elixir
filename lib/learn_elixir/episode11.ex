defmodule LearnElixir.Episode11 do
  @moduledoc """
  Exercises from Episode 11.

  ## Examples

      LearnElixir.Episode11.colorize
  """

  def colorize do
    Colixir.colorize("hello world", :red)
              |> Colixir.colorize(:bright)
              |> Colixir.colorize("from Mars", :yellow)
              |> Colixir.colorize(:blue_background)
              |> IO.puts
  end

end
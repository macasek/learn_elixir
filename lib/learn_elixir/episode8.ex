defmodule LearnElixir.Episode8 do
  @moduledoc """
  Exercises from Episode 8.

  ## Examples

      LearnElixir.Episode8.even(10)
      LearnElixir.Episode8.join(["episodes", "08-comprehensions"], "/")
  """

  def even(n) do
    for n <- 0..n, rem(n, 2) == 0, do: n
  end

  def join(parts, sep) do
    for part <- parts, into: "" do
      "#{sep}#{part}"
    end
  end
end
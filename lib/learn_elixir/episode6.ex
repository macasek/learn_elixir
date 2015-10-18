defmodule LearnElixir.Episode6 do
  @moduledoc """
  Exercises from Episode 6.

  ## Examples

      LearnElixir.Episode6.sum([1,2,3,4])
      LearnElixir.Episode6.reduce([1,2,3,4], fn v, b -> v + b end)
      LearnElixir.Episode6.reverse([1,2,3,4])
  """

  def sum(arr) do
    do_sum(arr, 0)
  end

  defp do_sum([], acc) do
    acc
  end

  defp do_sum([h|t], acc) do
    do_sum(t, acc + h)
  end

  @doc """
  Reduces a list applying the passed function.

  ## Examples

      iex> LearnElixir.Episode6.reduce([1,2,3,4], fn v, b -> v + b end)
      10
  """
  def reduce(arr, func) do
    do_reduce(arr, func, 0)
  end

  defp do_reduce([], _, acc) do
    acc
  end

  defp do_reduce([h|t], func, acc) do
    do_sum(t, func.(h, acc))
  end

  def reverse(arr) do
    do_reverse(arr, [])
  end

  defp do_reverse([], acc) do
    acc
  end

  defp do_reverse([h|t], acc) do
    do_reverse(t, [h | acc])
  end
end
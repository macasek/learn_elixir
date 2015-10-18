defmodule LearnElixirTest do
  use ExUnit.Case

  doctest LearnElixir.Episode6

  test "sum correctly returns with empty list" do
    assert LearnElixir.Episode6.sum([]) == 0
  end

  test "sum correctly returns with non-empty list" do
    assert LearnElixir.Episode6.sum([1,2,3,4]) == 10
  end
end

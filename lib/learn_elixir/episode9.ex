defmodule LearnElixir.MySigils do
  def sigil_r(content, _opts) do
    content
    |> String.split
    |> Enum.join("🚀")
  end

  def sigil_o(content, _opts) do
    content
    |> String.split
    |> Enum.sort
  end
end

defmodule LearnElixir.SigilTest do
  @moduledoc """
  Exercises from Episode 9.

  ## Examples

      LearnElixir.SigilTest.test_new_r_sigil
      LearnElixir.SigilTest.test_my_o_sigil
  """

  import Kernel, except: [sigil_r: 2]
  import LearnElixir.MySigils

  def test_new_r_sigil do
    ~r[rocket seperated words]
  end

  def test_my_o_sigil do
    ~o[order this list]
  end
end
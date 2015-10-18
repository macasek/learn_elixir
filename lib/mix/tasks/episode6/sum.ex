defmodule Mix.Tasks.Episode6.Sum do
  @shortdoc "Episode 6 sum exercise."

  use Mix.Task

  def run(args) do
    {opts, _, _} = OptionParser.parse(args, aliases: [l: :list])

    opts[:list] |>
    String.split(",") |>
    Enum.map(&String.to_integer/1) |>
    LearnElixir.Episode6.sum |>
    IO.puts
  end
end
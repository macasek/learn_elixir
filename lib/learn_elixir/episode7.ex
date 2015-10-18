defmodule LearnElixir.Episode7 do
  @moduledoc """
  Exercises from Episode 7.

  ## Examples

      LearnElixir.Episode7.words_starting_with("lib/learn_elixir/sample.txt", "d")
  """

  def words_starting_with(file_path, letter) do
    get_file_stream(file_path) |>
    Stream.filter_map(&String.starts_with?(&1, letter), fn line -> String.capitalize(line) |> String.strip end) |>
    Enum.sort_by(&String.length/1)
  end

  defp get_file_stream(file_path) do
    Stream.resource(fn -> File.open!(file_path) end,
                    fn file ->
                      case IO.read(file, :line) do
                        data when is_binary(data) -> {[data], file}
                        _ -> {:halt, file}
                      end
                    end,
                    fn file -> File.close(file) end)
  end
end
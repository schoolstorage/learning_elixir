defmodule Exercise1.NonAlpha do

  def remove_non_alpha(chararray) do
    clean_list(chararray)
  end

  defp clean_list([]), do: []
  defp clean_list([head | tail]) when head not in ?a .. ?z and head not in ?A .. ?Z, do: clean_list(tail)
  defp clean_list([head | tail]), do: [head | clean_list(tail)]

end

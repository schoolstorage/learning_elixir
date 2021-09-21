defmodule Exercise1.NonAlpha do

  def remove_non_alpha(chararray) do
    clean_list(chararray)
  end

  defp clean_list([]), do: []
  defp clean_list([head | tail]) when head in ?a .. ?z, do: [head - 32 | clean_list(tail)]
  defp clean_list([head | tail]), do: [head | clean_list(tail)]

end

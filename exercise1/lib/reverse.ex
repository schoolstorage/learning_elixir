defmodule Exercise1.Reverse do

  def reverse(chararray) do
    reverse_char_list(chararray)
  end

  defp reverse_char_list([]), do: []
  defp reverse_char_list([head | tail]) do
    reverse_char_list(tail) ++ [head]
  end

end

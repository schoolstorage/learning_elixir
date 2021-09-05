defmodule Exercise1.NonAlpha do

  def remove_non_alpha(chararray) do
    Exercise1.MList.foldl(chararray, [], fn(head, acc) -> clean_char(head, acc) end)
  end

  def clean_char(char_code, acc) do
    if (char_code >= 65 && char_code <= 90) || (char_code >= 97 && char_code <= 122) do
      acc ++ [char_code]
    else
      acc
    end
  end

end

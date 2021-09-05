defmodule Exercise1.NonAlpha do

  def remove_non_alpha(chararray) do
    remove_char(chararray, [])
  end

  def remove_char([head | tail], modified_list) do
    if nil != clean_char(head) do
      remove_char(tail, modified_list ++ [clean_char(head)])
    else
      remove_char(tail, modified_list)
    end
  end

  def remove_char([], modified_list), do: modified_list

  def clean_char(char_code) do
    if (char_code >= 65 && char_code <= 90) || (char_code >= 97 && char_code <= 122) do
      char_code
    else
      nil
    end
  end

end

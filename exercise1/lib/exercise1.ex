defmodule Exercise1 do

  def reverse(chararray) do
    Exercise1.Reverse.reverse(chararray)
  end

  def upcase(chararray) do
    Exercise1.Uppercase.upcase(chararray)
  end

  def remove_non_alpha(chararray) do
    Exercise1.NonAlpha.remove_non_alpha(chararray)
  end

  def is_palindrome(chararray) do
    chararray == reverse(chararray)
  end

  def palindrome(chararray) do
    remove_non_alpha(chararray)
    |> upcase
    |> reverse
    |> is_palindrome
  end

end

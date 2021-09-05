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

  def palindrome(chararray) do
    cleaned_word = remove_non_alpha(chararray)
    given_word = upcase(cleaned_word);
    reversed_word = reverse(given_word)
    given_word == reversed_word
  end

end

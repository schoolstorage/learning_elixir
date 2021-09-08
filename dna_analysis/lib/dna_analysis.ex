defmodule DnaAnalysis do

  def count(collection, char_code) do
    scroll(collection, fn(head) -> check(head, char_code) end)
  end

  def scroll([], fun), do: 0
  def scroll([head | tail], fun) do
    fun.(head) + scroll(tail, fun)
  end

  def check(head, char_code) do
    if head == char_code do
      1
    else
      0
    end
  end

  # --------------------------------------------------------------------------
  def histogram(collection) do
    map = scroll_more(collection)
    IO.inspect map
  end

  def update_map(map) do
    IO.inspect map
  end

  def scroll_more([]), do: %{}
  def scroll_more([head | tail]) do
    %{scroll_more(tail) | head: 0}
  end

end

defmodule Bowling do

  def score(game) do
    List.flatten(game)
    |> Enum.filter( fn(single_score) -> is_number(single_score) end )
    |> calculate_score
  end

  #def calculate_score(cleaned_scores) do
  #  Enum.reduce( cleaned_scores, 0, fn(single_score, accumulator) -> single_score + accumulator end )
  #end

  def calculate_score([ 10 | rest ]), do: calculate_score(rest) + List.first(rest)
  def calculate_score([ score1 | [ score2 | rest ] ]) when score1 + score2 == 10, do: calculate_score(rest) + score1 + score2 + List.first(rest)
  def calculate_score([ score1 | [ score2 | rest ] ]), do: calculate_score(rest) + score1 + score2
  def calculate_score([]), do: 0

end

defmodule Bowling do

  def score(game) do
    clean_scores(game)
    |> calculate_score
  end

  def clean_scores(game) do
    List.flatten(game)
    |> Enum.filter( fn(single_score) -> is_number(single_score) end )
  end

  def calculate_score([ 10 | [ score2 | rest ] ]) do
    IO.inspect 'calculate_score([ 10 | [ score2 | rest ] ])'
    IO.inspect 10
    IO.inspect score2
    IO.inspect rest
    IO.inspect 10 + score2 + List.first(rest)
    10 + score2 + List.first(rest) + calculate_score(rest)
  end

  def calculate_score([ score1 | [ score2 | rest ] ]) when score1 + score2 == 10 do
    IO.inspect 'processing calculate_score([ score1 | [ score2 | rest ] ]) when score1 + score2 == 10'
    IO.inspect score1
    IO.inspect score2
    IO.inspect rest
    IO.inspect score1 + score2 + List.first(rest)
    score1 + score2 + List.first(rest) + calculate_score(rest)
  end

  def calculate_score([ score1 | [ score2 | rest ] ]) do
    IO.inspect 'processing calculate_score([ score1 | [ score2 | rest ] ])'
    IO.inspect score1
    IO.inspect score2
    IO.inspect rest
    IO.inspect score1 + score2
    score1 + score2 + calculate_score(rest)
  end

  def calculate_score([ score1 | [ score2 | [] ] ]) do
    IO.inspect 'processing calculate_score([ score1 | [ score2 | rest ] ])'
    IO.inspect score1
    IO.inspect score2
    IO.inspect []
    score1 + score2
  end

  def calculate_score([ score1 | [] ]) do
    IO.inspect 'processing calculate_score([ score1 | [ score2 | rest ] ])'
    IO.inspect score1
    IO.inspect []
    score1
  end

  def calculate_score([]) do
    IO.inspect 'processing calculate_score([])'
    IO.inspect []
    0
  end

end

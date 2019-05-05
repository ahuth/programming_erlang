-module(shop).
-export([total/1]).

cost(oranges) -> 5;
cost(newspaper) -> 8;
cost(apples) -> 2;
cost(pears) -> 9;
cost(milk) -> 7.

total([]) -> 0;
total([{What, Count} | Rest]) ->
  Count * cost(What) + total(Rest).

-module(shop_tests).
-include_lib("eunit/include/eunit.hrl").

empty_total_test() ->
  Total = shop:total([]),
  ?assertEqual(0, Total).

single_total_test() ->
  Total = shop:total([{milk, 3}]),
  ?assertEqual(21, Total).

full_total_test() ->
  Buy = [
    {oranges, 4},
    {newspaper, 1},
    {apples, 10},
    {pears, 6},
    {milk, 3}
  ],
  Total = shop:total(Buy),
  ?assertEqual(123, Total).

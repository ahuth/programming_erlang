-module(geometry_tests).
-include_lib("eunit/include/eunit.hrl").

area_test() ->
  Rectangle = {rectangle, 5, 6},
  Square = {square, 4},
  ?assertEqual(geometry:area(Rectangle), 30),
  ?assertEqual(geometry:area(Square), 16).

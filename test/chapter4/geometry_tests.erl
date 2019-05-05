-module(geometry_tests).
-include_lib("eunit/include/eunit.hrl").

area_test() ->
  Rectangle = {rectangle, 5, 6},
  Square = {square, 4},
  Circle = {circle, 3},
  ?assertEqual(geometry:area(Rectangle), 30),
  ?assertEqual(geometry:area(Square), 16),
  % There's no assert macro that I can see which will handle floats. Instead,
  % figure out if we're close enough to the expected value.
  true = abs(geometry:area(Circle) - 28.2743) =< 0.01.

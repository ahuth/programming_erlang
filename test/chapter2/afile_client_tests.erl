-module(afile_client_tests).
-include_lib("eunit/include/eunit.hrl").

ls_test() ->
  FileServer = afile_server:start("./test/chapter2/fixtures"),
  {ok, Files} = afile_client:ls(FileServer),
  ?assertEqual(["b.txt", "a.txt"], Files).

get_file_test() ->
  FileServer = afile_server:start("./test/chapter2/fixtures"),
  {ok, Content} = afile_client:get_file(FileServer, "a.txt"),
  ?assertEqual(<<"hello\n">>, Content).

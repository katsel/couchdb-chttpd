-module(chttpd_helloworld).
-export([handle_req/1]).
-include_lib("couch/include/couch_db.hrl").


handle_req(#httpd{method='GET'}=Req) ->
    couch_httpd:send_json(Req, {[{<<"hello">>, <<"world">>}]});
handle_req(Req) ->
    chttpd_misc:send_method_not_allowed(Req, "GET").

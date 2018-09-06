local key = ngx.var.api_version

local redis = require "resty.redis"
local red = redis:new()

red:set_timeout(1000) -- 1 second

local ok, err = red:connect("127.0.0.1", 6379)
if not ok then
	ngx.log(ngx.ERR, "failed to connect to redis: ", err)
	return ngx.exit(500)
end

local host, err = red:get(key)
if not host then
	ngx.log(ngx.ERR, "failed to get redis key: ", err)
	return ngx.exit(500)
end

if host == ngx.null then
	return ngx.exit(404)
end

ngx.var.target = host
ngx.var.path = ngx.var.uri:gsub('/'..key, '')

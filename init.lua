---@autor flamma#0050
---@descrição meu sitezinho

local http = require('coro-http') --github
local json = require('json')

coroutine.wrap(function() 
  local url = 'https://api.github.com/gists/[removido]'
  local x = ((json.decode(({http.request('GET', url, {{'User-Agent', 'mywebsite'}})})[2]))['files'])
  _G.listco = x['db1']['content']
  _G.listsuj = x['db2']['content']
end)()

local uu, ur, fav = require 'utopia', require 'utopia-route' --[[host]]
local io, string, table = io, string, table

local usk = uu:new() --gerenciador do site
local port = process.env.PORT or 8080 --a porta rsrs >:)

local files = {
  'pages/prioridade.html',
  'pages/fd-lib/list.lua',

  'pages/fd-server/fetch.lua'
}

local limpaDir = function(s)
    return ({s:gsub('(%.html)', ''):gsub('(pages%/)', ''):gsub('(fd%-)', '')})[1]
end

local strstarts = function(String,Start)
  return string.sub(String,1,string.len(Start))==Start
end

local split = function(str, sep)
    local sep, res = sep or '%s', {}
    string.gsub(str, '[^'..sep..']+', function(x) res[#res+1] = x end)
    return res 
end

local token = '[removido]'
local url = 'https://api.github.com/gists/[removido]'

local listDB = ur.get('/'..limpaDir('pages/fd-lib/list.lua'), function(_, res)
  local p = io.open('pages/fd-lib/list.lua', 'rb')
  local t = p:read('*a'); p:flush(); p:close()
  t = 'local listaDeItens = {\n'..listco..',\n}\n\nlocal listaSugerida = {\n'..listsuj..',\n}\n\n'..t
  res:finish(t)
end)
usk:use(listDB)

local reiniciar = function()
  listDB = ur.get('/'..limpaDir('pages/fd-lib/list.lua'), function(_, res)
    local p = io.open('pages/fd-lib/list.lua', 'rb')
    local t = p:read('*a'); p:flush(); p:close()
    t = 'local listaDeItens = {\n'..listco..',\n}\n\nlocal listaSugerida = {\n'..listsuj..',\n}\n\n'..t
    res:finish(t)
  end)
  usk:use(listDB)
end

local urld = function(url)
  return url:gsub("%%(%x%x)", function(hex)
    return string.char(tonumber(hex, 16))
  end)
end

--cria as páginas principais
for i=1, #files do
  if files[i] == 'pages/fd-server/fetch.lua' then
    usk:use(ur.get('/server/fetch.lua/:id', function(req, res)
      local b = req.params.id
      b = split(b, '-_')
      local b2 = [[{']]
      for i=1, #b do
        b2 = i==#b and b2..b[i]..[[']] or b2..b[i]..[[', ']]
      end
      b2 = b2..[[}]]
      b2 = urld(b2)
      listsuj = listsuj..', '..b2
      res:finish('...')
      coroutine.wrap(function()
        local res, body = http.request("PATCH", url,
          {
            {"Content-Type", "application/json"},
            {"Authorization", 'Bearer '..token},
            {"Accept", 'application/vnd.github+json'},
            {"X-GitHub-Api-Version", '2022-11-28'},
            {"User-Agent", "myuseragent"}
          },
          '{"description":"NewUpdate","files":{"dbSuggest":{"content":"'..listsuj..'"}}}')
        print(res, body)
        reiniciar()
      end)()
    end))
  elseif files[i] == 'pages/fd-lib/list.lua' then
    --aaaaaaaaaaaaaaaaaaa
  else
    usk:use(ur.get('/'..limpaDir(files[i]), function(_, res)
      do
        local p = io.open(files[i], 'rb')
        local t = p:read('*a'); p:flush(); p:close()
        res:finish(t)
      end
    end))
  end
end

require('response-methods') --responde com 404

--cria a página 404 não encontrado
usk:use(function (_, res)
  res:status(404):finish([==[<html>
  <head>
    <title>Fantasminha</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, minimum-scale=1.0">
  </head>
  <body style="background: #DFDFFF;">
  <br><br>
  <p align="center"> <font face="sans-serif" color="010102" size="5"><b>Eita, neném!</b>
  <br>
  Você foi parar em uma página mágica que não tem nada...</font></p>
  </body>  
</html>
]==])
end)

--termina e hospeda
usk:listen(port)

print('http://localhost:'..port)

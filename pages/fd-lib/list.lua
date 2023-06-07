local window = require 'js'.global
local document = window.document

do
	local lingua = {
		['br'] = {
			'╰ Prioridades - XXX XXX ╯',
			'Pendentes',
			'Sugestões',
			'Arquivos',
			'<b>Pendentes</b>: Itens aprovados que serão aplicados na xxxx;',
			'<b>Sugestões</b>: Faça suas sugestão aqui. Se aprovada, será adicionada ao "Pendentes";',
			'<b>Arquivos</b>: Itens concluídos ou recusados.',
			'Hmm... Que isso?</b><br><div style="font-size: 14.5px;">Você pode utilizar este site para sugerir itens, reformas ou mudanças para a xxxx;<br>Para adicionar um item, clique no botão "Sugestões", selecione o <font color="#F9AA00"><b style="font-weight:900">+</b></font> e preencha o formulário;<br>As sugestões serão analisadas pelo xxxxxxxx para que ela seja adicionada à lista de "Prioridades Pendentes";<br>Posteriormente, a sugestão sairá do papel e será realizada <img src="https://cdn.discordapp.com/attachments/725881758192762891/1113853745315446937/icons8-happy-14.png"/> (p.s.: num sugira individualidades, só proponha o que é útil a todes);<br><br><i>Todas as sugestões enviadas aqui são anônimas. O site não armazena nenhuma informação de acesso.</i>',
			[==[local</font> feito <font color="#EE5077">=</font> <font color="#67CBD7">com</font> <a href="https://www.lua.org"><font color="#EEC755" face="Verdana">'Lua']==]
		},
		['en'] = {
			'╰ Priorities - XXX XXX ╯',
			'Pending',
			'Suggest',
			'Files',
			'<b>Pending</b>: Approved items that will be applied to the house;',
			'<b>Suggest</b>: Make your suggestion here. If approved, they will be added to "Pending";',
			'<b>Files</b>: Completed or declined items.',
			[[Hmm... What's this?</b><br><div style="font-size: 14.5px;">You can use this website to suggest items or changes for XXX;<br>To add an item, click on the "Suggest" button, select the <font color="#F9AA00"><b style="font-weight:900">+</b></font> symbol, and fill out the form;<br>The suggestions will be reviewed by the finance department to be added to the "Pending Priorities" list;<br>Later on, the suggestion will come to life and be implemented <img src="https://cdn.discordapp.com/attachments/725881758192762891/1113853745315446937/icons8-happy-14.png"/> (p.s.: don't suggest individualities, only propose what is useful to everyone);<br><br><i>All suggestions submitted here are anonymous. The website does not store any access information.</i>]],
			[==[local</font> made <font color="#EE5077">=</font> <font color="#67CBD7">with</font> <a href="https://www.lua.org"><font color="#EEC755" face="Verdana">'Lua']==]
		},
		['es'] = {
			'╰ Prioridades - XXX XXX ╯',
			'Pendiente',
			'Propor',
			'Archivos',
			'<b>Pendiente</b>: Elementos aprobados que se aplicarán a la xxxx;',
			'<b>Propor</b>: Haz tus sugerencias aquí. Si se aprueban, se agregarán a "Pendiente";',
			'<b>Archivos</b>: Elementos completados o rechazados.',
			[[Hmm... ¿Qué es esto?</b><br><div style="font-size: 14.5px;">Puedes usar este sitio web para sugerir elementos o cambios para XXX;<br>Para agregar un elemento, haz clic en el botón "Propor", selecciona el símbolo <font color="#F9AA00"><b style="font-weight:900">+</b></font> y completa el formulario;<br>Las sugerencias serán revisadas por el departamento de finanzas para agregarlas a la lista de "Prioridades Pendientes";<br>Más adelante, la sugerencia cobrará vida y se implementará <img src="https://cdn.discordapp.com/attachments/725881758192762891/1113853745315446937/icons8-happy-14.png"/> (p.d.: no sugieras individualidades, solo propón lo que sea útil para todos);<br><br><i>Todas las sugerencias enviadas aquí son anónimas. El sitio web no almacena ninguna información de acceso.</i>]],
			[==[local</font> hecho <font color="#EE5077">=</font> <font color="#67CBD7">con</font> <a href="https://www.lua.org"><font color="#EEC755" face="Verdana">'Lua']==]
		},
		['miau'] = {
			'╰ Miauuu - XXX Miau ╯',
			'Miau',
			'Miaumiau',
			'Miaurq',
			'<b>Miau</b>: Miaus miaumiau que serão miaumiau na miau;',
			'<b>Miaumiau</b>: Miau miau miau miaumiau aqui. Se miaumiau, será miau ao "Miau";',
			'<b>Miaurq</b>: Miaus miauídos ou miau.',
			'Hmmm... Miau isso?</b><br><div style="font-size: 14.5px;">Miau miau miau este miau para miaur miaus, miaus ou miauanças para a miau;<br>Miau miauar um miau, miau no miau "Miaumiau", miau o <font color="#F9AA00"><b style="font-weight:900">+</b></font> e miau o miauário;<br>Miau miaugestões serão miaulisadas pelo miau miau miau miau miau miau ao rawrr de "Miaumiau";<br>Miau, a miaugestão miaurá do miau e miau miaulizada <img src="https://cdn.discordapp.com/attachments/725881758192762891/1113853745315446937/icons8-happy-14.png"/> (p.s.: num miau miaunvidualidades, miau miauponha miau miau miau miau a gatinhos);<br><br><i>Miau as miaumiau miau miau são miaus. O miau não miaurzena nenhuma miauforção de miaucesso.</i>',
			[==[local</font> miauo <font color="#EE5077">=</font> <font color="#67CBD7">miau</font> <a href="https://www.lua.org"><font color="#EEC755" face="Verdana">'Lua']==]
		}
	}

	local mainBody = document:getElementById('lingua').innerHTML
	local br = mainBody:format(table.unpack(lingua['br']))
	local en = mainBody:format(table.unpack(lingua['en']))
	local es = mainBody:format(table.unpack(lingua['es']))
	local miau = mainBody:format(table.unpack(lingua['miau']))

	window.lbr = function()
		document:getElementById('lingua').innerHTML = br
	end

	window.lbr()

	window.len = function()
		document:getElementById('lingua').innerHTML = en
	end

	window.les = function()
		document:getElementById('lingua').innerHTML = es
	end

	window.lmiau = function()
		document:getElementById('lingua').innerHTML = miau
	end

	window.lbr()
end

local caracteres = {
	' <font color="#00FF00"><b>▧</b></font> ',
	' <font color="#FFFF00"><b>▧</b></font> ',
	' <font color="#FF0000"><b>▧</b></font> '
}

do
	do
		local novaLista = {}
		for i=1, #listaDeItens do
			if listaDeItens[i][5] == 3 then
				novaLista[#novaLista+1] = listaDeItens[i]
			end
		end
		for i=1, #listaDeItens do
			if listaDeItens[i][5] == 2 then
				novaLista[#novaLista+1] = listaDeItens[i]
			end
		end
		for i=1, #listaDeItens do
			if listaDeItens[i][5] == 1 then
				novaLista[#novaLista+1] = listaDeItens[i]
			end
		end
		listaDeItens = novaLista
	end

	local final = [==[<tr>
	  <td></td>
	  <td style="font-weight:bold;color: #FFFFFF !important; border-color: black !important;border-top:2px solid;border-bottom:2px solid;border-left:2px solid;border-right:2px solid;background-color: #262626 !important;">ITEM</td>
	  <td style="font-weight:bold;color: #FFFFFF !important; border-color: black !important;border-top:2px solid;border-bottom:2px solid;border-left:2px solid;border-right:2px solid;background-color: #262626 !important;">LOCAL</td>
	  <td style="font-weight:bold;color: #FFFFFF !important; border-color: black !important;border-top:2px solid;border-bottom:2px solid;border-left:2px solid;border-right:2px solid;background-color: #262626 !important;">DESC.</td>
	  <td style="font-weight:bold;color: #FFFFFF !important; border-color: black !important;border-top:2px solid;border-bottom:2px solid;border-left:2px solid;border-right:2px solid;background-color: #262626 !important;">R$</td>
	  <td></td>
	</tr>]==]

	for i=1, #listaDeItens do
		final = final..[==[<tr>
	  <td>]==]..i..caracteres[listaDeItens[i][5]]..[==[</td>
	  <td style="color: #000000 !important; border-color: black !important;border-top:2px solid;border-bottom:2px solid;border-left:2px solid;border-right:2px solid;background-color: transparent !important;font-size:14px">]==]..listaDeItens[i][1]..[==[</td>
	  <td style="color: #000000 !important; border-color: black !important;border-top:2px solid;border-bottom:2px solid;border-left:2px solid;border-right:2px solid;background-color: transparent !important;font-size:14px">]==]..listaDeItens[i][2]..[==[</td>
	  <td style="border-top:2px solid;border-left:2px solid;border-right:2px solid;border-bottom:2px solid;background-color: transparent !important;font-size:14px">]==]..listaDeItens[i][4]..[==[</td>
	  <td style="color: #000000 !important; border-color: black !important;border-top:2px solid;border-bottom:2px solid;border-left:2px solid;border-right:2px solid;background-color: #BBFFB8 !important;font-size:10px">]==]..listaDeItens[i][3]..[==[</td>
	  <td></td>
	</tr>]==]
	end

	window.visu = function()
		document:getElementById('listinha').innerHTML = final
		local xk = document:getElementById('blabla')
		if tostring(xk) ~= 'null' then
			xk:remove()
		end
	end
end

local p = {
	true, true, true
}

do
	local final = [==[<tr>
	  <td></td>
	  <td style="font-weight:bold;color: #FFFFFF !important; border-color: black !important;border-top:2px solid;border-bottom:2px solid;border-left:2px solid;border-right:2px solid;background-color: #262626 !important;">ITEM</td>
	  <td style="font-weight:bold;color: #FFFFFF !important; border-color: black !important;border-top:2px solid;border-bottom:2px solid;border-left:2px solid;border-right:2px solid;background-color: #262626 !important;">LOCAL</td>
	  <td style="font-weight:bold;color: #FFFFFF !important; border-color: black !important;border-top:2px solid;border-bottom:2px solid;border-left:2px solid;border-right:2px solid;background-color: #262626 !important;">DESC.</td>
	  <td></td>
	</tr>]==]

	for i=1, #listaSugerida do
		final = final..[==[<tr>
	  <td>]==]..i..[==[</td>
	  <td style="color: #000000 !important; border-color: black !important;border-top:2px solid;border-bottom:2px solid;border-left:2px solid;border-right:2px solid;background-color: transparent !important;font-size:14px">]==]..listaSugerida[i][1]..[==[</td>
	  <td style="color: #000000 !important; border-color: black !important;border-top:2px solid;border-bottom:2px solid;border-left:2px solid;border-right:2px solid;background-color: transparent !important;font-size:14px">]==]..listaSugerida[i][2]..[==[</td>
	  <td style="border-top:2px solid;border-left:2px solid;border-right:2px solid;border-bottom:2px solid;background-color: transparent !important;font-size:14px">]==]..listaSugerida[i][3]..[==[</td>
	  <td></td>
	</tr>]==]
	end
	local final2 = final..[==[
	<tr id="coisinha"><td colspan="5"><a onclick="sugerir()"><img src="https://cdn.discordapp.com/attachments/725881758192762891/1115348752945913897/symbol-lg.png" width="32"/></a></td></tr>
	]==]

	window.visuSuj = function()
		document:getElementById('listinha').innerHTML = final2
		local xk = document:getElementById('blabla')
		if tostring(xk) ~= 'null' then
			xk:remove()
		end
	end
	window.sugerir = function()
		p = {
			true, true, true
		}
		document:getElementById('listinha').innerHTML = final..[==[<tr><td>X</td>
	  <td style="color: #000000 !important; border-color: black !important;border-top:2px solid;border-bottom:2px solid;border-left:2px solid;border-right:2px solid;background-color: transparent !important;font-size:14px"><textarea id="dbitem" style="width: 100%; height: 35px;border: none;outline: none;resize: none;background:none;justify-content: center;line-height: 17.5px;text-align: center;" onclick="limpar1()" onfocus="limpar1()">clique para editar...</textarea></td>
	  <td style="color: #000000 !important; border-color: black !important;border-top:2px solid;border-bottom:2px solid;border-left:2px solid;border-right:2px solid;background-color: transparent !important;font-size:14px"><textarea id="dblocal" style="width: 100%; height: 35px;border: none;outline: none;resize: none;background:none;justify-content: center;line-height: 17.5px;text-align: center;" onclick="limpar2()" onfocus="limpar2()">clique para editar...</textarea></td>
	  <td style="border-top:2px solid;border-left:2px solid;border-right:2px solid;border-bottom:2px solid;background-color: transparent !important;font-size:14px"><textarea id="dbdesc" style="width: 100%; height: 35px;justify-content: center;border: none;outline: none;resize: none;text-align: center;line-height: 17.5px;background:none" onclick="limpar3()" onfocus="limpar3()">clique para editar...</textarea></td>
	  <td></td></tr><tr><td colspan="5"><a onclick="finalizar()"><img src="https://cdn.discordapp.com/attachments/725881758192762891/1115371755729596436/831523.png" width="32"/></a></td></tr>
	  ]==]
	  local xk = document:getElementById('coisinha')
	  if tostring(xk) ~= 'null' then
	  	xk:remove()
	  end
	end
	window.finalizar = function()
		if document:getElementById('dbitem').value:match("[%<%>%'%{%}%[%]%|%`%^%\\%/%:]") or document:getElementById('dblocal').value:match("[%<%>%'%{%}%[%]%|%`%^%\\%/%:]") or document:getElementById('dbdesc').value:match("[%<%>%'%{%}%[%]%|%`%^%\\%/%:]") or 
			document:getElementById('dbitem').value == '' or document:getElementById('dbitem').value == nil or document:getElementById('dbitem').value == ' ' or
			document:getElementById('dblocal').value == '' or document:getElementById('dblocal').value == nil or document:getElementById('dblocal').value == ' ' or
			document:getElementById('dbdesc').value == '' or document:getElementById('dbdesc').value == nil or document:getElementById('dbdesc').value == ' '
			then
			local temp = [==[<tr><td>X</td>
			  <td style="color: red; border-color: red !important;border-top:2px solid red !important;border-bottom:2px solid;border-left:2px solid;border-right:2px solid;background-color: transparent !important;font-size:14px"><textarea id="dbitem" style="width: 100%%; height: 35px;border: none;outline: none;resize: none;background:none;justify-content: center;line-height: 17.5px;text-align: center;" onclick="limpar1()" onfocus="limpar1()">%s</textarea></td>
			  <td style="color: red; border-color: red !important;border-top:2px solid red !important;border-bottom:2px solid;border-left:2px solid;border-right:2px solid;background-color: transparent !important;font-size:14px"><textarea id="dblocal" style="width: 100%%; height: 35px;border: none;outline: none;resize: none;background:none;justify-content: center;line-height: 17.5px;text-align: center;" onclick="limpar2()" onfocus="limpar2()">%s</textarea></td>
			  <td style="color: red;border-top:2px solid red !important;border-left:2px solid;border-right:2px solid;border-bottom:2px solid;background-color: transparent !important;font-size:14px"><textarea id="dbdesc" style="width: 100%%; height: 35px;justify-content: center;border: none;outline: none;resize: none;text-align: center;line-height: 17.5px;background:none" onclick="limpar3()" onfocus="limpar3()">%s</textarea></td>
			  <td></td></tr><tr><td colspan="5"><a onclick="finalizar()"><img src="https://cdn.discordapp.com/attachments/725881758192762891/1115371755729596436/831523.png" width="32"/></a><br><font color="red">Sua sugestão possui caracteres inválidos.</font></td></tr>
			  ]==]
			temp = temp:format(document:getElementById('dbitem').value, document:getElementById('dblocal').value, document:getElementById('dblocal').value)
			temp = final..temp
			document:getElementById('listinha').innerHTML = temp
		else
			window.saveList()
			listaSugerida[#listaSugerida+1] = {document:getElementById('dbitem').value, document:getElementById('dblocal').value, document:getElementById('dbdesc').value}
			final = [==[<tr>
			  <td></td>
			  <td style="font-weight:bold;color: #FFFFFF !important; border-color: black !important;border-top:2px solid;border-bottom:2px solid;border-left:2px solid;border-right:2px solid;background-color: #262626 !important;">ITEM</td>
			  <td style="font-weight:bold;color: #FFFFFF !important; border-color: black !important;border-top:2px solid;border-bottom:2px solid;border-left:2px solid;border-right:2px solid;background-color: #262626 !important;">LOCAL</td>
			  <td style="font-weight:bold;color: #FFFFFF !important; border-color: black !important;border-top:2px solid;border-bottom:2px solid;border-left:2px solid;border-right:2px solid;background-color: #262626 !important;">DESC.</td>
			  <td></td>
			</tr>]==]

			for i=1, #listaSugerida do
				final = final..[==[<tr>
			  <td>]==]..i..[==[</td>
			  <td style="color: #000000 !important; border-color: black !important;border-top:2px solid;border-bottom:2px solid;border-left:2px solid;border-right:2px solid;background-color: transparent !important;font-size:14px">]==]..listaSugerida[i][1]..[==[</td>
			  <td style="color: #000000 !important; border-color: black !important;border-top:2px solid;border-bottom:2px solid;border-left:2px solid;border-right:2px solid;background-color: transparent !important;font-size:14px">]==]..listaSugerida[i][2]..[==[</td>
			  <td style="border-top:2px solid;border-left:2px solid;border-right:2px solid;border-bottom:2px solid;background-color: transparent !important;font-size:14px">]==]..listaSugerida[i][3]..[==[</td>
			  <td></td>
			</tr>]==]
			end
			final2 = final..[==[
			<tr id="coisinha"><td colspan="5"><a onclick="sugerir()"><img src="https://cdn.discordapp.com/attachments/725881758192762891/1115348752945913897/symbol-lg.png" width="32"/></a></td></tr>
			]==]
			p = {
				true, true, true
			}
			document:getElementById('listinha').innerHTML = final2
		end
	end
	
	window.limpar1 = function()
		if p[1] then
			document:getElementById("dbitem").value = ''
			p[1] = false
		end
	end
	window.limpar2 = function()
		if p[2] then
			document:getElementById("dblocal").value = ''
			p[2] = false
		end
	end
	window.limpar3 = function()
		if p[3] then
			document:getElementById("dbdesc").value = ''
			p[3] = false
		end
	end
end


-- prioridades: 1 - mínima, 2 - média, 3 - máxima

local listaDeItens = {
	{'XXXX', 'xxxxx',	'~0', 'XXXXXXX?', 3},
}

local final = [==[<tr><th colspan="5"><font color="20BA65" style="font-size:24px"><b style="font-weight:700">Concluídas</b></font></th></tr><tr>
  <td></td>
  <td style="font-weight:bold;color: #FFFFFF !important; border-color: black !important;border-top:2px solid;border-bottom:2px solid;border-left:2px solid;border-right:2px solid;background-color: #262626 !important;">ITEM</td>
  <td style="font-weight:bold;color: #FFFFFF !important; border-color: black !important;border-top:2px solid;border-bottom:2px solid;border-left:2px solid;border-right:2px solid;background-color: #262626 !important;">LOCAL</td>
  <td style="font-weight:bold;color: #FFFFFF !important; border-color: black !important;border-top:2px solid;border-bottom:2px solid;border-left:2px solid;border-right:2px solid;background-color: #262626 !important;">DESC.</td>
  <td style="font-weight:bold;color: #FFFFFF !important; border-color: black !important;border-top:2px solid;border-bottom:2px solid;border-left:2px solid;border-right:2px solid;background-color: #262626 !important;">R$</td>
  <td></td>
</tr>]==]

for i=1, #listaDeItens do
	final = final..[==[<tr>
  <td>]==]..i..caracteres[listaDeItens[i][5]]..[==[</td>
  <td style="color: #000000 !important; border-color: black !important;border-top:2px solid;border-bottom:2px solid;border-left:2px solid;border-right:2px solid;background-color: transparent !important;font-size:14px"><s>]==]..listaDeItens[i][1]..[==[</td>
  <td style="color: #000000 !important; border-color: black !important;border-top:2px solid;border-bottom:2px solid;border-left:2px solid;border-right:2px solid;background-color: transparent !important;font-size:14px"><s>]==]..listaDeItens[i][2]..[==[</td>
  <td style="border-top:2px solid;border-left:2px solid;border-right:2px solid;border-bottom:2px solid;background-color: transparent !important;font-size:14px"><s>]==]..listaDeItens[i][4]..[==[</td>
  <td style="color: #000000 !important; border-color: black !important;border-top:2px solid;border-bottom:2px solid;border-left:2px solid;border-right:2px solid;background-color: #BBFFB8 !important;font-size:10px"><s>]==]..listaDeItens[i][3]..[==[</td>
  <td></td>
</tr>]==]
end

local listaDeItens = {
	{'nil', 'nil',	'nil', 'nil', 3},
}

local final = final..[==[<tr><th colspan="5"><font color="EB1D51" style="font-size:24px"><b style="font-weight:700">Recusadas</b></font></th></tr><tr>
  <td></td>
  <td style="font-weight:bold;color: #FFFFFF !important; border-color: black !important;border-top:2px solid;border-bottom:2px solid;border-left:2px solid;border-right:2px solid;background-color: #262626 !important;">ITEM</td>
  <td style="font-weight:bold;color: #FFFFFF !important; border-color: black !important;border-top:2px solid;border-bottom:2px solid;border-left:2px solid;border-right:2px solid;background-color: #262626 !important;">LOCAL</td>
  <td style="font-weight:bold;color: #FFFFFF !important; border-color: black !important;border-top:2px solid;border-bottom:2px solid;border-left:2px solid;border-right:2px solid;background-color: #262626 !important;">DESC.</td>
  <td style="font-weight:bold;color: #FFFFFF !important; border-color: black !important;border-top:2px solid;border-bottom:2px solid;border-left:2px solid;border-right:2px solid;background-color: #262626 !important;">R$</td>
  <td></td>
</tr>]==]

for i=1, #listaDeItens do
	final = final..[==[<tr>
  <td>]==]..i..caracteres[listaDeItens[i][5]]..[==[</td>
  <td style="color: #000000 !important; border-color: black !important;border-top:2px solid;border-bottom:2px solid;border-left:2px solid;border-right:2px solid;background-color: transparent !important;font-size:14px"><s>]==]..listaDeItens[i][1]..[==[</td>
  <td style="color: #000000 !important; border-color: black !important;border-top:2px solid;border-bottom:2px solid;border-left:2px solid;border-right:2px solid;background-color: transparent !important;font-size:14px"><s>]==]..listaDeItens[i][2]..[==[</td>
  <td style="border-top:2px solid;border-left:2px solid;border-right:2px solid;border-bottom:2px solid;background-color: transparent !important;font-size:14px"><s>]==]..listaDeItens[i][4]..[==[</td>
  <td style="color: #000000 !important; border-color: black !important;border-top:2px solid;border-bottom:2px solid;border-left:2px solid;border-right:2px solid;background-color: #BBFFB8 !important;font-size:10px"><s>]==]..listaDeItens[i][3]..[==[</td>
  <td></td>
</tr>]==]
end

window.visuEnd = function()
	document:getElementById('listinha').innerHTML = final
	local xk = document:getElementById('blabla')
	if tostring(xk) ~= 'null' then
		xk:remove()
	end
end
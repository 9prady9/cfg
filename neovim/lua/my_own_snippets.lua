local ls = require('luasnip')
local extras = require('luasnip.extras')

local snippet = ls.snippet
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node
local choice = ls.choice_node
local dynamicn = ls.dynamic_node
local rep = extras.rep

local function copy(args)
	return args[1]
end

ls.add_snippets("all", {
  ls.snippet("hro", {
    text('auto '), insert(1, 'RESULT'), text(' = '), insert(2, 'CALL'), text({';', ''}),
    text('if ('), rep(1), text({') {', ''}),
    text('\t'), insert(3, 'auto '), text('value = '), rep(1), text({'.Value();', ''}),
    text('\t'), insert(4, '//TODO'),
    text({'', '} else {', ''}),
    text('\t'), insert(0, '// ERROR'),
    text({'', '}'}),
  }),
  ls.snippet("todo", {
    text('// TODO(ENG-'), insert(1, 'XXXXX'), text('): '),
    insert(2, 'INFO'), insert(0), text({''}),
  }),
  ls.snippet("fxm", {
    text('// FIXME(ENG-'), insert(1, 'XXXXX'), text('): '),
    insert(2, 'INFO'), insert(0), text({''}),
  }),
})

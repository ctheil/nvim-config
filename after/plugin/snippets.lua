local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
keymap("i", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
keymap("s", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
keymap("i", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
keymap("s", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)

local ls = require("luasnip")
-- some shorthands...
local snip = ls.snippet
local node = ls.snippet_node
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node
local choice = ls.choice_node
local dynamicn = ls.dynamic_node

local date = function() return {os.date('%Y-%m-%d')} end

ls.add_snippets(nil, {
    all = {
        snip({
            trig = "date",
            namr = "Date",
            dscr = "Date in the form of YYYY-MM-DD",
        }, {
            func(date, {}),
        }),
        snip({trig="meta", namr="Metadata", dscr="..."}, {
            text({
                "---",
                "title: "}), insert(1, "note_title"), text({"",
            "author: "}), insert(2, "author")
        }),
        snip({trig="const", namr="Arrow Function", dscr="JS/TS Arrow Function"}, {
            text({"const "}), insert(1, "func_name"), text(" = ("), insert(2, "params"), text({") => {", ""}),
            insert(3, "body"),
            text(""),
            text({"}", ""})
        }),
        snip({trig="arr", namr="Anon Func", dscr="Anon arr function"}, {
            text("("), insert(1, "params"), text(") => "), insert(2, "body")
        }),
        snip({trig="type", namr="Types", dscr="Types object"}, {
            text({"Type "}), insert(1, "type_name"), text({" = {", ""}),
            insert(2, "type_key"), text(": "), insert(3, "type_value"), text({ "; ", "" }),
            text("};")
        }),
        snip({trig="kv", namr="Key Value Pair"}, {
            insert(1, "key"), text(": "), insert(2, "value")
        })
    },
})

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
        snip({trig="const", namr="Arrow Function", dscr="JS/TS Arrow Function"}, {
            text({"const "}), insert(1, "func_name"), text(" = ("), insert(2, "params"), text({") => {", ""}),
            insert(3, "body"), text({"", 
            "};"})
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
        }),
<<<<<<< HEAD
        snip({trig="component", namr="Typed React Component"}, {
            text({"Type "}), func(function(args) return args[1][1] end, {1}), text({ "Props = {", "" }),
            insert(4, "prop_key"), text(": "), insert(5, "prop_val"), text({ "",
        "};", ""}),
            text({"const "}), insert(1, "component_name"), text(" = ("), insert(2, "params"), text(": "), func(function(args) return args[1][1] end, {1}), text({"Props) => {", ""}),
            insert(3, "body"), text({"",
            "};"}),
            text({"",
            "export default "}), func(function(args) return args[1][1] end, {1}), text(";")
        }),
    },
})
-- ls.add_snippets("lua", {
--     all = {
--     },
-- })
=======
        snip({trig="controller", namr="Typed Express Controller", }, {
            text({"export const "}), insert(1, "func_name"), text(" = (req: Request, res: Response, next: NextFunction)"), text({" => {", ""}),
            insert(2, "body"),
            text(""),
            text({"}", ""})
        }),
    },
})

>>>>>>> 95b4da199702b6dd3a67ac7f452ac5b257925872

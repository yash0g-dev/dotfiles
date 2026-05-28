local ls = require("luasnip")

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {

    s("m", {
        t({
            "#include <iostream>",
            "using namespace std;",
            "",
            "int main() {",
            "    "
        }),
        i(1),
        t({
            "",
            "    return 0;",
            "}"
        }),
    }),

    s("for", {
        t("for(int "),
        i(1, "i"),
        t(" = 0; "),
        i(1),
        t(" < "),
        i(2, "n"),
        t("; "),
        i(1),
        t("++) {"),
        t({"", "    "}),
        i(3),
        t({"", "}"}),
    }),

}

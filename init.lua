local prefix = "packages.StrongKnights.pkg."
local StrongKnights = require (prefix .. "strongknights")

-- Load translation
require("packages.StrongKnights.i18n.en_US")
require("packages.StrongKnights.i18n.zh_CN")

return {
    StrongKnights
}
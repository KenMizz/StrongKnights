local extension = Package:new("strongknights")
extension.extensionName = "strongknights"

extension:loadSkillSkelsByPath ("./packages/strongknights/pkg/strongknights/skills")

Fk:loadTranslationTable {
    ["strongknights"] = "最强勇士"
}

local ken = General:new(extension, "ken", "qun", 3)
ken:addSkill("chuanyun")
Fk:loadTranslationTable {
    ["ken"] = "肯",
    ["#ken"] = "神射手",
    ["designer:ken"] = "Ken",
    ["cv:ken"] = "肯",
    ["illustrator:ken"] = "ChatGPT"
}

return extension
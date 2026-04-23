local extension = Package:new("strongknights")
extension.extensionName = "strongknights"

extension:loadSkillSkelsByPath ("./packages/StrongKnights/pkg/strongknights/skills")


local ken = General:new(extension, "ken", "qun", 3)
ken:addSkill("chuanyun")
Fk:loadTranslationTable {
    ["designer:ken"] = "肯",
    ["cv:ken"] = "肯",
    ["illustrator:ken"] = "ChatGPT"
}

return extension
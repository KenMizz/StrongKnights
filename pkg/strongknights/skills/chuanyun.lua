local chuanyun = fk.CreateSkill({
    name = "chuanyun"
})

Fk:loadTranslationTable {
    ["chuanyun"] = "穿云",
    [":chuanyun"] = "出牌阶段，黑色手牌可当万箭齐发使用",
    ["$chuanyun"] = "一支穿云箭，千军万马来向见！",
    ["#chuanyun"] = "黑色手牌可当万箭齐发使用"
}

chuanyun:addEffect("viewas", {
    prompt = "#chuanyun",
    anim_type = "defensive",
    pattern = "archery_attack",
    handly_pile = true,
    filter_pattern = {
        min_num = 1,
        max_num = 1,
        pattern = ".|.|black|^equip"
    },
    view_as = function(self, player, cards)
        if #cards ~=1 then return end
        local cloneCard = Fk:cloneCard("archery_attack")
        cloneCard.skillName = chuanyun.name
        return cloneCard
    end
})

return chuanyun
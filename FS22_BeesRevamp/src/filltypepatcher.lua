---
-- FillTypePatcher
--
-- This table will be used to update the filltype pricePerLiter for honey.
--
-- Copyright (c) Peppie84, 2023
--
FillTypePatcher = {
    REAL_PRICE_PERLITER = 13.15 -- €
}

---Patches the honey pricePerLiter with new base price
---@param fillTypeManager table (FillTypeManager)
function FillTypePatcher:patchBasePrice(fillTypeManager)
    local fillType = fillTypeManager:getFillTypeByName('HONEY')
    if fillType ~= nil then
        fillType.pricePerLiter = FillTypePatcher.REAL_PRICE_PERLITER
        g_brUtils:logInfo('FillType Honey patched!')
    end
end
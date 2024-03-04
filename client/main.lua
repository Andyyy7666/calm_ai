local scenarios = lib.load("data.scenarios")
local models = lib.load("data.models")
local relationships = lib.load("data.relationships")

CreateThread(function()
    for i=1, #relationships do
        SetRelationshipBetweenGroups(1, relationships[i], `PLAYER`)
    end
    for i=1, #scenarios do
        SetScenarioTypeEnabled(scenarios[i], false)
    end
    for i=1, 32 do
        EnableDispatchService(i, false)
    end
    for i=1, #models do
        local mdl = models[i]
        if IsModelAVehicle(mdl) then
            SetVehicleModelIsSuppressed(mdl, true)
        elseif IsModelAPed(mdl) then
            SetPedModelIsSuppressed(mdl, true)
        end
    end
end)

SetMaxWantedLevel(0)
SetCreateRandomCops(false)
SetCreateRandomCopsNotOnScenarios(false)
SetCreateRandomCopsOnScenarios(false)

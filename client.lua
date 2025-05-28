local isCooking = false

RegisterNetEvent('restaurace:zacnivarit')
AddEventHandler(function()
    if isCooking then return end

    isCooking = true
    ESX.TriggerSerrverCallback(funcion(muzeVarit)
      if muzeVarit then
        TaskStartScenarioInPlace(PlayerPedID(), "PROP_HUMAN_BBQ", 0, true)
        Citizen.Wait(5000)
        ClearPedTasksImmediately(PlayerPedID())
        TriggerServerEvent('restaurace:dokoncitvareni')
      else
        ESX.ShowNotification("~r~Nemáš dostatek ingrediencí!")
      end
      isCooking = false
    end, 'restaurace:zkontrolujIngredience')
end, 'restaurace:zacniVarit')

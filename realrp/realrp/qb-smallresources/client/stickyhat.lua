Citizen.CreateThread(function()
    while true do
    if PlayerPedId() ~= lastped then
        lastped = PlayerPedId()
        SetPedCanLosePropsOnDamage(PlayerPedId(), false, 0)
    end
    Wait(100)
end
end)

CreateThread(function()
	StartAudioScene('CHARACTER_CHANGE_IN_SKY_SCENE')
	SetAudioFlag("PoliceScannerDisabled", true)
end)
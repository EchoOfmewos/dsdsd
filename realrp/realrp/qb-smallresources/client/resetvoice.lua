RegisterCommand('resetvoice', function() --  chat command, You can change it to your liking.
    NetworkClearVoiceChannel()
    NetworkSessionVoiceLeave()
    Wait(50)
    NetworkSetVoiceActive(false)
    MumbleClearVoiceTarget(2)
    Wait(1000)
    MumbleSetVoiceTarget(2)
    NetworkSetVoiceActive(true)
    QBCore.Functions.Notify("Voicebox has now been reset", "success")
    
  end)
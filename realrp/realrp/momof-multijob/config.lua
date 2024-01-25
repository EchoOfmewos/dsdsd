Config = Config or {}

-- Emote that is used when the player opens the job menu.
Config.Emote = 'tablet'

-- Name of the job if the player has no job (Most likely do not need to change).
-- Needed to exclude job from list and to set their job to this when they quit an active job.
Config.UnemployedJobName = 'unemployed'

-- If you want a command to be able to open the job menu. If so you get to choose the command too. 
-- Default: /jobmenu
Config.UseCommand = true
Config.CommandName = 'jobs'

-- If you want to use a have key to open the menu enable 'UseKeyMapping' and put the key code for 'Key'.
Config.UseKeyMapping = false
Config.Key = 'F4'

-- This is to disable the option to toggle on and off duty in the UI.
Config.DisableOnDuty = false

-- This is if you want to call 'QBCore:Notify' to be called when the user does successfully quit/switch jobs or toggle duty.
Config.NotifyPlayerOnChanges = true
-- Variables:
-- {JobName} - The name of the job they just went on duty to, switched to, or quit.
-- This can be used for all strings except noJobsFound and headerTitle.
Config.LocaleStrings = {
  ['headerTitle'] = 'Job Selection',
  ['noJobsFound'] = 'No jobs found.',
  ['quitConfirm'] = 'Are you sure you want to quit your job at {JobName}?',
  ['onduty'] = 'You are now on duty',
  ['offduty'] = 'You are now off duty',
  ['jobSwitchOnDuty'] = 'You are now on duty at {JobName}',
  ['jobSwitchOffDuty'] = 'You are now off duty at {JobName}',
  ['quitJob'] = 'You no longer work at {JobName}',
}
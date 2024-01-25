Config = Config or {}

Config.UsingPsHousing = false
Config.UsingDefaultQBApartments = true
Config.OnlyShowOnDuty = false
Config.UseCQCMugshot = true

-- Front, Back Side. Use 4 for both sides, we recommend leaving at 1 for default.
Config.MugPhotos = 1

-- If set to true = Fine gets automatically removed from bank automatically charging the player.
-- If set to false = The fine gets sent as an Invoice to their phone and it us to the player to pay for it, can remain unpaid and ignored.
Config.BillVariation = false

-- If set to false (default) = The fine amount is just being removed from the player's bank account
-- If set to true = The fine amount is beeing added to the society account after being removed from the player's bank account
Config.QBManagementUse = false

-- Set up your inventory to automatically retrieve images when a weapon is registered at a weapon shop or self-registered.
-- If you're utilizing lj-inventory's latest version from GitHub, no further modifications are necessary. 
-- However, if you're using a different inventory system, please refer to the "Inventory Edit | Automatic Add Weapons with images" section in ps-mdt's README.
Config.InventoryForWeaponsImages = "ox_inventory"

-- "LegacyFuel", "lj-fuel", "ps-fuel"
Config.Fuel = "cdn-fuel"

-- Google Docs Link
Config.sopLink = {
    ['police'] = '',
    ['ambulance'] = '',
    ['bcso'] = '',
    ['doj'] = '',
    ['sast'] = '',
    ['sasp'] = '',
    ['doc'] = '',
    ['lssd'] = '',
    ['sapr'] = '',
}

-- Google Docs Link
Config.RosterLink = {
    ['police'] = '',
    ['ambulance'] = '',
    ['bcso'] = '',
    ['doj'] = '',
    ['sast'] = '',
    ['sasp'] = '',
    ['doc'] = '',
    ['lssd'] = '',
    ['sapr'] = '',	
}

Config.PoliceJobs = {
    ['police'] = true,
    ['lspd'] = true,
    ['bcso'] = true,
    ['sast'] = true,
    ['sasp'] = true,
    ['doc'] = true,
    ['lssd'] = true,
    ['sapr'] = true,
    ['pa'] = true
}

Config.AmbulanceJobs = {
    ['ambulance'] = true,
    ['doctor'] = true
}

Config.DojJobs = {
    ['lawyer'] = true,
    ['judge'] = true
}

-- This is a workaround solution because the qb-menu present in qb-policejob fills in an impound location and sends it to the event. 
-- If the impound locations are modified in qb-policejob, the changes must also be implemented here to ensure consistency.

Config.ImpoundLocations = {
    --[1] = vector4(436.68, -1007.42, 27.32, 180.0),
    --[2] = vector4(-436.14, 5982.63, 31.34, 136.0),
}

-- Support for Wraith ARS 2X. 

Config.UseWolfknightRadar = true
Config.WolfknightNotifyTime = 5000 -- How long the notification displays for in milliseconds (30000 = 30 seconds)
Config.PlateScanForDriversLicense = false -- If true, plate scanner will check if the owner of the scanned vehicle has a drivers license

-- IMPORTANT: To avoid making excessive database queries, modify this config to true 'CONFIG.use_sonorancad = true' setting in the configuration file located at 'wk_wars2x/config.lua'. 
-- Enabling this setting will limit plate checks to only those vehicles that have been used by a player.

Config.LogPerms = {
	['ambulance'] = {
		[4] = true,
	},
	['police'] = {
		[4] = true,
	},
    ['bcso'] = {
		[4] = true,
	},
    ['sast'] = {
		[4] = true,
	},
    ['sasp'] = {
		[4] = true,
	},
    ['sapr'] = {
		[4] = true,
	},
    ['doc'] = {
		[4] = true,
	},
    ['lssd'] = {
		[4] = true,
	},
}

Config.RemoveIncidentPerms = {
	['ambulance'] = {
		[4] = true,
	},
	['police'] = {
		[4] = true,
	},
    ['bcso'] = {
		[4] = true,
	},
    ['sast'] = {
		[4] = true,
	},
    ['sasp'] = {
		[4] = true,
	},
    ['sapr'] = {
		[4] = true,
	},
    ['doc'] = {
		[4] = true,
	},
    ['lssd'] = {
		[4] = true,
	},
}

Config.RemoveReportPerms = {
	['ambulance'] = {
		[4] = true,
	},
	['police'] = {
		[4] = true,
	},
    ['bcso'] = {
		[4] = true,
	},
    ['sast'] = {
		[4] = true,
	},
    ['sasp'] = {
		[4] = true,
	},
    ['sapr'] = {
		[4] = true,
	},
    ['doc'] = {
		[4] = true,
	},
    ['lssd'] = {
		[4] = true,
	},
}

Config.RemoveWeaponsPerms = {
	['ambulance'] = {
		[4] = true,
	},
	['police'] = {
		[4] = true,
	},
    ['bcso'] = {
		[4] = true,
	},
    ['sast'] = {
		[4] = true,
	},
    ['sasp'] = {
		[4] = true,
	},
    ['sapr'] = {
		[4] = true,
	},
    ['doc'] = {
		[4] = true,
	},
    ['lssd'] = {
		[4] = true,
	},
}

Config.PenalCodeTitles = {
    [1] = 'CRIMES AGAINST THE PERSON',
    [2] = 'CRIMES AGAINST PROPERTY AND CRIMINAL PROFITEERING',
    [3] = 'CRIMES AGAINST PUBLIC DECENCY',
    [4] = 'CRIMES AGAINST PUBLIC JUSTICE',
    [5] = 'CRIMES AGAINST PUBLIC PEACE',
    [6] = 'CRIMES AGAINST PUBLIC HEALTH AND SAFETY',
    [7] = 'CRIMES AGAINST STATE DEPENDENTS',
    [8] = 'CRIMES INVOLVING VEHICULAR OFFENSES',
    [9] = 'CRIMES INVOLVING THE CONTROL OF DEADLY WEAPONS AND EQUIPMENT',
    [10] = 'CRIMES INVOLVING ROAD LAW',
    [11] = 'CRIMES AGAINST STATE CODE VIOLATIONS',
    [12] = 'FISH AND GAME CODE',
}

Config.PenalCode = {
    [1] = {
        [1] = {title = 'Intimidation', Class = 'Misdemeanor', id = 'P.C. 1001', months = 10, fine = 150, color = 'orange', description = 'A person who communicates to another that they will physically harm or kill such other, placing such other in a reasonable state of fear for their own saftey, another persons close friends or relatives, and also can be transmitted through other media.'},
        [2] = {title = 'Assault', class = 'Misdemeanor', id = 'P.C. 1002', months = 15, fine = 300, color = 'orange', description = 'A person who intentionally puts another in the reasonable belief of imminent physical harm or offensive contact is guilty under this code section.'},
        [3] = {title = 'Assault with a Deadly Weapon', class = 'Felony', id = 'P.C. 1003', months = 20, fine = 950, color = 'red', description = 'occurs when an attacker accompanies a physical attack or attempted attack with a physical object capable of inflicting serious bodily injury or death by virtue of its design or construction'},
        [4] = {title = 'Battery', class = 'Misdemeanor', id = 'P.C. 1004', months = 15, fine = 100, color = 'orange', description = 'A person who uses intentional and unlawful force or violence to cause physical harm to another person.'},
        [5] = {title = 'Aggravated Battery', class = 'Misdemeanor', id = 'P.C. 1005', months = 25, fine = 300, color = 'orange', description = 'A person who uses great or continued force or violence against another person.'},
        [6] = {title = 'Involuntary Manslaughter', class = 'Felony', id = 'P.C. 1006', months = 20, fine = 200, color = 'red', description = 'The act of killing another human being unlawfully but unintentionally.'},
        [7] = {title = 'Vehicular Manslaughter', class = 'Felony', id = 'P.C. 1007', months = 35, fine = 200, color = 'red', description = 'An act that involves the death of a person other than the driver as a result of either criminally negligent or murderous operation of a motor vehicle'},
        [8] = {title = 'Attempted Murder of a Civilian', class = 'Felony', id = 'P.C. 1008', months = 50, fine = 200, color = 'red', description = 'A person who, by criminal accident, negligence, or in the heat of passion, causes severe or life threating bodily harm to another person'},
        [9] = {title = 'Attempted Murder of a LEO', class = 'Felony', id = 'P.C. 1008', months = 80, fine = 300, color = 'red', description = 'A person who, by criminal accident, negligence, or in the heat of passion, causes severe or life threating bodily harm to another person'},
        
        [10] = {title = 'Murder of a Civilian', class = 'Felony', id = 'P.C. 1009', months = 90, fine = 300, color = 'red', description = 'A person who unlawfully kills another with malic aforethought or who commits murder while engaging in a felony offense that has been proven to be a premeditated act'},
        [11] = {title = 'Murder of an LEO', class = 'Felony', id = 'P.C. 1009', months = 120, fine = 500, color = 'red', description = 'A person who unlawfully kills another with malic aforethought or who commits murder while engaging in a felony offense that has been proven to be a premeditated act'},
        [12] = {title = 'Unlawful Imprisonment', class = 'Misdemeanor', id = 'P.C. 1010', months = 10, fine = 400, color = 'green', description = 'The act of intentionally restraining another persons ability to move freely/The act of an Officer of the law placing someone in prison unlawfully'},
        [13] = {title = 'Attempted Kidnapping', class = 'Felony', id = 'P.C. 1011', months = 15, fine = 300, color = 'orange', description = 'The act of taking someone away by force or deception'},
        [14] = {title = 'Kidnapping', class = 'Felony', id = 'P.C. 1012', months = 70, fine = 300, color = 'orange', description = 'The act of purposefully or knowing having information that if carried out successfully, would be enough to result in the commission of the offense of Kidnapping'},
        [15] = {title = 'Criminal Threats', class = 'Misdemeanor', id = 'P.C. 1013', months = 10, fine = 100, color = 'orange', description = 'Occurs when a person threatens to kill or physically harm someone and that person is thereby placed in sustained fear for his/her safety or for the safety of his/her immediate family'},
        [16] = {title = 'Gang Related Shooting', class = 'Felony', id = 'P.C. 1014', months = 10, fine = 200, color = 'red', description = 'Insert Charge Description Here'},
        [17] = {title = 'Torture', class = 'Felony', id = 'P.C. 1015', months = 20, fine = 600, color = 'red', description = 'The action or practice of inflicting severe pain or suffering on someone as a punishment or in order to force them to do or say something'},
    },
    [2] = {
        [1] = {title = 'Arson', class = 'Felony', id = 'P.C. 2001', months = 20, fine = 500, color = 'orange', description = 'A person who intentionally and maliciously sets fire to or burns any structure, forest land, or property without prior authorization or a person who intentionally aids, counsels, or helps facilitate the burning of any said places.'},
        [2] = {title = 'Trespassing', class = 'Misdemeanor', id = 'P.C. 2002', months = 0, fine = 200, color = 'orange', description = 'A person who enters another property while it is closed or not in operation without the expressed or written permission to do so.'},
        [3] = {title = 'Trespassing within a Restricted Facility', class = 'Felony', id = 'P.C. 2003', months = 20, fine = 200, color = 'red', description = 'A person who, without proper authorization, enters any government owned or managed facility that is secured with the intent of keeping ordinary citizens outside, this does not apply to local facilities.'},
        [4] = {title = 'Burglary', class = 'Misdemeanor', id = 'P.C. 2004', months = 30, fine = 450, color = 'orange', description = 'A person who enters into the locked or restricted property of another without their permission with the intention of committing a crime.'},
        [5] = {title = 'Possession of Burglary tools', class = 'infraction', id = 'P.C. 2005', months = 0, fine = 700, color = 'green', description = 'A person who has in their possession the appropriate combination of tools necessary to commit burglary, such as lockpicks, advanced lockpicks, or other appropriate items.'}, 
        [6] = {title = 'Robbery', class = 'Felony', id = 'P.C. 2008', months = 25, fine = 400, color = 'red', description = 'A person who takes property from the possession of another against their will, by means of force or fear, such as through intimidation, assault or battery'},
        [7] = {title = 'Attempted Robbery', class = 'Felony', id = 'P.C. 2009', months = 20, fine = 200, color = 'red', description = 'Insert Charge Description Here'},
        [8] = {title = 'Armed Robbery', class = 'Felony', id = 'P.C. 2010', months = 30, fine = 300, color = 'orange', description = 'A person who takes property from the possession of another against their will, by means of force facilitated with a gun'},
        [9] = {title = 'Attempted Armed Robbery', class = 'Felony', id = 'P.C. 2011', months = 25, fine = 350, color = 'orange', description = 'Insert Charge Description Here'},
        [10] = {title = 'Pety Theft', class = 'Misdemeanor', id = 'P.C. 2012', months = 25, fine = 200, color = 'orange', description = 'A person who steals or takes the personal property of another worth $3,000 or less or a person who fails to pay a contract or invoice within a reasonable amount of time for services totaling less than $3,500 in value.'},
        [11] = {title = 'Theft', class = 'Misdemeanor', id = 'P.C. 2013', months = 30, fine = 200, color = 'orange', description = 'A person who steals or takes the property of another worth more than $1,500 but less than $10,000 or a person who fails to pay a contract or invoice within a reasonable amount of time for services totaling more than $3,500 but less than $20,000 in value.'},
        [12] = {title = 'Grand Theft', class = 'Felony', id = 'P.C. 2014', months = 35, fine = 400, color = 'red', description = 'A person who steals or takes the personal property of another worth more than $10,000 or a person who fails to pay a contract or invoice within a reasonable amount of time for services totaling more than $10,000 in value.'},
        [13] = {title = 'Grand Theft Auto', class = 'Felony', id = 'P.C. 2015', months = 35, fine = 300, color = 'red', description = 'A person who commits theft of any motor vehicle, no matter the value or a person who illegally enters any parked vehicles driver seat.'},
        [14] = {title = 'Grand Theft of A firearm', class = 'Felony', id = 'P.C. 2016', months = 20, fine = 400, color = 'red', description = 'A person who commits theft of any firearm, no matter the value or whether it is registered.'},
        [15] = {title = 'Receiving Stolen Property', class = 'Misdemeanor', id = 'P.C. 2016', months = 10, fine = 300, color = 'orange', description = 'A person who knowingly buys or receives any property that has been stolen or that has been obtaind in any manner constituting theft or extortion.'},
        [16] = {title = 'Extortion', class = 'Felony', id = 'P.C. 2017', months = 45, fine = 10000, color = 'red', description = 'A person who intimidates or influences another to provide or hand over properties or services or a person who utilizes or threatens their power or authority with demonstrated malice aforethough in order to compel action by another.'},
        [17] = {title = 'Forgery', class = 'Misdemeanor', id = 'P.C. 2018', months = 15, fine = 2000, color = 'orange', description = 'A person who knowingly alters, creates, or uses written document with the intent to defruad or deceive another or a person who knowingly signs a document or agreement, electronic, or otherwise without the consent or authority of whom they are signing for.'},
        [18] = {title = 'Fraud', class = 'Felony', id = 'P.C. 2019', months = 25, fine = 1000, color = 'red', description = 'A person who intentionally misrepresents a matter of fact - whether by words or by conduct, by false or misleading allegations, or by concealment of what should have been disclosed - that deceives and is intended to deceive another so that such other will act upon it to their disadvantage.'},
        [19] = {title = 'Vandalism', class = 'Misdemeanor', id = 'P.C. 2020', months = 10, fine = 700, color = 'orange', description = 'A person that defaces, damages, or destroys property which belongs to another.'},
        [20] = {title = 'Possession of Government-Issued Items', class = 'Misdemeanor', id = 'P.C. 2021', months = 15, fine = 1000, color = 'orange', description = 'A person whos in possession of any item issued to any government offical which can be anything from a combat pistol to handcuffs or tazers'},
    },
    [3] = {
        [1] = {title = 'Indecent Exposure', class = 'Misdemeanor', id = 'P.C. 3001', months = 10, fine = 3500, color = 'orange', description = 'A person who intentionally exposes their naked body or genitalia on public property or in the public area of a privately owned business or a person who intentionally exposes their naked body or genitals to another person without that persons consent.'},
        [2] = {title = 'Prostitution', class = 'Felony', id = 'P.C. 3002', months = 20, fine = 500, color = 'red', description = 'A person who knowingly engages in or offers to engage in a sexual act in exchange for payment or other goods and services.'},
        [3] = {title = 'Stalking', class = 'Felony', id = 'P.C. 3003', months = 30, fine = 400, color = 'red', description = 'A person who intentionally and maliciously follows or harasses another person who has made it known that they do not consent to such following or harassment.'},
        [4] = {title = 'Sexual Assault ', class = 'Misdemeanor', id = 'P.C. 3004', months = 50, fine = 1500, color = 'red', description = 'A person who commits verbal abuse for the purpose of sexual arousal, gratification, or abuse.'},
        [5] = {title = 'Sexual Battery', class = 'Felony', id = 'P.C. 3005', months = 100, fine = 3000, color = 'red', description = 'A person who commits unwanted touching or sexual contact.'},
    },
    [4] = {
        [1] = {title = 'Bribery', class = 'Felony', id = 'P.C. 4001', months = 30, fine = 400, color = 'red', description = 'A person who offers or gives a monetary gift, gratuity, valuable goods, or other rewards to a public offical, government employee, or peace officer in an attempt to influence their duties or actions.'},
       [2] = {title = 'Contempt of Court', class = 'Misdemeanor', id = 'P.C. 4002', months = 5, fine = 1000, color = 'orange', description = 'A person who willfully disobeys the verbal or written order of a court authority, disrespects the decorum of the court, or otherwise infringes upon due process.'}, 
       [3] = {title = 'Subpoena Violation', class = 'Misdemeanor', id = 'P.C. 4003', months = 15, fine = 500, color = 'orange', description = 'A person who ignores or violates a subpoena order issued by the courts or a person who ignores or violates a request by the courts to be present at a hearing.'},
       [4] = {title = 'Dissuading a Witness or Victim', class = 'Felony', id = 'P.C. 4004', months = 25, fine = 3000, color = 'red', description = 'A person who knowingly and malicously prevents or encourages any witness or victim from attending or giving testimony at any trial, proceeding, or inquiry authorized by law with the use of bribery, fear, or other tactics.'},
       [5] = {title = 'False Information To A Government Employee', class = 'Misdemeanor', id = 'P.C. 4005', months = 15, fine = 500, color = 'orange', description = 'A person who provides false information or details to a police officer during the course of a criminal investigation or lawful detainment or a person who provides inaccurate data to a government employee investigating in some offical capacity.'},
       [6] = {title = 'Filing a False Complaint', class = 'Misdemeanor', id = 'P.C. 4006', months = 5, fine = 700, color = 'orange', description = 'A person who knowingly files a false complaint, statement, document, or representaion with any organization regarding the conduct, job performance, or behavior of a public offical or employee for the purpose of initiating false administrative action against the offical.'},
       [7] = {title = 'Perjury', class = 'Felony', id = 'P.C. 4007', months = 15, fine = 5000, color = 'red', description = 'A person who knowingly provides false information while under oath in a court of law.'},
       [8] = {title = 'Failure to Identify to a Peace Officer', class = 'Misdemeanor', id = 'P.C. 4008', months = 15, fine = 700, color = 'orange', descripton = 'A person who, while being detained or under arrest by a peace officer, fails to provide a peace officer or other legal authority their name as it appears on an I.D. card or other identifiable information for MDT purposes.'},  
       [9] = {title = 'Impersonation of a Government Employee', class = 'Misdemeanor', id = 'P.C. 4009', months = 20, fine = 700, color = 'orange', description = 'A person who pretends or implies the role of a government worker, such as a peace officer, paramedic, tax collector, federal investigator, or other offical.'},
       [10] = {title = 'Obstruction of a Government Employee', class = 'Misdemeanor', id = 'P.C. 4010', months = 10, fine = 800, color = 'orange', description = 'A person who shows a clear and motivated attempt to prevent a government employee from conducting their duties or a person who fails to comply with an officers lawful orders.'},
       [11] = {title = 'Resisting a Peace Officer', class = 'Misdemeanor', id = 'P.C. 4011', months = 20, fine = 400, color = 'orange', description = 'A person who avoids apprehension from an officer by non-vehicular means or resists apprehension by any physical means.'},
       [12] = {title = 'Escape From Custody', class = 'Felony', id = 'P.C. 4012', months = 35, fine = 500, color = 'red', description = 'A person who has been physically detained by use of restraints or physical force by a peace officer and escapes from said peace officers personal custody, resulting in a warrant or BOLO being needed to apprehend the suspect **(Until a Warrant or BOLO is placed, this incident is classified as (4)11. Resisting a Peace Officer)**'},
       [13] = {title = 'Escape', class = 'Felony', id = 'P.C. 4013', months = 45, fine = 1000, color = 'red', description = 'Any person arrested, booked, charged, or convicted of any crime who thereafter escapes from a country or city jail, prison, community service, or custody of a correctional or parole officer.'},
       [14] = {title = 'Prisoner Breakout', class = 'Felony', id = 'P.C. 4014', months = 40, fine = 1000, color = 'red', description = 'A person who directly aids or assists an inmate with escaping from the law, including the lawful custody of a peace officer, prisoner transport, parole, community service, or incarceration in county jail or state prison or a person who provides information or insights that subsequntly assist an inmate with escpaing from the law.'},
       [15] = {title = 'Misuse of a Government Hotline', class = 'infraction', id = 'P.C. 4015', months = 0, fine = 4500, color = 'green', description = 'A person who uses an emergency government hotline for any purpose other than an emergency situation which involves a life-or-death request for assistance or other purposes dictated by the hotline managers or a person who performs prank calls, fake calls, or tries to incite mayhem through public government lines.'},
       [16] = {title = 'Tampering with Evidence', class = 'Felony', id = 'P.C. 4016', months = 30, fine = 500, color = 'red', description = 'A person who destroys or attempts to destroy, conceal, or alter any evidence that can later potentially be used in a criminal investigation or court proceeding.'},
       [17] = {title = 'Corruption of Public Duty', class = 'Felony', id = 'P.C. 4017', months = 40, fine = 600, color = 'red', description = 'A government employee who acts outside the interests of the public good or public justice or a government employee who demonstrates criminal negligence in their duties or a government employee convicted by the DOJ for committing a felony while on duty.'},
       [18] = {title = 'Corruption of Public Office', class = 'Felony', id = 'P.C. 4018', months = 40, fine = 19000, color = 'red', description = 'A person who acts outside the interests of the public good, public justice, or duties of those in public office.'},
       [19] = {title = 'Aiding and Abetting', class = 'Misdemeanor', id = 'P.C. 4019', months = 15, fine = 300, color = 'orange', description = 'A person who knowingly and willingly helps another person who had successfully committed a criminal act shall receive HALF the punishment issued to the person who committed the criminal act.'},
       [20] = {title = 'Harboring a Fugitive', class = 'Misdemeanor', id = 'P.C. 4020', months = 10, fine = 350, color = 'orange', description = 'A person who knowingly hides a target of a federal investigation or wanted criminal from the authorities.'},
    },
    [5] = {
        [1] = {title = 'Disturbing the Peace', class = 'Misdemeanor', id = 'P.C. 5001', months = 10, fine = 0, color = 'orange', description = 'A person who creates a dangerous or intimidating situation in a public place or in the public area of private property or a person whose profanity, language, voice, or noise reasonably disturbs nearby civillians or intends to incite violence.'},
       [2] = {title = 'Unlawful Assembly', class = 'Misdemeanor', id = 'P.C. 5002', months = 10, fine = 0, color = 'orange', description = 'A person without proper permits or authorization, who refuses to leave public property or clear a street or passageway after being ordered to do so by a peace officer or other government offical.'},
        [3] = {title = 'Incitement to Riot', class = 'Felony', id = 'P.C. 5003', months = 40, fine = 2500, color = 'red', description = 'A person whose actions deliberately agitates or intends to agitate a crowd or large group of people organized or located peacefully in a public or private area in order to promote acts of violence or civil unrest.'},
        [4] = {title = 'Vigilantism', class = 'Felony', id = 'P.C. 5004', months = 50, fine = 1500, color = 'red', description = 'A person who attempts to effect justice according to their own understanding of right and wrong, or an unauthorized person attempts to enforce the law. A citizens arrest may only be affected when a civilian, out of fear for their own safety or the safety of their close friends or relatives, subdues or detains another who is violating the law.'},
        [5] = {title = 'Disorderly Conduct', class = 'Misdemeanor', id = 'P.C. 5005', months = 15, fine = 600, color = 'Orange', description = 'A person who refuses to leave the scene of a crime or other area after being ordered to so whose presence could hinder police operations. A group that fails to protest or demonstrate peacefully in a designated “free speech zone” or without proper permits or authorization from the city. A person who refuses to leave private property they were invited to access after being instructed to do so by the property owner or manager. '},
    },
    [6] = {
        [1] = {title = 'Possession of a Controlled Substance', class = 'Misdemeanor', id = '6001', months = 15, fine = 200, color = 'orange', description = 'A person who possesses any controlled substance, except when the substance has been lawfully prescribed to them by a licensed practitioner of medicine or is legally available without prescription.'},
        [2] = {title = 'Possession of a Controlled Substance wth Intent to Sell', class = 'Felony', id = 'P.C. 6002', months = 20, fine = 200, color = 'red', description = 'A person who possesses any controlled substance or multiple controlled substances in an amount of over one ounce (28 grams). '},
        [3] = {title = 'Possession of Drug Paraphernalia', class = 'Infraction', id = 'P.C. 6003', months = 20, fine = 200, color = 'green', description = 'A person who willingly possesses a devince or mechanism used exclusivly for the processing or consumption of an illegal controlled substance.'},
        [4] = {title = 'Maintaining a Place for the Purpose of Distribution', class = 'Misdemeanor', id = 'P.C. 6004', months = 15, fine = 200, color = 'orange', description = 'A person who opens or maintains any property for the purpose of unlawfully selling, giving away, storing, or using any controlled substance, firearm, or other illicit device, good, or service.'},
        [5] = {title = 'Sale of a Controlled Substance', class = 'Felony', id = 'P.C. 6005', months = 35, fine = 300, color = 'red', description = 'A person who sells, or offers to sell, a controlled substancce to another person, regardless of whether or not they possess that controlled substance.'},
        [6] = {title = 'Public Intoxication', class = 'Misdemeanor', id = 'P.C. 6006', months = 5, fine = 700, color = 'orange', description = 'A person who is found in any public place under the influence of intoxicating liquor or a person who is in a condition that they are unable to exercise care for their own saftey or the saftey of others.'},
        [7] = {title = 'Facial Obstruction While Committing a Crime', class = 'Misdemeanor', id = 'P.C. 6007', months = 5, fine = 800, color = 'orange', description = 'A person who wears any mask, hood, or facial obstruction to conceal their identiy in any public place that refuses to remove the obstruction upon order of a peace officer. This does not apply to individuals wearing traditional holiday costumes, or individuals wearing protective facial equipment for professional trades or employment.'},
        [8] = {title = 'Possession of an Open Container', class = 'Infraction', id = 'P.C. 6008', months = 0, fine = 500, color = 'green', description = 'A person who possesses a visible and open container of alcohol in a public place or in a motor vehicle.'},
        [9] = {title = 'Manufacture of a Controlled Substance', class = 'Felony', id = 'P.C. 6009', months = 35, fine = 800, color = 'Orange', description = 'A person who, except as otherwise provided by law, manufactures, compounds, converts, produces, or prepares, either directly or indirectly by chemical or natural extraction, any illegal substance.'},
        [10] = {title = 'Terrorism', class = 'Felony', id = 'P.C. 6010', months = 300, fine = 3000, color = 'Terrorism', description = 'A person who uses systematic threats or actions against the public good to cause fear and intimidation at a grand scale. A person who commits an attack or threatens an attack on a major public or private facility, such as an office complex, stadium, public transportation system, bridge, or other such structure. This charge can only be issued at the order of the Governor, Attorney General or Chief Justice.'},
        [11] = {title = 'Litterning', class = 'Infraction', id = 'P.C. 6011', months = 0, fine = 150, color = 'Green', description = 'A person who unlawfully disposes of any item or material on the ground without placing it in a proper waste receptacle.'},
    },
    [7] = {
        [1] = {title = 'Animal Abuse/Cruelty', class = 'Felony', id = 'P.C. 7001', months = 15, fine = 1000, color = 'red', description = 'A person who intentionally maims, mutilates, tortures, wounds, or kills a living animal or a person whose neglect maims, mutilates, tortures, wounds, or kills a living animal.'},
       [2] = {title = 'Child Abuse', class = 'Felony', id = 'P.C. 7002', months = 30, fine = 5000, color = 'red', description = 'A person who willfully inflicts any cruel, excessive, or inhuman corporal punishment upon a child under 18 years of age or a person who causes traumatic injury to a child under 18 years of age due to their negligence.'},
       [3] = {title = 'Sale of Alcohol to a Minor', class = 'Misdemeanor', id = 'P.C. 7003', months = 20, fine = 1000, color = 'orange', description = 'A person who willfully and knowingly sells alcohol to a minor under the age of 21.'},
       [4] = {title = 'Minor Alcohol Violation', class = 'Infraction', id = 'P.C. 7004', months = 10, fine = 900, color = 'green', description = 'A minor under the age of 21 who is in possesstion of alcohol for consumption, products for consumption containing alcohol, or appears to be under the influence of alcohol.'},
    },
    [8] = {
        [1] = {title = 'Driving with a Suspended/Revoked License', class = 'Misdemeanor', id = 'P.C. 8001', months = 5, fine = 200, color = 'orange', description = 'A person who drives a vehicle, whether on land, sea, or in air, while having a suspended license or authorization.'},
       [2] = {title = 'Evading a Peace officer', class = 'Felony', id = 'P.C. 8002', months = 35, fine = 950, color = 'red', description = 'A person who, while operating a vehicle on land, sea, or in air, or while operating bicycle, willfully flees or otherwise attempts to elude or avoid a pursuing peace officer who communicates visually (Lights) or audibly (Sirens) their requests to pull over or stop.'},
       [3] = {title = 'Flying without a Pilots License', class = 'Misdemeanor', id = 'P.C. 8003', months = 10, fine = 800, color = 'orange', description = 'A person operating an aircraft without proper license or authorization.'},
       [4] = {title = 'Hit and Run', class = 'Felony', id = 'P.C. 8004', months = 35, fine = 900, color = 'red', description = 'A person who hits another person or occupied and leaves the scene of the accident.'},
       [5] = {title = 'Reckless operation of an Aircraft', class = 'Misdemeanor', id = 'P.C. 8005', months = 0, fine = 1000, color = 'orange', description = 'A person who demonstrates careless or general disregard for the safety of themselves or others while operating an aircraft.'},
       [6] = {title = 'Aerial Evasion', class = 'Felony', id = 'P.C. 8006', months = 40, fine = 1500, color = 'orange', description = 'A person who, while operating an aircraft, willfully flees or otherwise attempts to elude pursuing law enforcement who is broadcasting their request to land or halt.'},
       [7] = {title = 'Reckless Operation Of An Off-Road Or Naval Vehicle', class = 'Misdemeanor', id = 'P.C. 8007', months = 10, fine = 3000, color = 'Orange', description = 'A person who demonstrates careless or general disregard for the safety of themselves or others while operating a naval vehicle or vehicle intended for off-road travel.'},
       [8] = {title = 'Failure to Adhere to Flight Protocols', class = 'Felony', id = 'P.C. 8008', months = 100, fine = 5000, color = 'Orange', description = 'A person who fails to follow the flight protocols as detailed in the State Aviation Act.'},
    },
    [9] = {
        [1] = {title = 'Possession of an Illegal Blade', class = 'Misdemeanor', id = 'P.C. 9001', months = 15, fine = 200, color = 'orange', description = 'A civillian who possess a blade or improvides blade over three inches in length (for improvides blade, 6 for normal blade) that can be used as a cutting, slashing, or stabbing weapon, whether or not concealed.'},
       [2] = {title = 'Possession of an Unlicensed Firearm', class = 'Misdemeanor', id = 'P.C. 9002', months = 25, fine = 300, color = 'orange', description = 'A civilian who carries a legal, but unlicensed weapon on their person, in their vehicle, place of business, or other facility without proper permits (read Time and Fine doc for more info).'},
       [3] = {title = 'Possession of an Illegal Firearm', class = 'Felony', id = 'P.C. 9003', months = 20, fine = 400, color = 'red', description = 'A civilian who possesses any firearm that is illegal in possession or not considered part of any legal weapon type or a person who is in possession of a firearm that contains any illegal modifications in its design like silencers or bullet modifications.'},
       [4] = {title = 'Possession of an Assualt Weapon', class = 'Felony', id = 'P.C. 9004', months = 25, fine = 500, color = 'red', description = 'A civilian who possesses an illegal firearm which uses high-velocity, high-caliber, or specialized ammunition including, but not limited to, FMJ ammunition, or HEIAP bullets.'},
       [5] = {title = 'Unlicensed Sale of A Firearm', class = 'Felony', id = 'P.C. 9005', months = 30, fine = 400, color = 'red', description = 'A person who illegally sells a firearm or improvised weapon of any type without proper permits or authorization.'},
       [6] = {title = 'Possession of an Explosive Device', class = 'Felony', id = 'P.C. 9006', months = 70, fine = 600, color = 'red', description = 'A civilian who possesses any manufactured or improvised device or equipment which is made from explosive and/or highly flammable liquid, gas, or solid materials.'},
       [7] = {title = 'Possession of Explosive Devices with Intent to Sell', class = 'Felony', id = 'P.C. 9007', months = 75, fine = 2000, color = 'red', description = 'A person who is in possession of more than 3 explosive devices or explosive device materials in any combination with the intent to distribute, deliver, or sell.'},
       [8] = {title = 'Possession of Weaponry with intent to sell', class = 'Felony', id = 'P.C. 9008', months = 35, fine = 400, color = 'red', description = 'A person who is in possession of more than 5 full weapons or weapon components in any combination or amount with intent to distribute, deliver, or sell.'},
       [9] = {title = 'Brandishing a Firearm', class = 'Misdemeanor', id = 'P.C. 9009', months = 15, fine = 400, color = 'orange', description = 'A person who is pointing, holding, openly carrying, or brandishing a firearm, air or gas operated weapon, or object that appears like a firearm without proper toy and prop identification in an attempt to elicit fear or hysteria.'},
       [10] = {title = 'Weapons Discharge Violation', class = 'Misdemeanor', id = 'P.C. 9010', months = 20, fine = 300, color = 'orange', description = 'A person who fires a firearm without due cause or justifiable motive regardless of registration status or legality.'},
       [11] = {title = 'Drive by Shooting', class = 'Felony', id = 'P.C. 9011', months = 65, fine = 400, color = 'red', description = 'A person who drives a vehicle, whether on land, sea, or in air, and has a passenger who they knowingly and willingly let discharge a firearm from within the vehicle and the passenger is not an on duty peace officer or a person who exits a vehicle only to immediatly discharge a firearm.'},
       [12] = {title = 'CCW / PF Violation', class = 'Misdemeanor', id = 'P.C. 9012', months = 10, fine = 10000, color = 'orange', description = 'A person who carries concealed a legal, registerd firearm that is not authorized as a conceal-carry weapon.'},
    },   
    [10] = {
        [1] = {title = 'Class A Speed Violation', class = 'Infraction', id = 'P.C. 11001', months = 0, fine = 250, color = 'Green', description = 'A Driver who is operating their motor vehicle 5 miles per hour in excess of marked speed limits.'},
        [2] = {title = 'Class B Speed Violation', class = 'Infraction', id = 'P.C. 11001', months = 0, fine = 500, color = 'Green', description = 'A Driver who is operating their motor vehicle 15 miles per hour in excess of marked speed limits.'},
        [3] = {title = 'Class C Speed Violation', class = 'Infraction', id = 'P.C. 11001', months = 0, fine = 600, color = 'Orange', description = 'A Driver who is operating their motor vehicle 20 miles per hour in excess of marked speed limits.'},
        [4] = {title = 'Class D Speed Violation', class = 'Infraction', id = 'P.C. 11001', months = 0, fine = 500, color = 'Green', description = 'A driver who fails to show a use of fair judgment in their speed when driving in poor conditions, such as poor weather, or on unpaved, slick, or damaged roads.'},
        [5] = {title = 'Failure To Abide To A Traffic Control Device', class = 'Infraction', id = 'P.C. 11002', months = 0, fine = 300, color = 'Green', description = 'A driver who fails to abide by electronic devices and physical signs meant to control traffic.'},
        [6] = {title = 'Class A Yield Violation', class = 'Infraction', id = 'P.C. 11003', months = 0, fine = 250, color = 'Green', description = 'A person driving a vehicle that fails to yield, giving right of way, at an intersection that has other vehicles passing or waiting to turn.'},
        [7] = {title = 'Class B Yield Violation', class = 'Infraction', id = 'P.C. 11003', months = 0, fine = 500, color = 'Green', description = 'A Driver who fails to yield to an Emergency Vehicle or to the orders of a Law Enforcement Officer'},
        [8] = {title = 'Parking Violation', class = 'Infraction', id = 'P.C. 11004', months = 0, fine = 100, color = 'Green', description = 'A vehicle that is parked obstructing traffic, an alley, a parking lot, a crosswalk, a sidewalk, facing opposing traffic, a highway, on railroad tracks, or in an area marked for emergency vehicles.'},
        [9] = {title = 'Reckless Driving', class = 'Misdemeanor', id = 'P.C. 11005', months = 5, fine = 400, color = 'Green', description = 'A person who demonstrates careless or general disregard for the safety of themselves or others while operating a vehicle, such as but not limited to Driving on a unpopulated sidewalk, pedestrian passageway, or plaza Meandering between lanes of traffic erratically. Demonstrating poor control of the vehicle or driving decisions.'},
        [10] = {title = 'Vehicular Endangerment', class = 'Misdemeanor', id = 'P.C. 11006', months = 10, fine = 1000, color = 'Orange', description = 'A person who demonstrates extreme carelessness while operating a vehicle, such as by nearly striking pedestrians, entering pedestrian passageways or nearly causing the severe harm of other motorists.'},
        [11] = {title = 'Vehicular Noise Violation', class = 'Infraction', id = 'P.C. 11007', months = 0, fine = 300, color = 'Green', description = 'A driver whose vehicle emits excessive noise, creating a public nuisance. Examples include modifications to increase the noise pollution of their vehicle, or the excessive use of a vehicle horn or siren without justifiable purpose.'},
        [12] = {title = 'Impeding Traffic', class = 'Infraction', id = 'P.C. 11008', months = 0, fine = 500, color = 'Green', description = 'A person who is either operating a vehicle or has parked their vehicle in a manner that obstructs or interferes with the normal flow of traffic.'},
        [13] = {title = 'Illegal usage of Hydraulics', class = 'Infraction', id = 'P.C. 11009', months = 0, fine = 250, color = 'Green', description = 'A Driver who is operating their motor vehicle 5 miles per hour in excess of marked speed limits.'},
        [14] = {title = 'Driving Under the Influence (DUI)', class = 'Misdemeanor', id = 'P.C. 11010', months = 20, fine = 1000, color = 'Orange', description = 'A person who drives a vehicle or operates heavy machinery while under the influence of alcohol at or above the legal limit of 0.08 percent BAC'},
        [15] = {title = 'Registration Violation', class = 'Infraction', id = 'P.C. 11011', months = 0, fine = 300, color = 'Green', description = 'A person driving a vehicle on a state, county, or local road without an official owners registration or lease registration on file or in hand, or without a license plate affixed to the rear of the vehicle.'},
        [16] = {title = 'Unsafe Usage of a Bicycle', class = 'Infraction', id = 'P.C. 11012', months = 0, fine = 250, color = 'Green', description = 'A persons unsafe usage of a bicycle or other non-motor vehicle that obstructs traffic, incites disorder, creates a hazard, or demonstrates the potential for harm.'},
        [17] = {title = 'Street Racing', class = 'Misdemanor', id = 'P.C. 11013', months = 15, fine = 1000, color = 'Green', description = 'A “race” or “competition” is any event that reasonably should not be taking place on a road. A hydraulics competition, for example, or a race around the dockyards both apply under street racing.'},
        [18] = {title = 'Driving without a Valid License', class = 'Infraction', id = 'P.C. 11014', months = 10, fine = 500, color = 'Green', description = 'A person operating a motor vehicle without carrying a valid drivers license. A person who refuses to show or provide a drivers license to a peace officer while operating a motor vehicle. A person operating a motor vehicle without a valid, unexpired permit or license.'},
        [19] = {title = 'Jaywalking', class = 'Infraction', id = 'P.C. 11015', months = 0, fine = 250, color = 'Green', description = 'A person who recklessly or intentionally crosses a road in a manner that creates a foreseeable risk of obstructing the flow of traffic, or otherwise creates a hazard to themselves and others.'},
        [20] = {title = 'Illegal Parking of an Aircraft', class = 'Infraction', id = 'P.C. 11016', months = 0, fine = 250, color = 'Green', description = 'A person who fails to follow the flight protocols as detailed in the State Aviation Act.'},
        [21] = {title = 'Operation of an Unroadworthy Vehicle', class = 'Infraction', id = 'P.C. 11017', months = 0, fine = 300, color = 'Green', description = 'A person who is operating a vehicle that is not in a condition safe for use on the road.'},
        [22] = {title = 'Insurance Violation', class = 'Infraction', id = 'P.C. 11018', months = 0, fine = 300, color = 'Green', description = 'A person who is operating a vehicle that is not in a condition safe for use on the road.'},
        [23] = {title = 'Improper Lane Usage', class = 'Infraction', id = 'P.C. 11019', months = 0, fine = 500, color = 'Green', description = 'A person who is operating a vehicle outside of the designated lanes for travel. A person who is operating a vehicle and failing to maintain presence in a single lane. A person who uses an incorrect lane to turn or make a u-turn.'},
    },
    [11] = {
        [1] = {title = 'Racketeering', class = 'Felony', id = 'P.C. 13001', months = 70, fine = 1600, color = 'Red', description = 'The affiliation or association of an individual with a criminal organization, as prescribed by local or national law enforcement entities, with the evidence of the individuals attempt to commit extortion, bribery, murder, or other criminal activities while affiliated with said criminal organization.'},
        [2] = {title = 'Tax Evasion', class = 'Felony', id = 'P.C. 13002', months = 50, fine = 750, color = 'Red', description = 'A person, officer, or employee of an organization that fails to pay any appropriate fees or taxes liened against themselves or an agency they are an executive to. A person who intentionally avoids or attempts to avoid tax or fee payments to the state.'},
        [3] = {title = 'Legal Practice Violation', class = 'Misdemeanor', id = 'P.C. 13003', months = 20, fine = 800, color = 'Orange', description = 'A person who advertises or portrays themselves as practicing or as being entitled to practice law without being an active member of the San Andreas State Bar.'},
        [4] = {title = 'Construction And Maintenance Code Violation', class = 'Misdemeanor', id = 'P.C. 13004', months = 5, fine = 500, color = 'Green', description = 'A person who enters a clearly designated construction or facility maintenance site without the authority or purpose to be there.'},
        [5] = {title = 'Criminal Fire Code Violation', class = 'Misdemeanor', id = 'P.C. 13005', months = 15, fine = 500, color = 'A facility manager or property owner who, through willful ignorance, criminal negligence, or intentional ignorance of a fire marshal violates a provision of the Fire Code and fails to amend that violation in a timely manner. A person who disrupts, removes, defaces, or affects any official postings or notices issued by a fire marshal. A person who uses devices like fireworks or small incendiary devices unsupervised and/ or unpermitted in a public or private setting. '},
        [6] = {title = 'Criminal Business Operations', class = 'Misdemeanor', id = 'P.C. 13006', months = 50, fine = 1000, color = 'Orange', description = 'Any person who willfully fails to pay a fine issued and notified by the Bureau of Licensing within seven days without a lawful excuse, even if the fine is paid in full after that time is guilty of a misdemeanor. Those convicted under this section shall be punished by imprisonment and the appropriation of all due fines. This charge is issued in lieu of PC0402. Failure To Pay A Fine when the fine is related to the Bureau of Licensing and exceeds the seven day payment period. '},
    },
    [12] = {
        [1] = {title = 'Hunting without a License', class = 'Misdemeanor', id = 'P.C. 12001', months = 30, fine = 1000, color = 'orange', description = 'The San Andreas Penal Code defines Hunting without a License as the act of hunting game or fishing without a license. Hunting may refer to attempting to, or successfully, capturing, trapping, or killing fish or game.'},
        [2] = {title = 'Hunting in a Restricted Area (Revoke License Charge)', class = 'Misdemeanor', id = 'P.C. 12002', months = 10, fine = 1000, color = 'orange', description = 'The San Andreas Penal Code defines Hunting in a Restricted Area as the act of hunting game or fishing while outside of a designated hunting area. Hunting may refer to attempting to, or successfully, capturing, trapping, or killing fish or game.'},
        [3] = {title = 'Cruel Hunting (Revoke License Charge)', class = 'Felony', id = 'P.C. 12003', months = 35, fine = 1000, color = 'red', description = 'Cruel hunting is defined as subjecting an animal to an unnecessary amount of pain while attempting to capture or kill them. This includes shooting sea life, using explosives, or torturing an animal before dispatching it.'},
        [4] = {title = 'Poaching (Revoke License Charge)', class = 'Felony', id = 'P.C. 12004', months = 30, fine = 1500, color = 'red', description = 'Poaching is defined as either illegally killing a protected species or overhunting and exceeding a hunting limit.(20 SKINS/20 MEAT MAX ON PERSON/VEHICLE) Protected Species: Cayote/MT Lion'},
    }
}

Config.AllowedJobs = {}
for index, value in pairs(Config.PoliceJobs) do
    Config.AllowedJobs[index] = value
end
for index, value in pairs(Config.AmbulanceJobs) do
    Config.AllowedJobs[index] = value
end
for index, value in pairs(Config.DojJobs) do
    Config.AllowedJobs[index] = value
end

Config.ColorNames = {
    [0] = "Metallic Black",
    [1] = "Metallic Graphite Black",
    [2] = "Metallic Black Steel",
    [3] = "Metallic Dark Silver",
    [4] = "Metallic Silver",
    [5] = "Metallic Blue Silver",
    [6] = "Metallic Steel Gray",
    [7] = "Metallic Shadow Silver",
    [8] = "Metallic Stone Silver",
    [9] = "Metallic Midnight Silver",
    [10] = "Metallic Gun Metal",
    [11] = "Metallic Anthracite Grey",
    [12] = "Matte Black",
    [13] = "Matte Gray",
    [14] = "Matte Light Grey",
    [15] = "Util Black",
    [16] = "Util Black Poly",
    [17] = "Util Dark silver",
    [18] = "Util Silver",
    [19] = "Util Gun Metal",
    [20] = "Util Shadow Silver",
    [21] = "Worn Black",
    [22] = "Worn Graphite",
    [23] = "Worn Silver Grey",
    [24] = "Worn Silver",
    [25] = "Worn Blue Silver",
    [26] = "Worn Shadow Silver",
    [27] = "Metallic Red",
    [28] = "Metallic Torino Red",
    [29] = "Metallic Formula Red",
    [30] = "Metallic Blaze Red",
    [31] = "Metallic Graceful Red",
    [32] = "Metallic Garnet Red",
    [33] = "Metallic Desert Red",
    [34] = "Metallic Cabernet Red",
    [35] = "Metallic Candy Red",
    [36] = "Metallic Sunrise Orange",
    [37] = "Metallic Classic Gold",
    [38] = "Metallic Orange",
    [39] = "Matte Red",
    [40] = "Matte Dark Red",
    [41] = "Matte Orange",
    [42] = "Matte Yellow",
    [43] = "Util Red",
    [44] = "Util Bright Red",
    [45] = "Util Garnet Red",
    [46] = "Worn Red",
    [47] = "Worn Golden Red",
    [48] = "Worn Dark Red",
    [49] = "Metallic Dark Green",
    [50] = "Metallic Racing Green",
    [51] = "Metallic Sea Green",
    [52] = "Metallic Olive Green",
    [53] = "Metallic Green",
    [54] = "Metallic Gasoline Blue Green",
    [55] = "Matte Lime Green",
    [56] = "Util Dark Green",
    [57] = "Util Green",
    [58] = "Worn Dark Green",
    [59] = "Worn Green",
    [60] = "Worn Sea Wash",
    [61] = "Metallic Midnight Blue",
    [62] = "Metallic Dark Blue",
    [63] = "Metallic Saxony Blue",
    [64] = "Metallic Blue",
    [65] = "Metallic Mariner Blue",
    [66] = "Metallic Harbor Blue",
    [67] = "Metallic Diamond Blue",
    [68] = "Metallic Surf Blue",
    [69] = "Metallic Nautical Blue",
    [70] = "Metallic Bright Blue",
    [71] = "Metallic Purple Blue",
    [72] = "Metallic Spinnaker Blue",
    [73] = "Metallic Ultra Blue",
    [74] = "Metallic Bright Blue",
    [75] = "Util Dark Blue",
    [76] = "Util Midnight Blue",
    [77] = "Util Blue",
    [78] = "Util Sea Foam Blue",
    [79] = "Uil Lightning blue",
    [80] = "Util Maui Blue Poly",
    [81] = "Util Bright Blue",
    [82] = "Matte Dark Blue",
    [83] = "Matte Blue",
    [84] = "Matte Midnight Blue",
    [85] = "Worn Dark blue",
    [86] = "Worn Blue",
    [87] = "Worn Light blue",
    [88] = "Metallic Taxi Yellow",
    [89] = "Metallic Race Yellow",
    [90] = "Metallic Bronze",
    [91] = "Metallic Yellow Bird",
    [92] = "Metallic Lime",
    [93] = "Metallic Champagne",
    [94] = "Metallic Pueblo Beige",
    [95] = "Metallic Dark Ivory",
    [96] = "Metallic Choco Brown",
    [97] = "Metallic Golden Brown",
    [98] = "Metallic Light Brown",
    [99] = "Metallic Straw Beige",
    [100] = "Metallic Moss Brown",
    [101] = "Metallic Biston Brown",
    [102] = "Metallic Beechwood",
    [103] = "Metallic Dark Beechwood",
    [104] = "Metallic Choco Orange",
    [105] = "Metallic Beach Sand",
    [106] = "Metallic Sun Bleeched Sand",
    [107] = "Metallic Cream",
    [108] = "Util Brown",
    [109] = "Util Medium Brown",
    [110] = "Util Light Brown",
    [111] = "Metallic White",
    [112] = "Metallic Frost White",
    [113] = "Worn Honey Beige",
    [114] = "Worn Brown",
    [115] = "Worn Dark Brown",
    [116] = "Worn straw beige",
    [117] = "Brushed Steel",
    [118] = "Brushed Black steel",
    [119] = "Brushed Aluminium",
    [120] = "Chrome",
    [121] = "Worn Off White",
    [122] = "Util Off White",
    [123] = "Worn Orange",
    [124] = "Worn Light Orange",
    [125] = "Metallic Securicor Green",
    [126] = "Worn Taxi Yellow",
    [127] = "police car blue",
    [128] = "Matte Green",
    [129] = "Matte Brown",
    [130] = "Worn Orange",
    [131] = "Matte White",
    [132] = "Worn White",
    [133] = "Worn Olive Army Green",
    [134] = "Pure White",
    [135] = "Hot Pink",
    [136] = "Salmon pink",
    [137] = "Metallic Vermillion Pink",
    [138] = "Orange",
    [139] = "Green",
    [140] = "Blue",
    [141] = "Mettalic Black Blue",
    [142] = "Metallic Black Purple",
    [143] = "Metallic Black Red",
    [144] = "Hunter Green",
    [145] = "Metallic Purple",
    [146] = "Metaillic V Dark Blue",
    [147] = "MODSHOP BLACK1",
    [148] = "Matte Purple",
    [149] = "Matte Dark Purple",
    [150] = "Metallic Lava Red",
    [151] = "Matte Forest Green",
    [152] = "Matte Olive Drab",
    [153] = "Matte Desert Brown",
    [154] = "Matte Desert Tan",
    [155] = "Matte Foilage Green",
    [156] = "DEFAULT ALLOY COLOR",
    [157] = "Epsilon Blue",
    [158] = "Unknown",
}

Config.ColorInformation = {
    [0] = "black",
    [1] = "black",
    [2] = "black",
    [3] = "darksilver",
    [4] = "silver",
    [5] = "bluesilver",
    [6] = "silver",
    [7] = "darksilver",
    [8] = "silver",
    [9] = "bluesilver",
    [10] = "darksilver",
    [11] = "darksilver",
    [12] = "matteblack",
    [13] = "gray",
    [14] = "lightgray",
    [15] = "black",
    [16] = "black",
    [17] = "darksilver",
    [18] = "silver",
    [19] = "utilgunmetal",
    [20] = "silver",
    [21] = "black",
    [22] = "black",
    [23] = "darksilver",
    [24] = "silver",
    [25] = "bluesilver",
    [26] = "darksilver",
    [27] = "red",
    [28] = "torinored",
    [29] = "formulared",
    [30] = "blazered",
    [31] = "gracefulred",
    [32] = "garnetred",
    [33] = "desertred",
    [34] = "cabernetred",
    [35] = "candyred",
    [36] = "orange",
    [37] = "gold",
    [38] = "orange",
    [39] = "red",
    [40] = "mattedarkred",
    [41] = "orange",
    [42] = "matteyellow",
    [43] = "red",
    [44] = "brightred",
    [45] = "garnetred",
    [46] = "red",
    [47] = "red",
    [48] = "darkred",
    [49] = "darkgreen",
    [50] = "racingreen",
    [51] = "seagreen",
    [52] = "olivegreen",
    [53] = "green",
    [54] = "gasolinebluegreen",
    [55] = "mattelimegreen",
    [56] = "darkgreen",
    [57] = "green",
    [58] = "darkgreen",
    [59] = "green",
    [60] = "seawash",
    [61] = "midnightblue",
    [62] = "darkblue",
    [63] = "saxonyblue",
    [64] = "blue",
    [65] = "blue",
    [66] = "blue",
    [67] = "diamondblue",
    [68] = "blue",
    [69] = "blue",
    [70] = "brightblue",
    [71] = "purpleblue",
    [72] = "blue",
    [73] = "ultrablue",
    [74] = "brightblue",
    [75] = "darkblue",
    [76] = "midnightblue",
    [77] = "blue",
    [78] = "blue",
    [79] = "lightningblue",
    [80] = "blue",
    [81] = "brightblue",
    [82] = "mattedarkblue",
    [83] = "matteblue",
    [84] = "matteblue",
    [85] = "darkblue",
    [86] = "blue",
    [87] = "lightningblue",
    [88] = "yellow",
    [89] = "yellow",
    [90] = "bronze",
    [91] = "yellow",
    [92] = "lime",
    [93] = "champagne",
    [94] = "beige",
    [95] = "darkivory",
    [96] = "brown",
    [97] = "brown",
    [98] = "lightbrown",
    [99] = "beige",
    [100] = "brown",
    [101] = "brown",
    [102] = "beechwood",
    [103] = "beechwood",
    [104] = "chocoorange",
    [105] = "yellow",
    [106] = "yellow",
    [107] = "cream",
    [108] = "brown",
    [109] = "brown",
    [110] = "brown",
    [111] = "white",
    [112] = "white",
    [113] = "beige",
    [114] = "brown",
    [115] = "brown",
    [116] = "beige",
    [117] = "steel",
    [118] = "blacksteel",
    [119] = "aluminium",
    [120] = "chrome",
    [121] = "wornwhite",
    [122] = "offwhite",
    [123] = "orange",
    [124] = "lightorange",
    [125] = "green",
    [126] = "yellow",
    [127] = "blue",
    [128] = "green",
    [129] = "brown",
    [130] = "orange",
    [131] = "white",
    [132] = "white",
    [133] = "darkgreen",
    [134] = "white",
    [135] = "pink",
    [136] = "pink",
    [137] = "pink",
    [138] = "orange",
    [139] = "green",
    [140] = "blue",
    [141] = "blackblue",
    [142] = "blackpurple",
    [143] = "blackred",
    [144] = "darkgreen",
    [145] = "purple",
    [146] = "darkblue",
    [147] = "black",
    [148] = "purple",
    [149] = "darkpurple",
    [150] = "red",
    [151] = "darkgreen",
    [152] = "olivedrab",
    [153] = "brown",
    [154] = "tan",
    [155] = "green",
    [156] = "silver",
    [157] = "blue",
    [158] = "black",
}

Config.ClassList = {
    [0] = "Compact",
    [1] = "Sedan",
    [2] = "SUV",
    [3] = "Coupe",
    [4] = "Muscle",
    [5] = "Sport Classic",
    [6] = "Sport",
    [7] = "Super",
    [8] = "Motorbike",
    [9] = "Off-Road",
    [10] = "Industrial",
    [11] = "Utility",
    [12] = "Van",
    [13] = "Bike",
    [14] = "Boat",
    [15] = "Helicopter",
    [16] = "Plane",
    [17] = "Service",
    [18] = "Emergency",
    [19] = "Military",
    [20] = "Commercial",
    [21] = "Train"
}

function GetJobType(job)
	if Config.PoliceJobs[job] then
		return 'police'
	elseif Config.AmbulanceJobs[job] then
		return 'ambulance'
	elseif Config.DojJobs[job] then
		return 'doj'
	else
		return nil
	end
end

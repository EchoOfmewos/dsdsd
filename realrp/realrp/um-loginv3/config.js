UM = {}

// ? Main Settings
UM.MainSettings = {
    color: '#bb55da', // Todo: https://www.color-hex.com/
    opacity: 1, // 0 close background opacity, | 0.7 low background opacity,
    logo: "assets/images/logo.png",
    logowidth: 9,
    extra: {
        autoRGB: false,
        autoSnow: false,
    },
}

UM.BackgroundSettings = {

    musicBackground: {
        enabled: true,
        link: "assets/audio/audio.mp3",
        volume: 0.1
    },

    videoBackground: {
        defaultVID: {
            enabled: false,                 
            link: "assets/video/video.mp4", // ? if you want the video in the showcase download it here and put it in the assets > video folder
                                            // ? https://cdn.discordapp.com/attachments/627254815252152331/1077573043771166810/video.mp4
        },                                  // ? youtubeVID is recommended instead because the file size is high (100MB)
        youtubeVID: {
            enabled: false,
            link: "https://www.youtube.com/watch?v=wDLV52wMFXc",
        },
    },

    imageBackground: {
        defaultIMG: {
            link: "assets/images/bg/bg.png",
        },
        randomIMG: {
            enabled: true,
            imglist: ['bg.png','bg1.png','bg2.png', 'bg3.png', 'bg4.png', 'bg5.png', 'bg6.png'],
        },
    }
}

// ? Cards
UM.Store = {
    title: 'STORE',
    description: 'Absolutely nothing is forced but anything is greatly appreciated, as simply by you the player being apart of our Community! <3',
    button: 'VIEW STORE',
    character_image: 'assets/images/characters/char-girl.png',
    url: "https://realroleplay.tebex.io",
}

UM.AboutUs = {
    enabled: false, // ? If you want to cancel the store, set it to true.
    title: 'ABOUT US',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    button: 'VIEW ABOUT',
    character_image: 'assets/images/characters/char-girl.png',
    content: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
}

UM.ChangeLog = {
    title: 'CHANGELOG',
    description: 'Take a look at Real RPs recent changes here.',
    button: 'VIEW CHANGELOG',
    character_image: 'assets/images/characters/char-man.png',
    page: {
        content: 'Take a look at Real RPs recent changes here.',
        // ? If you want the content part as multiple lines, you need to enable it in the lines section.
        // content: [
        //     "[ 🍕 ] Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
        //     "[ 🍕 ] Lorem Ipsum is simply dummy text of the printing and typesetting industry",
        //     "[ 🍕 ] Lorem Ipsum is simply dummy text of the printing and typesetting industry",
        //     "[ 🍕 ] Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
        // ],
    },
    // ? if you want to use github, you need to enable it in the github section 
    // ! Attention: Make sure you enter the information you created in your github account correctly
    // Todo: https://streamable.com/nsv7dx
    github: {
        enabled: false,
        username: 'alp1x',
        repository: 'um-loadingscreen',
        branch: 'main',
        path: 'newupdates',
    },
    url: {
        enabled: false,
        link: "https://discord.com/channels/945240850303164426/945240850982666253",
    }
}

UM.PlayerOfTheMonth = {
    enabled: true,
    title: "PLAYER OF THE MONTH",
    playerimg: "https://media.discordapp.net/attachments/1127001638360580128/1180531793846337696/screenshot.png?ex=657dc2e8&is=656b4de8&hm=2a32e622093860d01f836a32242d0b8ea7a0071a337d9ae4133457b7ced510cb&=&format=webp&quality=lossless&width=1193&height=671",
    playername: "Christian Easter"
}

UM.UserSocial = {
    discord: true,
    steam: true,
}

UM.Settings = {
    title: "SETTINGS",
    loading: "LOADING ASSETS",
}

UM.RandomInfo = {
    time: 3000,
    text: [
        "🎉[1] Join our Discord if any assistance is needed.",
        "🎉[2] Join one of our many Gangs in the city from MS-13 to Quinn Family, and More!.",
        "🎉[3] Want to seek and arrest criminals with the best equipment? Join San Andreas State Police Today!.",
        "🎉[4] Lastly, have fun and follow the rules in place.",
    ]
}
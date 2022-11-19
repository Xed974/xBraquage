xBraquage = xBraquage or {}

xBraquage = {
    MarkerType = 21, -- https://docs.fivem.net/docs/game-references/markers/
    MarkerColorR = 0, -- https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
    MarkerColorG = 0, -- https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
    MarkerColorB = 0, -- https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
    MarkerOpacite = 200, 
    MarkerSizeLargeur = 0.3,
    MarkerSizeEpaisseur = 0.3,
    MarkerSizeHauteur = 0.3,
    MarkerDistance = 4.0,
    OpenMenuDistance = 2.0,
    MarkerSaute = false, 
    MarkerTourne = false,
    DstRobbery = 2.0, -- Distance à ne pas dépasser pendant le braquage

    Position = {
        vector3(-81.83, -817.08, 326.17),
        vector3(-80.27, -825.64, 326.08),
    },
    JobPolice = { "police", "sheriff" },
    PoliceRequis = 0,
    ItemRequired = { -1074790547, -1716589765, 419712736 }, -- https://gtahash.ru/weapons/?page=1
    TimeCooldown = 5, -- Temps en minute
    TimeRobbery = 1, -- Temps en minute
    Gain = 3000,
    TypeMoney = "black_money" -- "black_money" or "money" or "bank"
}

--- Xed#1188 | https://discord.gg/HvfAsbgVpM
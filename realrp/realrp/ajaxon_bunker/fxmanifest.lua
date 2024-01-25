fx_version 'cerulean'
game 'gta5'
author 'Ajaxon'
description 'Bunker'
version '1.0.0'
this_is_a_map 'yes'

dependencies { 
    '/server:5503',     
    '/gameBuild:2545',
    'ajaxon_mapdata',
}


files{
    '3039751230.ymt',
}

escrow_ignore {
    'stream/**/*.ytd',
    'stream/ytyp/ajaxon_bunker_int.ytyp',
}
dependency '/assetpacks'
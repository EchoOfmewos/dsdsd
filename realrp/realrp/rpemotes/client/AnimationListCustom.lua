-- Emotes you add in the file will automatically be added to AnimationList.lua
-- If you have multiple custom list files they MUST be added between AnimationList.lua and Emote.lua in fxmanifest.lua!
-- Don't change 'CustomDP' it is local to this file!

local CustomDP = {}

CustomDP.Expressions = {}
CustomDP.Walks = {}
CustomDP.Shared = {}
CustomDP.Dances = {}
CustomDP.AnimalEmotes = {}
CustomDP.Exits = {}
CustomDP.Emotes = {}
CustomDP.PropEmotes = {

    --Jim-Tequilala
["whiskeyb"] = {"mp_player_intdrink", "loop_bottle", "(Don't Use) Whiskey Bottle", AnimationOptions =
{    Prop = "prop_cs_whiskey_bottle", PropBone = 60309, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0},
    EmoteMoving = true, EmoteLoop = true }},
["rumb"] = {"mp_player_intdrink", "loop_bottle", "(Don't Use) Rum Bottle", AnimationOptions =
{    Prop = "prop_rum_bottle", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true }},
["icream"] = {"mp_player_intdrink", "loop_bottle", "Irish Cream Bottle", AnimationOptions =
{    Prop = "prop_bottle_brandy", PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true }},
["ginb"] =  {"mp_player_intdrink", "loop_bottle", "(Don't Use) Gin Bottle", AnimationOptions =
{    Prop = "prop_tequila_bottle", PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true }},
["vodkab"] = {"mp_player_intdrink", "loop_bottle", "(Don't Use) Vodka Bottle", AnimationOptions =
{   Prop = 'prop_vodka_bottle', PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true }},


["guitarelectric3"] = {"amb@world_human_musician@guitar@male@idle_a", "idle_b", "Guitar Electric 3", AnimationOptions =
{   Prop = 'prop_el_guitar_02', PropBone = 24818, PropPlacement = {-0.1, 0.31, 0.1, 0.0, 20.0, 150.0},
   EmoteMoving = true, EmoteLoop = true }},
["guitarelectric4"] = {"amb@world_human_musician@guitar@male@idle_a", "idle_b", "Guitar Electric 4", AnimationOptions =
{   Prop = 'vw_prop_casino_art_guitar_01a', PropBone = 24818, PropPlacement = {-0.1, 0.31, 0.1, 0.0, 20.0, 150.0},
   EmoteMoving = true, EmoteLoop = true }},
["guitarelectric5"] = {"amb@world_human_musician@guitar@male@idle_a", "idle_b", "Guitar Electric 5", AnimationOptions =
{   Prop = 'sf_prop_sf_el_guitar_02a', PropBone = 24818, PropPlacement = {-0.1, 0.31, 0.1, 0.0, 20.0, 150.0},
   EmoteMoving = true, EmoteLoop = true }},

["drummer"] = {"anim@scripted@freemode_npc@fix_astu_prod_drums@", "art_ig2_drums_p1", "Drummer", AnimationOptions =
{
   Prop = 'sf_prop_sf_drum_stick_01a',
   PropBone = 60309,
   PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
   SecondProp = 'sf_prop_sf_drum_stick_01a',
   SecondPropBone = 28422,
   SecondPropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
   EmoteMoving = false,
   EmoteLoop = true
}},
["crisps"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Chrisps", AnimationOptions =
{   Prop = 'v_ret_ml_chips2', PropBone = 28422, PropPlacement = {0.01, -0.05, -0.1, 0.0, 0.0, 90.0},
   EmoteLoop = true, EmoteMoving = true, }},
["beer1"] = {"mp_player_intdrink", "loop_bottle", "Dusche", AnimationOptions =
{    Prop = "prop_beerdusche", PropBone = 18905, PropPlacement = {0.04, -0.14, 0.10, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true, }},
["beer2"] = {"mp_player_intdrink", "loop_bottle", "Logger", AnimationOptions =
{    Prop = "prop_beer_logopen", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true, }},
["beer3"] = {"mp_player_intdrink", "loop_bottle", "AM Beer", AnimationOptions =
{    Prop = "prop_beer_amopen", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true, }},
["beer4"] = {"mp_player_intdrink", "loop_bottle", "Pisswasser1", AnimationOptions =
{    Prop = "prop_beer_pissh", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true, }},
["beer5"] = {"mp_player_intdrink", "loop_bottle", "Pisswasser2", AnimationOptions =
{    Prop = "prop_amb_beer_bottle", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true, }},
["beer6"] = {"mp_player_intdrink", "loop_bottle", "Pisswasser3", AnimationOptions =
{    Prop = "prop_cs_beer_bot_02", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true, }},
["ecola"] = {"mp_player_intdrink", "loop_bottle", "E-cola", AnimationOptions =
{    Prop = "prop_ecola_can", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true, }},
["sprunk"] = {"mp_player_intdrink", "loop_bottle", "Sprunk", AnimationOptions =
{    Prop = "v_res_tt_can03", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true, }},

--Jim-VanillaUnicorn
["whiskeyb"] = {"mp_player_intdrink", "loop_bottle", "(Don't Use) Whiskey Bottle", AnimationOptions =
{    Prop = "prop_cs_whiskey_bottle", PropBone = 60309, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0},
    EmoteMoving = true, EmoteLoop = true }},
["rumb"] = {"mp_player_intdrink", "loop_bottle", "(Don't Use) Rum Bottle", AnimationOptions =
{    Prop = "prop_rum_bottle", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true }},
["icream"] = {"mp_player_intdrink", "loop_bottle", "Irish Cream Bottle", AnimationOptions =
{    Prop = "prop_bottle_brandy", PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true }},
["ginb"] =  {"mp_player_intdrink", "loop_bottle", "(Don't Use) Gin Bottle", AnimationOptions =
{    Prop = "prop_tequila_bottle", PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true }},
["vodkab"] = {"mp_player_intdrink", "loop_bottle", "(Don't Use) Vodka Bottle", AnimationOptions =
{   Prop = 'prop_vodka_bottle', PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true }},

["crisps"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Chrisps", AnimationOptions =
{   Prop = 'v_ret_ml_chips2', PropBone = 28422, PropPlacement = {0.01, -0.05, -0.1, 0.0, 0.0, 90.0},
   EmoteLoop = true, EmoteMoving = true, }},
["beer1"] = {"mp_player_intdrink", "loop_bottle", "Dusche", AnimationOptions =
{    Prop = "prop_beerdusche", PropBone = 18905, PropPlacement = {0.04, -0.14, 0.10, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true, }},
["beer2"] = {"mp_player_intdrink", "loop_bottle", "Logger", AnimationOptions =
{    Prop = "prop_beer_logopen", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true, }},
["beer3"] = {"mp_player_intdrink", "loop_bottle", "AM Beer", AnimationOptions =
{    Prop = "prop_beer_amopen", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true, }},
["beer4"] = {"mp_player_intdrink", "loop_bottle", "Pisswasser1", AnimationOptions =
{    Prop = "prop_beer_pissh", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true, }},
["beer5"] = {"mp_player_intdrink", "loop_bottle", "Pisswasser2", AnimationOptions =
{    Prop = "prop_amb_beer_bottle", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true, }},
["beer6"] = {"mp_player_intdrink", "loop_bottle", "Pisswasser3", AnimationOptions =
{    Prop = "prop_cs_beer_bot_02", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true, }},
["ecola"] = {"mp_player_intdrink", "loop_bottle", "E-cola", AnimationOptions =
{    Prop = "prop_ecola_can", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true, }},
["sprunk"] = {"mp_player_intdrink", "loop_bottle", "Sprunk", AnimationOptions =
{    Prop = "v_res_tt_can03", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true, }},


--Jim-BurgerShot
["milk"] = {"mp_player_intdrink", "loop_bottle", "Milk", AnimationOptions =
{    Prop = "v_res_tt_milk", PropBone = 18905, PropPlacement = {0.10, 0.008, 0.07, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true, }},
["bscoke"] = {"mp_player_intdrink", "loop_bottle", "BS Coke", AnimationOptions =
{    Prop = "prop_food_bs_juice01", PropBone = 18905, PropPlacement = {0.04, -0.10, 0.10, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true, }},
["bscoffee"] = {"mp_player_intdrink", "loop_bottle", "BS Coffee", AnimationOptions =
{    Prop = "prop_food_bs_coffee", PropBone = 18905, PropPlacement = {0.08, -0.10, 0.10, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true, }},
["glass"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Tall Glass", AnimationOptions =
{   Prop = 'prop_wheat_grass_glass', PropBone = 28422, PropPlacement = {0.0, 0.0, -0.1, 0.0, 0.0, 0.0},
   EmoteLoop = true, EmoteMoving = true, }},

["torpedo"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger_fp", "Torpedo", AnimationOptions =
{    Prop = "prop_food_bs_burger2", PropBone = 18905, PropPlacement = {0.10, -0.07, 0.091, 15.0, 135.0},
    EmoteMoving = true, EmoteLoop = true, }},
["bsfries"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger_fp", "Fries", AnimationOptions =
{    Prop = "prop_food_bs_chips", PropBone = 18905, PropPlacement = {0.09, -0.06, 0.05, 300.0, 150.0},
    EmoteMoving = true, EmoteLoop = true, }},
["donut2"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Donut2", AnimationOptions =
{   Prop = 'prop_donut_02', PropBone = 18905, PropPlacement = {0.13, 0.05, 0.02, -50.0, 100.0, 270.0},
   EmoteMoving = true, EmoteLoop = true, }},

--Jim-CatCafe
["uwu1"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "", AnimationOptions =
{ Prop = 'uwu_sml_drink', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 130.0},
    EmoteLoop = true, EmoteMoving = true, }},
["uwu2"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "", AnimationOptions =
{ Prop = 'uwu_lrg_drink', PropBone = 28422, PropPlacement = {0.03, 0.0, -0.08, 0.0, 0.0, 130.0},
    EmoteLoop = true, EmoteMoving = true, }},
["uwu3"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "", AnimationOptions =
{ Prop = 'uwu_cup_straw', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 130.0},
    EmoteLoop = true, EmoteMoving = true, }},
["uwu4"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "", AnimationOptions =
{ Prop = 'uwu_mug', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 130.0},
    EmoteLoop = true, EmoteMoving = true, }},
["uwu5"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "", AnimationOptions =
{ Prop = 'uwu_pastry', PropBone = 18905, PropPlacement = {0.16, 0.06, -0.03, -50.0, 16.0, 60.0},
    EmoteMoving = true, }},
["uwu6"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "", AnimationOptions =
{ Prop = 'uwu_cookie', PropBone = 18905, PropPlacement = {0.16, 0.08, -0.01, -225.0, 20.0, 60.0},
    EmoteMoving = true, }},
["uwu7"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "", AnimationOptions =
{ Prop = 'uwu_sushi', PropBone = 18905, PropPlacement = {0.18, 0.03, 0.02, -50.0, 16.0, 60.0},
    EmoteMoving = true, }},
["uwu8"] = {"amb@world_human_seat_wall_eating@male@both_hands@idle_a", "idle_c", "", AnimationOptions =
{ Prop = 'uwu_eggroll', PropBone = 60309, PropPlacement = {0.10, 0.03, 0.08, -95.0, 60.0, 0.0},
    EmoteMoving = true, }},
["uwu9"] = {"anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1", "base_idle", "", AnimationOptions =
{ Prop = "uwu_salad_bowl", PropBone = 60309, PropPlacement = {0.0, 0.0300, 0.0100, 0.0, 0.0, 0.0},
    SecondProp = 'uwu_salad_spoon', SecondPropBone = 28422, SecondPropPlacement = {0.0, 0.0 ,0.0, 0.0, 0.0, 0.0},
    EmoteLoop = true, EmoteMoving = true, }},
["uwu10"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "", AnimationOptions =
{ Prop = 'uwu_sandy', PropBone = 18905, PropPlacement = {0.16, 0.08, 0.05, -225.0, 20.0, 60.0},
    EmoteMoving = true, }},
["uwu11"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "", AnimationOptions =
{ Prop = 'uwu_cupcake', PropBone = 28422, PropPlacement = {0.0, 0.0, -0.03, 0.0, 0.0, 130.0},
    EmoteLoop = true, EmoteMoving = true, }},
["uwu12"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "", AnimationOptions =
{ Prop = 'uwu_btea', PropBone = 28422, PropPlacement = {0.02, 0.0, -0.05, 0.0, 0.0, 130.0},
    EmoteLoop = true, EmoteMoving = true, }},
["uwu13"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "", AnimationOptions =
{ Prop = 'uwu_gdasik', PropBone = 18905, PropPlacement = {0.16, 0.08, 0.02, -225.0, 20.0, 60.0},
    EmoteMoving = true, }},   
    
--Jim-PizzaThis
["redwine"] = {"mp_player_intdrink", "loop_bottle", "Red Wine Bottle", AnimationOptions =
{    Prop = "prop_wine_rose", PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true, }},
["whitewine"] = {"mp_player_intdrink", "loop_bottle", "White Wine Bottle", AnimationOptions =
{    Prop = "prop_wine_white", PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true, }},
["beer1"] = {"mp_player_intdrink", "loop_bottle", "Dusche", AnimationOptions =
{    Prop = "prop_beerdusche", PropBone = 18905, PropPlacement = {0.04, -0.14, 0.10, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true, }},
["beer2"] = {"mp_player_intdrink", "loop_bottle", "Logger", AnimationOptions =
{    Prop = "prop_beer_logopen", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true, }},
["beer3"] = {"mp_player_intdrink", "loop_bottle", "AM Beer", AnimationOptions =
{    Prop = "prop_beer_amopen", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true, }},
["beer4"] = {"mp_player_intdrink", "loop_bottle", "Pisswasser1", AnimationOptions =
{    Prop = "prop_beer_pissh", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true, }},
["beer5"] = {"mp_player_intdrink", "loop_bottle", "Pisswasser2", AnimationOptions =
{    Prop = "prop_amb_beer_bottle", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true, }},
["beer6"] = {"mp_player_intdrink", "loop_bottle", "Pisswasser3", AnimationOptions =
{    Prop = "prop_cs_beer_bot_02", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true, }},
["ecola"] = {"mp_player_intdrink", "loop_bottle", "e-cola", AnimationOptions =
{    Prop = "prop_ecola_can", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true, }},
["sprunk"] = {"mp_player_intdrink", "loop_bottle", "sprunk", AnimationOptions =
{    Prop = "v_res_tt_can03", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true, }},
["pizza"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger_fp", "Pizza", AnimationOptions =
{    Prop = "v_res_tt_pizzaplate", PropBone = 18905, PropPlacement = {0.20, 0.038, 0.051, 15.0, 155.0},
    EmoteMoving = true, EmoteLoop = true, }},
["bowl"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "bowl", AnimationOptions =
{    Prop = "h4_prop_h4_coke_plasticbowl_01", PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
    EmoteMoving = true, EmoteLoop = true, }},
["pineapple"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger_fp", "Pizza", AnimationOptions =
{    Prop = "prop_pineapple", PropBone = 18905, PropPlacement = {0.10, 0.038, 0.03, 15.0, 50.0},
    EmoteMoving = true, EmoteLoop = true, }},
["foodbowl"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "bowl", AnimationOptions =
{    Prop = "prop_cs_bowl_01", PropBone = 28422, PropPlacement = {0.0, 0.0, 0.050, 0.0, 0.0, 0.0},
    EmoteMoving = true, EmoteLoop = true, }},   
    
--Jim-Bakery
["bread"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Bread", AnimationOptions =
{	Prop = 'v_ret_247_bread1', PropBone = 28422, PropPlacement = {0.02, -0.05, -0.06, 270.0, 0.0, 90.0},
    EmoteLoop = true, EmoteMoving = true, }},
["breadslice"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Bread Slice", AnimationOptions =
{	Prop = 'v_res_fa_bread03', PropBone = 18905, PropPlacement = {0.16, 0.08, -0.01, -225.0, -10.0, 0.0},
    EmoteLoop = true, EmoteMoving = true, }},

["cupcake1"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Cup Cake", AnimationOptions =
{	Prop = 'hb_cupcake1', PropBone = 18905, PropPlacement = {0.13, 0.06, 0.02, -120.0, 0.0, 0.0},
    EmoteLoop = true, EmoteMoving = true, }},
["cupcake2"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Cup Cake 2", AnimationOptions =
{	Prop = 'hb_cupcake2', PropBone = 18905, PropPlacement = {0.13, 0.06, 0.02, -120.0, 0.0, 0.0},
    EmoteLoop = true, EmoteMoving = true, }},

--Cake Eating
["cake1"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Cake 1", AnimationOptions =
{	Prop = 'hb_cake1', PropBone = 18905, PropPlacement = {0.13, 0.1, -0.06, -80.0, 0.0, -20.0},
    EmoteLoop = true, EmoteMoving = true, }},
["cake2"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Cake 2", AnimationOptions =
{	Prop = 'hb_cake2', PropBone = 18905, PropPlacement = {0.13, 0.1, -0.06, -80.0, 50.0, -20.0},
    EmoteLoop = true, EmoteMoving = true, }},
["cake3"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Cake 3", AnimationOptions =
{	Prop = 'hb_cake3', PropBone = 18905, PropPlacement = {0.10, 0.03, 0.05, -30.0, -30.0, 0.0},
    EmoteLoop = true, EmoteMoving = true, }},

--Cake holding
["cakehold1"] = {"impexp_int-0", "mp_m_waremech_01_dual-0", "Cake Hold 2", AnimationOptions =
{	Prop = 'hb_cake1', PropBone = 24817, PropPlacement = {-0.04, 0.46, -0.016, -160.0, -90.0, 0.0},
    EmoteMoving = true,	EmoteLoop = true }},
["cakehold2"] = {"impexp_int-0", "mp_m_waremech_01_dual-0", "Cake Hold 2", AnimationOptions =
{	Prop = 'hb_cake2', PropBone = 24817, PropPlacement = {-0.04, 0.46, -0.016, -160.0, -90.0, 0.0},
    EmoteMoving = true,	EmoteLoop = true }},
["cakehold3"] = {"impexp_int-0", "mp_m_waremech_01_dual-0", "Cake Hold 3", AnimationOptions =
{	Prop = 'hb_cake3', PropBone = 24817, PropPlacement = {-0.11, 0.46, -0.016, -210.0, -90.0, 0.0},
    EmoteMoving = true,	EmoteLoop = true }},

--Bread Holding
["breadhold1"] = {"impexp_int-0", "mp_m_waremech_01_dual-0", "Bread Hold 2", AnimationOptions =
{	Prop = 'hbe_bread_1', PropBone = 24817, PropPlacement = {-0.10, 0.46, -0.016, -210.0, -90.0, 0.0},
    EmoteMoving = true,	EmoteLoop = true }},
["breadhold2"] = {"impexp_int-0", "mp_m_waremech_01_dual-0", "Bread Hold 2", AnimationOptions =
{	Prop = 'hb_bread_2', PropBone = 24817, PropPlacement = {-0.10, 0.46, -0.016, -210.0, -90.0, 0.0},
    EmoteMoving = true,	EmoteLoop = true }},
["breadhold3"] = {"impexp_int-0", "mp_m_waremech_01_dual-0", "Bread Hold 2", AnimationOptions =
{	Prop = 'hb_bread_3', PropBone = 24817, PropPlacement = {-0.10, 0.46, -0.016, -210.0, -90.0, 0.0},
    EmoteMoving = true,	EmoteLoop = true }},
["breadhold4"] = {"impexp_int-0", "mp_m_waremech_01_dual-0", "Bread Hold 2", AnimationOptions =
{	Prop = 'hb_bread_4', PropBone = 24817, PropPlacement = {-0.10, 0.46, -0.016, -210.0, -90.0, 0.0},
    EmoteMoving = true,	EmoteLoop = true }},
--Bread Roll
["breadroll1"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Bread Roll 1", AnimationOptions =
{	Prop = 'hb_bread_roll_1', PropBone = 18905, PropPlacement = {0.13, 0.06, 0.02, 20.0, 120.0, 0.0},
    EmoteLoop = true, EmoteMoving = true, }},
["breadroll2"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Bread Roll 2", AnimationOptions =
{	Prop = 'hb_bread_roll_2', PropBone = 18905, PropPlacement = {0.13, 0.06, 0.02, 20.0, 120.0, 0.0},
    EmoteLoop = true, EmoteMoving = true, }},
["breadroll3"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Bread Roll 3", AnimationOptions =
{	Prop = 'hb_bread_roll_3', PropBone = 18905, PropPlacement = {0.13, 0.06, 0.02, 20.0, 120.0, 0.0},
    EmoteLoop = true, EmoteMoving = true, }},
["breadroll4"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Bread Roll 4", AnimationOptions =
{	Prop = 'hb_bread_roll_4', PropBone = 18905, PropPlacement = {0.13, 0.06, 0.02, 20.0, 120.0, 0.0},
    EmoteLoop = true, EmoteMoving = true, }},

--Pastries
["croissant"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Croissant", AnimationOptions =
{	Prop = 'hb_pastry_1', PropBone = 18905, PropPlacement = {0.13, 0.06, 0.02, 20.0, 120.0, 0.0},
    EmoteLoop = true, EmoteMoving = true, }},
["choccroiss"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Croissant Sauce", AnimationOptions =
{	Prop = 'hb_pastry_2', PropBone = 18905, PropPlacement = {0.13, 0.06, 0.02, 20.0, 120.0, 0.0},
    EmoteLoop = true, EmoteMoving = true, }},
["sweetroll"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Sweet Roll", AnimationOptions =
{	Prop = 'hb_pastry_3', PropBone = 18905, PropPlacement = {0.13, 0.06, 0.02, 20.0, 120.0, 0.0},
    EmoteLoop = true, EmoteMoving = true, }},
["cookie"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Cookie", AnimationOptions =
{	Prop = 'hb_pastry_4', PropBone = 18905, PropPlacement = {0.15, 0.08, 0.02, 20.0, 140.0, 0.0},
    EmoteLoop = true, EmoteMoving = true, }},

-- Sodas
["ecola"] = {"mp_player_intdrink", "loop_bottle", "e-cola", AnimationOptions =
{   Prop = "prop_ecola_can", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true, }},
["sprunk"] = {"mp_player_intdrink", "loop_bottle", "sprunk", AnimationOptions =
{   Prop = "v_res_tt_can03", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
    EmoteMoving = true, EmoteLoop = true, }},    

    ["health_insurance"] = {"anim@heists@humane_labs@finale@keycards", "ped_a_enter_loop", "Card", AnimationOptions =
    {
        Prop = "m-insurance_prop_card_health",
        PropBone = 18905,
        PropPlacement = {0.17, 0.03, 0.04, 1.0, 184.0, 0.0},
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["car_insurance"] = {"anim@heists@humane_labs@finale@keycards", "ped_a_enter_loop", "Card", AnimationOptions =
    {
        Prop = "m-insurance_prop_card_vehicle",
        PropBone = 18905,
        PropPlacement = {0.17, 0.03, 0.04, 1.0, 184.0, 0.0},
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["car_registration"] = {"anim@heists@humane_labs@finale@keycards", "ped_a_enter_loop", "Card", AnimationOptions =
    {
        Prop = "m-insurance_prop_card_vehicle2",
        PropBone = 18905,
        PropPlacement = {0.17, 0.03, 0.04, 1.0, 184.0, 0.0},
        EmoteLoop = true,
        EmoteMoving = true,
    }},
}

-----------------------------------------------------------------------------------------
--| I don't think you should change the code below unless you know what you are doing |--
-----------------------------------------------------------------------------------------

-- Add the custom emotes to RPEmotes main array
for arrayName, array in pairs(CustomDP) do
    if RP[arrayName] then
        for emoteName, emoteData in pairs(array) do
            RP[arrayName][emoteName] = emoteData
        end
    end
    -- Free memory
    CustomDP[arrayName] = nil
end
-- Free memory
CustomDP = nil

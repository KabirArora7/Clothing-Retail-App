-- Link to use the working mode
-- https://stabl.rocks/ShowModulePublish?modulePublishId=7fcea1ec-a068-49b8-82d9-308f3bf00297


import Dict exposing (Dict)

-- use these Stencils to create buttons for your checkout/inventory app
mtshirt =  curve (-14.11,22.425) [Pull (-17.76,20.535) (-21.41,18.645),Pull (-23.43,18.081) (-25.44,15.118),Pull (-30.36,9.0708) (-35.27,3.0236),Pull (-30.99,-0.125) (-26.70,-3.275),Pull (-24.94,-2.393) (-23.18,-1.511),Pull (-23.55,-17.63) (-23.93,-33.76),Pull (-6.929,-33.88) (10.078,-34.01),Pull (9.4488,-17.25) (8.8188,-0.503),Pull (10.834,-2.015) (12.850,-3.527),Pull (17.007,0.1259) (21.165,3.7795),Pull (14.866,10.834) (8.5669,17.889),Pull (4.1574,20.031) (-0.251,22.173),Pull (-6.803,19.899) (-14.11,22.425)]
wtshirt = curve (-15.62,26.204) [Pull (-8.314,23.552) (-1.007,25.700),Pull (3.5275,24.314) (8.0629,22.929),Pull (9.1968,21.543) (10.330,20.157),Pull (12.094,15.874) (13.858,11.590),Pull (10.600,7.3669) (5.5433,5.5433),Pull (2.2433,-7.853) (5.5433,-12.85),Pull (7.6251,-18.33) (7.3070,-29.22),Pull (6.4015,-32.01) (-0.503,-33.00),Pull (-6.803,-32.53) (-13.10,-33.25),Pull (-19.51,-32.99) (-22.92,-29.73),Pull (-22.91,-21.54) (-19.90,-13.35),Pull (-19.40,-9.700) (-18.89,-6.047),Pull (-19.90,-0.755) (-20.91,4.5354),Pull (-25.70,8.6330) (-30.48,10.330),Pull (-28.59,14.614) (-26.70,18.897),Pull (-26.69,20.661) (-23.68,22.425),Pull (-19.65,24.314) (-15.62,26.204)]
hoodie = curve (-8.951,39.384) [Pull (-7.757,40.284) (-6.564,39.384),Pull (-3.655,37.072) (-0.745,34.759),Pull (1.4221,33.869) (1.7902,31.179),Pull (2.1599,27.892) (3.7296,26.405),Pull (4.1820,24.759) (2.8344,24.913),Pull (1.8648,23.869) (0.8951,22.825),Pull (1.3426,20.960) (1.7902,19.095),Pull (2.5361,17.748) (3.2820,18.200),Pull (4.5501,17.529) (5.8181,16.857),Pull (9.4034,14.326) (11.188,9.9953),Pull (16.637,-2.759) (20.885,-15.51),Pull (22.830,-22.82) (22.974,-30.13),Pull (22.825,-30.43) (22.675,-30.73),Pull (23.198,-32.67) (23.720,-34.61),Pull (21.706,-35.65) (19.692,-36.69),Pull (18.498,-36.85) (17.305,-33.41),Pull (14.396,-30.58) (11.487,-25.95),Pull (11.044,-29.01) (8.8018,-32.07),Pull (-8.055,-31.02) (-24.91,-32.37),Pull (-25.13,-30.35) (-25.36,-28.34),Pull (-25.73,-28.19) (-26.10,-28.04),Pull (-26.25,-26.55) (-26.40,-25.06),Pull (-29.31,-28.71) (-32.22,-32.37),Pull (-32.59,-32.44) (-32.96,-32.52),Pull (-33.79,-33.26) (-34.61,-35.80),Pull (-37.14,-34.15) (-39.68,-34.31),Pull (-38.48,-32.59) (-39.08,-30.88),Pull (-39.98,-29.61) (-39.68,-28.34),Pull (-40.22,-23.38) (-32.37,-5.818),Pull (-29.53,1.0442) (-26.70,7.9067),Pull (-25.59,11.561) (-22.07,15.216),Pull (-19.91,17.237) (-17.75,16.857),Pull (-15.28,17.373) (-15.81,20.289),Pull (-19.02,21.552) (-20.43,24.615),Pull (-20.36,27.375) (-18.49,30.135),Pull (-17.97,31.627) (-17.45,33.118),Pull (-16.93,34.836) (-14.62,35.953),Pull (-11.78,37.594) (-8.951,39.384)]
sweatshirt = curve (-14.23,21.894) [Pull (-19.29,19.598) (-24.34,17.301),Pull (-26.18,16.422) (-28.01,11.942),Pull (-30.55,3.1626) (-31.08,-15.61),Pull (-31.31,-20.89) (-31.54,-26.18),Pull (-31.57,-27.86) (-30.00,-29.55),Pull (-30.16,-31.23) (-30.31,-32.91),Pull (-27.55,-33.44) (-24.80,-32.76),Pull (-24.75,-31.68) (-25.11,-29.39),Pull (-23.63,-27.20) (-22.96,-20.21),Pull (-22.57,-28.49) (-20.97,-28.78),Pull (-20.89,-30.23) (-20.82,-31.69),Pull (-20.55,-32.55) (-18.67,-32.61),Pull (-6.813,-31.85) (5.0526,-32.30),Pull (5.8181,-32.52) (6.5837,-31.54),Pull (6.4306,-30.16) (6.2775,-28.78),Pull (8.1961,-27.38) (8.1148,-23.57),Pull (7.7913,-23.18) (8.2679,-16.38),Pull (9.9521,-19.18) (11.636,-28.78),Pull (11.406,-30.46) (11.177,-32.15),Pull (13.779,-33.05) (16.382,-32.76),Pull (16.382,-31.00) (16.382,-29.24),Pull (17.365,-28.84) (17.148,-27.25),Pull (17.599,-12.78) (14.851,1.6842),Pull (13.779,7.2727) (12.708,12.861),Pull (12.325,13.933) (11.942,15.004),Pull (10.441,17.335) (9.3397,18.066),Pull (5.3588,19.521) (1.3779,20.976),Pull (-0.153,22.311) (-1.684,22.047),Pull (-1.466,23.336) (-2.449,23.425),Pull (-7.272,22.778) (-12.09,23.732),Pull (-12.93,23.919) (-14.23,21.894)]

tshirtCost = 10
sweatshirtCost = 15
hoodieCost = 20

-- Note that in Elm we need to use Strings, because custom types cannot
-- be used as keys for Dicts---otherwise we would.
tshirtTypes = ["WS","WM","WL","MS","MM","ML"]

total sweatshirts hoodies tshirts
  = sweatshirts * sweatshirtCost
  + hoodies * hoodieCost
  + tshirtCost * ( Dict.foldl ( \ _ v soFar -> v + soFar ) 0 tshirts )

-- Your shapes go here
myShapes localModel globalModel =
  let
    due = total localModel.sweatshirtsInCart localModel.hoodiesInCart localModel.tShirtsInCart
  in
  [
    text "stock" |> size 20 |> filled darkGreen
      |> rotate (degrees 90)
      |> move (87,16)
  , pickButton sweatshirt Sweatshirt globalModel.sweatshirtsInStock (localModel.mousingOver == Just Sweatshirt)
      |> move (-60,40)
  , pickButton hoodie Hoodie globalModel.hoodiesInStock (localModel.mousingOver == Just Hoodie)
      |> move (0,40)

  , roundedRect 190 50 5 |> outlined (solid 1) darkGreen
      |> move (0, 37)
  , button 50 green 
          ("$" ++ String.fromInt due) 
           localModel.mousingOverBuy
      |> move (65, -38)
      |> notifyTap (GlobalMsg (Buy localModel.sweatshirtsInCart localModel.hoodiesInCart localModel.tShirtsInCart))
      
      |> notifyTap (LocalMsg <| ClearCart)
      |> notifyEnter (LocalMsg <| MouseOverBuy)
      |> notifyLeave (LocalMsg MouseOff)
  , button 20 red "clear" localModel.mousingOverClear
      |> move (65, -1)
      |> notifyTap (LocalMsg <| ClearCart)
      |> notifyEnter (LocalMsg <| MouseOverClear)
      |> notifyLeave (LocalMsg MouseOff)
  , roundedRect (190-60-2) 72 5 |> outlined (solid 1) darkGreen
      |> move (-31, -27)
  , text "cart" |> size 20 |> filled darkGreen
      |> rotate (degrees 90)
      |> move (-82,-38)
  , drawMultiple hoodie localModel.hoodiesInCart
      -- |> move (-50,0)
  , drawMultiple sweatshirt localModel.sweatshirtsInCart
      |> move (-60,0)

  -- total cash display
  , text (String.fromInt globalModel.cash) 
      |> size 3
      |> filled grey
      |> move (80,58)
  ]

-- this function draws items they way they should appear in your cart
drawMultiple stencil num =
  List.range 1 num
    |> List.map ( \ idx -> 
                       stencil |> filled (rgba 0 255 0 0.5) |> addOutline (solid 1) darkGreen |> scale 0.25
                         |> move (1 * toFloat idx,-5 * toFloat idx)
                )
    |> group

-- this function creates a button in the shape of an item
pickButton stencil item stock outlined = 
            [ stencil 
                |> filled green
                |> (if outlined then addOutline (solid 1) black else identity)
                |> scale 0.5
            , text (String.fromInt stock)
                |> size 8
                |> centered
                |> filled black
                |> move (-4,-6)
            ]
              |> group
              |> notifyTap (LocalMsg(AddToCart item))

button height clr txt outlined = 
  group
    [
      roundedRect 60 height 5 
        |> filled clr
        |> (if outlined then addOutline (solid 1) black else identity)
    , text txt
        |> centered
        |> filled black
        |> move (0, -3)
    ]

localUpdate : LocalMsg -> LocalModel -> GlobalModel -> LocalModel
localUpdate msg localModel globalModel = 
  case msg of
    Tick t _ -> { localModel | time = t }
    MouseOver item -> { localModel | mousingOver = Just item }
    MouseOff -> { localModel | mousingOver = Nothing, mousingOverBuy = False, mousingOverClear = False }
    MouseOverBuy -> { localModel | mousingOverBuy = True }
    MouseOverClear -> { localModel | mousingOverClear = True }
    AddToCart Hoodie  -> { localModel | hoodiesInCart = localModel.hoodiesInCart + 1 } -- | total = globalModel.cash + 20 }
    AddToCart Sweatshirt -> { localModel | sweatshirtsInCart = localModel.sweatshirtsInCart + 1 }
    AddToCart _ -> localModel
    ClearCart -> 
      { localModel | hoodiesInCart = localModel.hoodiesInCart - localModel.hoodiesInCart
              , sweatshirtsInCart = localModel.sweatshirtsInCart - localModel.sweatshirtsInCart 
              }

globalUpdate : GlobalMsg -> GlobalModel -> GlobalModel
globalUpdate msg globalModel =
    case msg of
        Buy numSweatshirts numHoodies numTshirts
          ->  { globalModel | hoodiesInStock = globalModel.hoodiesInStock - numHoodies
              , sweatshirtsInStock = globalModel.sweatshirtsInStock - numSweatshirts              
              }

subMap2 : (Dict String Int) -> (Dict String Int) -> (Dict String Int)
subMap2 dict1 dict2 =
  Dict.toList dict1
    |> List.foldl ( \ (kind,num) soFar -> Dict.update kind (addMaybe (-num)) soFar )
                  dict2

addMaybe n1 maybeN2 = case maybeN2 of
                        Just n2 -> Just (n1 + n2)
                        Nothing -> Just n1


initLocal : LocalModel
initLocal = { time = 0
            , mousingOver = Nothing 
            , mousingOverBuy = False
            , mousingOverClear = False
            , hoodiesInCart = 0
            , sweatshirtsInCart = 0
            , tShirtsInCart = Dict.empty
            }

initGlobal : GlobalModel
initGlobal = { hoodiesInStock = 50
             , sweatshirtsInStock = 50
             , cash = 0
             -- this is needed for the bonus only
             , tShirtsInStock = Dict.fromList [("WS",20),("WM",20),("WL",20),("MS",20),("MM",20),("ML",20)]
             }


appConfig =
  simpleAppConfig
    { initLocal = initLocal
    , initGlobal = initGlobal
    , localUpdate = localUpdate
    , globalUpdate = globalUpdate
    , view = view
    , codecGlobalModel = JSON Codec.Encoders.encodeGlobalModel Codec.Decoders.decodeGlobalModel
    , codecGlobalMsg = JSON Codec.Encoders.encodeGlobalMsg Codec.Decoders.decodeGlobalMsg
    }

main : TEASyncGSVGAppWithTick () LocalModel GlobalModel LocalMsg GlobalMsg
main = 
  teaSyncAppSimpleWithTick Tick 
    appConfig

view : LocalModel -> GlobalModel -> { title: String, body : Collage (TEASync.Msg LocalMsg GlobalMsg GlobalModel) }
view localModel globalModel = 
  {
    title = "My App Title"
  , body = collage 192 128 (myShapes localModel globalModel)
  }


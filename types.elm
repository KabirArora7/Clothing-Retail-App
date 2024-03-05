import GraphicSVG.EllieApp exposing(GetKeyState)
import Dict exposing (Dict)


type LocalMsg 
    = Tick Float GetKeyState
    | MouseOver Item
    | MouseOverBuy
    | MouseOverClear
    | MouseOff
    | AddToCart Item
    | ClearCart

type GlobalMsg 
    = Buy Int Int (Dict String Int)

type alias LocalModel = 
    { time : Float
    , mousingOver : Maybe Item 
    , mousingOverBuy : Bool
    , mousingOverClear : Bool
    , tShirtsInCart : (Dict String Int)
    , hoodiesInCart : Int
    , sweatshirtsInCart : Int
    }

type alias GlobalModel = 
    { tShirtsInStock : (Dict String Int)
    , hoodiesInStock : Int
    , sweatshirtsInStock : Int
    , cash : Int
    }
        

type Item =
    TShirt String | Hoodie | Sweatshirt

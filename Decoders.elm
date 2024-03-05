{-
This module provides some helper functions.
You shouldn't need to change anything in here.
-}

import Json.Decode as Decode exposing (..)
import Dict exposing(Dict)
import Set exposing(Set)

decodeTuple2 : Decoder fst -> Decoder snd -> Decoder (fst, snd)
decodeTuple2 decodeFst decodeSnd =
    Decode.map2 Tuple.pair
        (field "f" decodeFst)
        (field "s" decodeSnd)

decodeTuple3 : Decoder fst -> Decoder snd -> Decoder thd -> Decoder (fst, snd, thd)
decodeTuple3 decodeFst decodeSnd decodeThd =
    Decode.map3 (\fst snd thd -> (fst, snd, thd))
        (field "f" decodeFst)
        (field "s" decodeSnd)
        (field "t" decodeThd)

decodeDict : Decoder comparable -> Decoder v -> Decoder (Dict comparable v)
decodeDict decodeKey decodeVal =
    Decode.map Dict.fromList <|
        Decode.list <|
            decodeTuple2 
                decodeKey
                decodeVal

decodeList : Decoder a -> Decoder (List a)
decodeList = Decode.list

decodeMaybe : Decoder a -> Decoder (Maybe a)
decodeMaybe = Decode.maybe

decodeSet : Decoder comparable -> Decoder (Set comparable)
decodeSet = Decode.map (Set.fromList) << Decode.list



andMap : Decoder a -> Decoder (a -> b) -> Decoder b
andMap dA dAtB = 
  dA |> Decode.map2 (\aTb a -> aTb a) dAtB

map9 : (a -> b -> c -> d -> e -> f -> g -> h -> i -> result)
      -> Decoder a
      -> Decoder b
      -> Decoder c
      -> Decoder d
      -> Decoder e
      -> Decoder f
      -> Decoder g
      -> Decoder h
      -> Decoder i
      -> Decoder result
map9 fn d1 d2 d3 d4 d5 d6 d7 d8 d9 =
  Decode.succeed fn
    |> andMap d1
    |> andMap d2
    |> andMap d3
    |> andMap d4
    |> andMap d5
    |> andMap d6
    |> andMap d7
    |> andMap d8
    |> andMap d9

map10 : (a -> b -> c -> d -> e -> f -> g -> h -> i -> j -> result)
      -> Decoder a
      -> Decoder b
      -> Decoder c
      -> Decoder d
      -> Decoder e
      -> Decoder f
      -> Decoder g
      -> Decoder h
      -> Decoder i
      -> Decoder j
      -> Decoder result
map10 fn d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 =
  Decode.succeed fn
    |> andMap d1
    |> andMap d2
    |> andMap d3
    |> andMap d4
    |> andMap d5
    |> andMap d6
    |> andMap d7
    |> andMap d8
    |> andMap d9
    |> andMap d10

map11 : (a -> b -> c -> d -> e -> f -> g -> h -> i -> j -> k -> result)
      -> Decoder a
      -> Decoder b
      -> Decoder c
      -> Decoder d
      -> Decoder e
      -> Decoder f
      -> Decoder g
      -> Decoder h
      -> Decoder i
      -> Decoder j
      -> Decoder k
      -> Decoder result
map11 fn d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 =
  Decode.succeed fn
    |> andMap d1
    |> andMap d2
    |> andMap d3
    |> andMap d4
    |> andMap d5
    |> andMap d6
    |> andMap d7
    |> andMap d8
    |> andMap d9
    |> andMap d10
    |> andMap d11

map12 : (a -> b -> c -> d -> e -> f -> g -> h -> i -> j -> k -> l -> result)
      -> Decoder a
      -> Decoder b
      -> Decoder c
      -> Decoder d
      -> Decoder e
      -> Decoder f
      -> Decoder g
      -> Decoder h
      -> Decoder i
      -> Decoder j
      -> Decoder k
      -> Decoder l
      -> Decoder result
map12 fn d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 d12 =
  Decode.succeed fn
    |> andMap d1
    |> andMap d2
    |> andMap d3
    |> andMap d4
    |> andMap d5
    |> andMap d6
    |> andMap d7
    |> andMap d8
    |> andMap d9
    |> andMap d10
    |> andMap d11
    |> andMap d12

map13 : (a -> b -> c -> d -> e -> f -> g -> h -> i -> j -> k -> l -> m -> result)
      -> Decoder a
      -> Decoder b
      -> Decoder c
      -> Decoder d
      -> Decoder e
      -> Decoder f
      -> Decoder g
      -> Decoder h
      -> Decoder i
      -> Decoder j
      -> Decoder k
      -> Decoder l
      -> Decoder m
      -> Decoder result
map13 fn d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 d12 d13 =
  Decode.succeed fn
    |> andMap d1
    |> andMap d2
    |> andMap d3
    |> andMap d4
    |> andMap d5
    |> andMap d6
    |> andMap d7
    |> andMap d8
    |> andMap d9
    |> andMap d10
    |> andMap d11
    |> andMap d12
    |> andMap d13

map14 : (a -> b -> c -> d -> e -> f -> g -> h -> i -> j -> k -> l -> m -> n -> result)
      -> Decoder a
      -> Decoder b
      -> Decoder c
      -> Decoder d
      -> Decoder e
      -> Decoder f
      -> Decoder g
      -> Decoder h
      -> Decoder i
      -> Decoder j
      -> Decoder k
      -> Decoder l
      -> Decoder m
      -> Decoder n
      -> Decoder result
map14 fn d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 d12 d13 d14 =
  Decode.succeed fn
    |> andMap d1
    |> andMap d2
    |> andMap d3
    |> andMap d4
    |> andMap d5
    |> andMap d6
    |> andMap d7
    |> andMap d8
    |> andMap d9
    |> andMap d10
    |> andMap d11
    |> andMap d12
    |> andMap d13
    |> andMap d14

map15 : (a -> b -> c -> d -> e -> f -> g -> h -> i -> j -> k -> l -> m -> n -> o -> result)
       -> Decoder a
       -> Decoder b
       -> Decoder c
       -> Decoder d
       -> Decoder e
       -> Decoder f
       -> Decoder g
       -> Decoder h
       -> Decoder i
       -> Decoder j
       -> Decoder k
       -> Decoder l
       -> Decoder m
       -> Decoder n
       -> Decoder o
       -> Decoder result
map15 fn d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 d12 d13 d14 d15 =
  Decode.succeed fn
    |> andMap d1
    |> andMap d2
    |> andMap d3
    |> andMap d4
    |> andMap d5
    |> andMap d6
    |> andMap d7
    |> andMap d8
    |> andMap d9
    |> andMap d10
    |> andMap d11
    |> andMap d12
    |> andMap d13
    |> andMap d14
    |> andMap d15

map16 : (a -> b -> c -> d -> e -> f -> g -> h -> i -> j -> k -> l -> m -> n -> o -> p -> result)
       -> Decoder a
       -> Decoder b
       -> Decoder c
       -> Decoder d
       -> Decoder e
       -> Decoder f
       -> Decoder g
       -> Decoder h
       -> Decoder i
       -> Decoder j
       -> Decoder k
       -> Decoder l
       -> Decoder m
       -> Decoder n
       -> Decoder o
       -> Decoder p
       -> Decoder result
map16 fn d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 d12 d13 d14 d15 d16 =
  Decode.succeed fn
    |> andMap d1
    |> andMap d2
    |> andMap d3
    |> andMap d4
    |> andMap d5
    |> andMap d6
    |> andMap d7
    |> andMap d8
    |> andMap d9
    |> andMap d10
    |> andMap d11
    |> andMap d12
    |> andMap d13
    |> andMap d14
    |> andMap d15
    |> andMap d16

map17 : (a -> b -> c -> d -> e -> f -> g -> h -> i -> j -> k -> l -> m -> n -> o -> p -> q -> result)
       -> Decoder a
       -> Decoder b
       -> Decoder c
       -> Decoder d
       -> Decoder e
       -> Decoder f
       -> Decoder g
       -> Decoder h
       -> Decoder i
       -> Decoder j
       -> Decoder k
       -> Decoder l
       -> Decoder m
       -> Decoder n
       -> Decoder o
       -> Decoder p
       -> Decoder q
       -> Decoder result
map17 fn d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 d12 d13 d14 d15 d16 d17 =
  Decode.succeed fn
    |> andMap d1
    |> andMap d2
    |> andMap d3
    |> andMap d4
    |> andMap d5
    |> andMap d6
    |> andMap d7
    |> andMap d8
    |> andMap d9
    |> andMap d10
    |> andMap d11
    |> andMap d12
    |> andMap d13
    |> andMap d14
    |> andMap d15
    |> andMap d16
    |> andMap d17

map18 : (a -> b -> c -> d -> e -> f -> g -> h -> i -> j -> k -> l -> m -> n -> o -> p -> q -> r -> result)
       -> Decoder a
       -> Decoder b
       -> Decoder c
       -> Decoder d
       -> Decoder e
       -> Decoder f
       -> Decoder g
       -> Decoder h
       -> Decoder i
       -> Decoder j
       -> Decoder k
       -> Decoder l
       -> Decoder m
       -> Decoder n
       -> Decoder o
       -> Decoder p
       -> Decoder q
       -> Decoder r
       -> Decoder result
map18 fn d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 d12 d13 d14 d15 d16 d17 d18 =
  Decode.succeed fn
    |> andMap d1
    |> andMap d2
    |> andMap d3
    |> andMap d4
    |> andMap d5
    |> andMap d6
    |> andMap d7
    |> andMap d8
    |> andMap d9
    |> andMap d10
    |> andMap d11
    |> andMap d12
    |> andMap d13
    |> andMap d14
    |> andMap d15
    |> andMap d16
    |> andMap d17
    |> andMap d18

map19 : (a -> b -> c -> d -> e -> f -> g -> h -> i -> j -> k -> l -> m -> n -> o -> p -> q -> r -> s -> result)
       -> Decoder a
       -> Decoder b
       -> Decoder c
       -> Decoder d
       -> Decoder e
       -> Decoder f
       -> Decoder g
       -> Decoder h
       -> Decoder i
       -> Decoder j
       -> Decoder k
       -> Decoder l
       -> Decoder m
       -> Decoder n
       -> Decoder o
       -> Decoder p
       -> Decoder q
       -> Decoder r
       -> Decoder s
       -> Decoder result
map19 fn d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 d12 d13 d14 d15 d16 d17 d18 d19 =
  Decode.succeed fn
    |> andMap d1
    |> andMap d2
    |> andMap d3
    |> andMap d4
    |> andMap d5
    |> andMap d6
    |> andMap d7
    |> andMap d8
    |> andMap d9
    |> andMap d10
    |> andMap d11
    |> andMap d12
    |> andMap d13
    |> andMap d14
    |> andMap d15
    |> andMap d16
    |> andMap d17
    |> andMap d18
    |> andMap d19

map20 : (a -> b -> c -> d -> e -> f -> g -> h -> i -> j -> k -> l -> m -> n -> o -> p -> q -> r -> s -> t -> result)
       -> Decoder a
       -> Decoder b
       -> Decoder c
       -> Decoder d
       -> Decoder e
       -> Decoder f
       -> Decoder g
       -> Decoder h
       -> Decoder i
       -> Decoder j
       -> Decoder k
       -> Decoder l
       -> Decoder m
       -> Decoder n
       -> Decoder o
       -> Decoder p
       -> Decoder q
       -> Decoder r
       -> Decoder s
       -> Decoder t
       -> Decoder result
map20 fn d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 d12 d13 d14 d15 d16 d17 d18 d19 d20 =
  Decode.succeed fn
    |> andMap d1
    |> andMap d2
    |> andMap d3
    |> andMap d4
    |> andMap d5
    |> andMap d6
    |> andMap d7
    |> andMap d8
    |> andMap d9
    |> andMap d10
    |> andMap d11
    |> andMap d12
    |> andMap d13
    |> andMap d14
    |> andMap d15
    |> andMap d16
    |> andMap d17
    |> andMap d18
    |> andMap d19
    |> andMap d20

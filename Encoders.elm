{-
This module provides some helper functions.
You shouldn't need to change anything in here.
-}

import Json.Encode as Encode exposing (..)
import Dict exposing(Dict)
import Set exposing(Set)

encodeTuple2 : (fst -> Encode.Value) -> (snd -> Encode.Value) -> ((fst, snd) -> Encode.Value)
encodeTuple2 encodeFst encodeSnd (fst, snd) =
    Encode.object [("f", encodeFst fst), ("s", encodeSnd snd)]


encodeTuple3 : (fst -> Encode.Value) -> (snd -> Encode.Value) -> (thd -> Encode.Value) -> ((fst, snd, thd) -> Encode.Value)
encodeTuple3 encodeFst encodeSnd encodeThd (fst, snd, thd) =
    Encode.object [("f", encodeFst fst), ("s", encodeSnd snd), ("t", encodeThd thd)]

encodeDict : (comparable -> Encode.Value) -> (v -> Encode.Value) -> (Dict comparable v -> Encode.Value)
encodeDict encodeKey encodeVal =
    Encode.list (encodeTuple2 encodeKey encodeVal) << Dict.toList

encodeList : (a -> Encode.Value) -> List a -> Encode.Value
encodeList = Encode.list

encodeMaybe : (a -> Encode.Value) -> Maybe a -> Encode.Value
encodeMaybe encodeA = 
  Maybe.withDefault Encode.null << Maybe.map encodeA
    
encodeSet : (a -> Encode.Value) -> Set a -> Encode.Value
encodeSet encodeA =
  Encode.list encodeA << Set.toList

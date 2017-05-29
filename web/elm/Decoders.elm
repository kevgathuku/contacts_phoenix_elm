module Decoders exposing (..)

import Json.Decode as Decode exposing (..)
import Json.Decode.Extra exposing ((|:))
import Model exposing (ContactList, Contact)


contactListDecoder : Decode.Decoder ContactList
contactListDecoder =
    succeed
        ContactList
        |: field "entries" (list contactDecoder)
        |: field "page_number" int
        |: field "total_entries" int
        |: field "total_pages" int


contactDecoder : Decode.Decoder Contact
contactDecoder =
    succeed
        Contact
        |: field "id" int
        |: field "first_name" string
        |: field "last_name" string
        |: field "gender" int
        |: field "birth_date" string
        |: field "location" string
        |: field "phone_number" string
        |: field "email" string
        |: field "headline" string
        |: field "picture" string

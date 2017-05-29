module Update exposing (..)

import Messages exposing (Msg(..))
import Model exposing (..)


-- model ! [] is shorthand for (model, Cmd.none)
-- model ! [ cmd1, cmd2, cmd3 ] is shorthand for (model, Cmd.batch [ cmd1, cmd2, cmd3 ])


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        FetchResult (Ok response) ->
            { model | contactList = response } ! []

        FetchResult (Err error) ->
            ( { model | error = Just "Something went wrong.." }, Cmd.none )

{-
   OpenAPI Petstore
   This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.

   OpenAPI spec version: 1.0.0

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git
   Do not edit this file manually.
-}


module Data.ApiResponse exposing (ApiResponse, apiResponseDecoder, apiResponseEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-| Describes the result of uploading an image resource
-}
type alias ApiResponse =
    { code : Maybe Int
    , type_ : Maybe String
    , message : Maybe String
    }


apiResponseDecoder : Decoder ApiResponse
apiResponseDecoder =
    decode ApiResponse
        |> optional "code" (Decode.nullable Decode.int) Nothing
        |> optional "type" (Decode.nullable Decode.string) Nothing
        |> optional "message" (Decode.nullable Decode.string) Nothing



apiResponseEncoder : ApiResponse -> Encode.Value
apiResponseEncoder model =
    Encode.object
        [ ( "code", withDefault Encode.null (map Encode.int model.code) )
        , ( "type", withDefault Encode.null (map Encode.string model.type_) )
        , ( "message", withDefault Encode.null (map Encode.string model.message) )
        ]


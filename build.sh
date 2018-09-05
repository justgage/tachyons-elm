#!/usr/bin/env bash

# This will build and make sure things compile
node scripts/convert.js && elm-format src/Tachyons/Classes.elm --yes && elm make src/Tachyons/Classes.elm && elm make --docs documentation.json

#!/usr/bin/env bash

# This will build and make sure things compile
node scripts/convert.js && elm-format Tachyons/Classes.elm --yes && elm-make Tachyons/Classes.elm && elm-make --docs documentation.json

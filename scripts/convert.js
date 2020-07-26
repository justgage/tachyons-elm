// to use this run `node ./index.js`

const extract = require("./custom-string-extract-class-names"); // original filters too short classes (e.g .b, .i)
const postcss = require("postcss");
const _ = require("lodash");
const fs = require("fs");

const elmHelpersPath = "./src/Tachyons.elm";
const elmClassesPath = "./src/Tachyons/Classes.elm";

const css = fs.readFileSync("./scripts/tachyons.min.css", "utf8");
const root = postcss.parse(css);
const classObjs = {};
const defaultIndentation = " ".repeat(4);

const ruleFormatter = rule => {
  let def = rule.toString().replace("{-", "{ -");
  def = setCorrectIndentation(def);
  return def;
};

const setCorrectIndentation = text => {
  // normalize indentation
  if (/ {4}/.test(text)) {
    text = text.replace(/\n {2}/g, "\n");
  }
  // set indentation
  text = text.replace(/\n/g, "\n" + defaultIndentation);
  return text;
};

/**
 * This will walk through each of the css rules in Tachyons
 * and pull out the relevent information.
 */
root.walkRules(rule => {
  const names = new Set( // get unique classes
    extract(rule.selector)
      .filter(str => /^\./g.test(str)) // only want classes, no ids
      .map(s => s.replace(".", "")) // no dots
  );

  names.forEach(name => {
    const obj = {
      name,
      elmName: name.replace(/-/g, "_"),
      def: ruleFormatter(rule)
    };

    console.log(obj);

    if (name in classObjs)
      classObjs[name].def += "\n" + defaultIndentation + obj.def;
    // class has been already registered, only append new def
    else classObjs[name] = obj;
  });
});

const classes = _(classObjs).sortBy("name");

// creates an elm variable for each class
const elmify = cl => {
  return `
{-| This class maps to this CSS definition:

    ${cl.def}

-}
${cl.elmName} : String
${cl.elmName} =
    "${cl.name}"


`;
};

const funcNames = classes.map(({ elmName }) => elmName).join(", ");

// Creates a string for Tachyons.Classes module
const classesString = `
module Tachyons.Classes exposing (${funcNames})

{-|

These are all the classes ported from Tachyons. __NOTE__: this is a auto-generated file by \`scripts/index.js\`

# Useless Docs below:

Yes these docs are useless, please look at [Tachyons Table of Styles](http://tachyons.io/docs/table-of-styles/) for the definitions of these classes. Keep in mind this was made with a script (not typed by hand ).

They do however show the minifed css definition as their comment.

# Classes and their Definitions

@docs ${funcNames}

-}

${classes.map(elmify).join("")}`;

// Creates a string for Tachyons module
const helpersString = `
module Tachyons exposing (classes, tachyons, tachyonsStylesheet)

{-| [Tachyons](http://tachyons.io/) is _the_ best CSS framework ever. It's an implementation of
what people call "Functional CSS" which makes working with CSS a little bit easier.

In functional CSS you have a ton of little CSS classes that do one thing, and
do it well #unixphilosophy.

Essentially what this means is that can create almost any interface without
writing custom css, you only need to compose different CSS selectors together.
Here is an example:

    div [classes [pa1, red, f1]] []

This will:

  - Add the smallest padding available on all four sides (Padding Around 1)
  - Make the foreground color red (an Accessible friendly version)
  - Make the \`font-size\` as big as an h1 tag.

There's even responsive versions. Like \`p1_ns\` that will only add padding
to anything that is "not small" (larger than mobile). This style allows you to easily create responsive mobile interfaces.


# Working example

To use the library, just put \`tachyons.css\` somewhere in your elm-html code to add the stylesheet to your document, and then you can do whatever you want!
Here is a small example:

    module Main exposing (..)

    import Tachyons exposing (classes, tachyons)
    import Tachyons.Classes exposing (f1, purple)
    import Html exposing (..)


    main =
        div [ classes [ f1, purple ] ]
            [ tachyons.css
            , text "I'm Purple and big!"
            ]

# Helper Classes

@docs classes, tachyons, tachyonsStylesheet
-}

import Html exposing (..)
import Html.Attributes exposing (class, href, rel)


{-| This is a helper function that will allow you to combine
multiple Tachyons classes (which are strings) are return a
\`Html.Attributes\`

    div [classes [pa3, red, f1]] []

-}
classes : List String -> Html.Attribute msg
classes stringList =
    class (String.join " " stringList)


{-| [Tachyons](http://tachyons.io/)

This basically includes an \`<style>\` tag containing the inline CSS code
for the tachyons version this library supports. Namely 4.12.0.

To use it just place it inside of a HTML tag like so:

    div [] [ tachyons.css ]

If you want to use it from a CDN link rather than a \`<style>\` tag I would encourage you to
include the CDN link in your HTML like so:

    <!-- NOTE: this is outside of Elm, inside of Elm it will cause a css flash -->
    <link rel="stylesheet" href="https://unpkg.com/tachyons@4.11.1/css/tachyons.min.css"/>

then use the \`Tachyons.Classes\` as you normally would.
-}
tachyons : { css : Html msg }
tachyons =
    { css =
        node "style"
            []
            [ text tachyonsStylesheet]
    }

{-|
This is a helper function that exports the tachyons stylesheet as a string,
allowing you to define your own <style> tag, if need be.

    node "style" [] [ text tachyonsStylesheet ]
-}
tachyonsStylesheet : String
tachyonsStylesheet =
  """${css}"""
`;

// Writes the string to Tachyons.Classes.elm
fs.writeFile(elmClassesPath, classesString, function(err) {
  if (err) {
    return console.log(err);
  }
  console.log(elmClassesPath, "was saved!");
});

// Writes the string to Tachyons.elm
fs.writeFile(elmHelpersPath, helpersString, function(err) {
  if (err) {
    return console.log(err);
  }
  console.log(elmHelpersPath, "was saved!");
});

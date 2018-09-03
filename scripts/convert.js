// to use this run `node ./index.js`

// const extract = require('string-extract-class-names')
const extract = require("./custom-string-extract-class-names"); // original filters too short classes (e.g .b, .i)

const postcss = require("postcss");
const _ = require("lodash");
const exportPath = "./src/Tachyons/Classes.elm";

fs = require("fs");

const css = fs.readFileSync("./scripts/tachyons.css", "utf8"); // minificated version introduces problems with compound selectors

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
      classObjs[name].def += "\n" + defaultIndentation + obj.def; // class has been already registered, only append new def
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

// // string of the elm file
const elmString = `
module Tachyons.Classes exposing (..)

{-|

These are all the classes ported from Tachyons. __NOTE__: this is a auto-generated file by \`scripts/index.js\`

# Useless Docs below:

Yes these docs are useless, please look at [Tachyons Table of Styles](http://tachyons.io/docs/table-of-styles/) for the definitions of these classes. Keep in mind this was made with a script (not typed by hand ).

They do however show the minifed css definition as their comment.

# Classes and their Definitions

@docs ${classes.map(({ elmName }) => elmName).join(", ")}

-}

${classes.map(elmify).join("")}`;

// writing the string to the file
fs.writeFile(exportPath, elmString, function(err) {
  if (err) {
    return console.log(err);
  }

  console.log(exportPath, "was saved!");
});

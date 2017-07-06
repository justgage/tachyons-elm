// to use this run `node ./index.js`
const extract = require('string-extract-class-names');
const postcss = require('postcss');
const _ = require('lodash');
const exportPath = './Tachyons/Classes.elm';

fs = require('fs');

const css = fs.readFileSync('./scripts/tachyons.min.css', 'utf8');

const root = postcss.parse(css);

const classObjs = [];

/**
 * This will walk through each of the css rules in Tachyons
 * and pull out the relevent information.
 */
root.walkRules(rule => {
  if (rule.selector.charAt(0) === '.') {
    const names = extract(rule.selector)
      .filter(str => /^\./g.test(str)) // only want classes, noid's
      .map(s => s.replace('.', '')); // no dots

    if (names.length !== 1) {
      return; // skip if it's a compound name
    }
    const name = names[0];

    console.log(name);

    const obj = {
      name,
      elmName: name.replace(/-/g, '_'),
      def: rule.toString().replace('{-', '{ -'),
    };

    console.log(obj);
    classObjs.push(obj);
  } else return;
});

const classes = _(classObjs).sortBy('name').uniqBy('name');

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

@docs ${classes.map(({ elmName }) => elmName).join(', ')}

-}

${classes.map(elmify).join('')}`;

// writing the string to the file
fs.writeFile(exportPath, elmString, function(err) {
  if (err) {
    return console.log(err);
  }

  console.log(exportPath, 'was saved!');
});

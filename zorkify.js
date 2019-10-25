const { Location, Intro } = require("./code_blocks");
const validateMaze = require("./validator");
yaml = require('js-yaml');
fs   = require('fs');

const mazeDoc = yaml.safeLoad(fs.readFileSync('./ghoost.yaml', 'utf8'));

const locations = mazeDoc.locations.map(locationDoc => new Location(locationDoc, mazeDoc.global));

console.log(validateMaze(locations));

const intro = new Intro(mazeDoc.intro, 13);

const codeBlocks = [intro].concat(locations).sort((first, second) => first.prefix - second.prefix);

let code = codeBlocks.reduce((acc, codeBlock) => {
  return acc.concat(codeBlock.getLines().concat(""))
}, []).join("\n");

fs.writeFileSync('./ghoost.bas', code, 'utf8');

console.log('Wrote ./ghoost.bas');

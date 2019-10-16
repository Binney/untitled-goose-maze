const { Location, Intro } = require("./code_blocks");
yaml = require('js-yaml');
fs   = require('fs');

const mazeDoc = yaml.safeLoad(fs.readFileSync('./maze.yaml', 'utf8'));

const locations = mazeDoc.locations.map(locationDoc => new Location(locationDoc));

const intro = new Intro(mazeDoc.intro, 13);

const codeBlocks = [intro].concat(locations);

let code = codeBlocks.reduce((acc, codeBlock) => {
  return acc.concat(codeBlock.renderLines().concat(""))
}, []).join("\n");

fs.writeFileSync('./game.bas', code, 'utf8');
const Location = require("./location");
yaml = require('js-yaml');
fs   = require('fs');

const locationDocs = yaml.safeLoad(fs.readFileSync('./locations.yaml', 'utf8'));

const locations = locationDocs.locations.map(cellDoc => new Location(cellDoc));

let code = locations.reduce((acc, cell) => {
  return acc.concat(cell.renderLines().concat(""))
}, []).join("\n");

console.log(code);

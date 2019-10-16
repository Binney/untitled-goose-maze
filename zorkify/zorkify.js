const Location = require("./location");

const cells = [
  new Location(
    3,
    3,
    "13 G - Letterbox",
    [
      "you are at a crossroads, to the west of a white house. there is a small *mailbox* here."
    ],
    {"open mailbox": "you open the mailbox with your bill. there is a letter in the mailbox. that letter is: **g**"},
    true, true, true, true
  ),
  new Location(
    4,
    3,
    "14 R - White House",
    [
      "the door to the white house is boarded up, probably following the impeachment enquiry. the letter **r** is scratched into the board.",
      "there are walls to the north and south."
    ],
    {},
    false, false, true, true)
];

let code = cells.reduce((acc, cell) => {
  return acc.concat(cell.renderLines().concat(""))
}, []).join("\n");

console.log(code);

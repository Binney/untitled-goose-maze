class CodeBlock {
  constructor() {
    this.lines = [];
  }

  getLines() {
    return this.lines.sort((first, second) => first.number - second.number).map(line => line.render());
  }

  addNewLine(index, command) {
    const line = new Line(this.prefix, index, command);
    this.lines.push(line);
    return line;
  }
}

class Intro extends CodeBlock {
  constructor(doc) {
    super();
    this.prefix = "";
    this.petsciiArts = doc.petsciiArts;
    this.intros = doc.intros;
    this.nextIndex = 10;
    this.startLocationX = doc.startLocation.x;
    this.startLocationY = doc.startLocation.y;

    this.generateLines();
  }

  generateLines() {
    const startLine = this.addNewLine(this.getNextIndex(), 'REM INTRO');
    this.petsciiArts.forEach(petsciiArt => this.generatePetsciiArtCode(petsciiArt));
    this.intros.forEach(intro => this.generateIntroCode(intro));
    this.addNewLine(this.getNextIndex(), `GOTO ${Location.buildPrefix(this.startLocationX, this.startLocationY)}000`);
  }

  generatePetsciiArtCode(petsciiArt) {
    petsciiArt.split(/\r?\n/).forEach(petsciiLine => this.addNewLine(this.getNextIndex(), `PRINT "${petsciiLine}"`));
    this.addNewLine(this.getNextIndex(), 'PRINT');
    this.addNewLine(this.getNextIndex(), 'INPUT ">"; C$ : PRINT');
  }

  generateIntroCode(intro) {
    splitTextIntoLines(intro).forEach(textLine => {
      this.addNewLine(this.getNextIndex(), `PRINT "${processString(textLine)}"`)
    });
    this.addNewLine(this.getNextIndex(), 'PRINT');
    this.addNewLine(this.getNextIndex(), 'INPUT ">"; C$ : PRINT');
  }

  getNextIndex() {
    const index = this.nextIndex;
    this.nextIndex++;
    return index;
  }
}

class Location extends CodeBlock {
  constructor(doc, globalDoc) {
    super();
    this.x = doc.x;
    this.y = doc.y;
    this.prefix = Location.buildPrefix(this.x, this.y);
    this.name = doc.name;
    this.intros = doc.intros;
    this.actions = (doc.actions || []).concat(globalDoc.actions);
    this.nextIntroIndex = 0;
    this.nextInputIndex = 100;
    this.nextOutputIndex = 200;
    this.north = doc.north;
    this.south = doc.south;
    this.east = doc.east;
    this.west = doc.west;

    this.generateLines();
  }

  generateLines() {
    const startLine = this.addNewLine(this.getNextIntroIndex(), `REM ${this.name}`);
    this.intros.forEach(intro => {
      splitTextIntoLines(intro).forEach(textLine => {
        this.addNewLine(this.getNextIntroIndex(), `PRINT "${processString(textLine)}"`)
      });
      this.addNewLine(this.getNextIntroIndex(), 'PRINT')
    });
    this.inputLine = this.addNewLine(this.getNextIntroIndex(), 'C$ = "" : INPUT ">"; C$ : PRINT');
    const bonkLine = this.addNewLine(this.getNextOutputIndex(), `PRINT "bonk!" : PRINT : GOTO ${this.inputLine.number}`);

    this.addNewLine(this.getNextInputIndex(), `IF C$ = "look" GOTO ${startLine.number};`);

    if (this.west) {
      this.addNewLine(this.getNextInputIndex(), `IF C$ = "west" OR C$ = "go west" GOTO ${Location.buildPrefix(this.x - 1, this.y)}000;`);
    } else {
      this.addNewLine(this.getNextInputIndex(), `IF C$ = "west" OR C$ = "go west" GOTO ${bonkLine.number};`);
    }

    if (this.east) {
      this.addNewLine(this.getNextInputIndex(), `IF C$ = "east" OR C$ = "go east" GOTO ${Location.buildPrefix(this.x + 1, this.y)}000;`);
    } else {
      this.addNewLine(this.getNextInputIndex(), `IF C$ = "east" OR C$ = "go east" GOTO ${bonkLine.number};`);
    }

    if (this.north) {
      this.addNewLine(this.getNextInputIndex(), `IF C$ = "north" OR C$ = "go north" GOTO ${Location.buildPrefix(this.x, this.y - 1)}000;`);
    } else {
      this.addNewLine(this.getNextInputIndex(), `IF C$ = "north" OR C$ = "go north" GOTO ${bonkLine.number};`);
    }

    if (this.south) {
      this.addNewLine(this.getNextInputIndex(), `IF C$ = "south" OR C$ = "go south" GOTO ${Location.buildPrefix(this.x, this.y + 1)}000;`);
    } else {
      this.addNewLine(this.getNextInputIndex(), `IF C$ = "south" OR C$ = "go south" GOTO ${bonkLine.number};`);
    }

    if (this.actions) {
      this.actions.forEach(action => {
        let firstOutputLine;
        action.outputs.forEach(output => {
          splitTextIntoLines(output).forEach(textLine => {
            const line = this.addNewLine(this.getNextOutputIndex(), `PRINT "${processString(textLine)}"`);
            if (firstOutputLine === undefined) {
              firstOutputLine = line;
            }
          });
          this.addNewLine(this.getNextOutputIndex(), 'PRINT')
        });
        this.addNewLine(this.getNextOutputIndex(), `GOTO ${this.inputLine.number}`);
        action.inputs.forEach(input => this.addNewLine(this.getNextInputIndex(), `IF C$ = "${input.toLowerCase()}" GOTO ${firstOutputLine.number};`));
      });
    }

    this.addNewLine(this.getNextInputIndex(), `PRINT "404 command not found" : PRINT : GOTO ${this.inputLine.number}`)
  }

  getNextIntroIndex() {
    const index = this.nextIntroIndex;
    this.nextIntroIndex++;
    return index;
  }

  getNextInputIndex() {
    const index = this.nextInputIndex;
    this.nextInputIndex++;
    return index;
  }

  getNextOutputIndex() {
    const index = this.nextOutputIndex;
    this.nextOutputIndex++;
    return index;
  }

  static buildPrefix(x, y) {
    return x.toString() + y.toString();
  }
}

class Line {
  constructor(prefix, index, command) {
    this.number = Line.lineNumber(prefix, index);
    this.command = command;
  }

  render() {
    return `${this.number} ${this.command}`;
  }

  static lineNumber(prefix, index) {
    if (prefix.length > 0) {
      return prefix + Line.padWithZeroes(index, 3);
    } else {
      return index.toString();
    }
  }

  static padWithZeroes(number, length) {
    let string = number.toString();
    while (string.length < length) {
      string = "0" + string;
    }
    return string;
  }
}

function splitTextIntoLines(text) {
  const MAX_LINE_LENGTH = 39;

  const words = text.split(" ");

  const {fullLines, latestLine} = words.reduce(({fullLines, latestLine}, word) => {
    if (latestLine === "") {
      return {fullLines: fullLines, latestLine: word};
    } else {
      const line = latestLine + " " + word;
      if (replaceAll(replaceAll(line, "[[", ""), "]]", "").length > MAX_LINE_LENGTH) {
        return {fullLines: fullLines.concat([latestLine]), latestLine: word}
      } else {
        return {fullLines: fullLines, latestLine: latestLine + " " + word}
      }
    }
  }, {fullLines: [], latestLine: ""});

  return fullLines.concat([latestLine]);
}

function processString(text) {
  let processedText = text.toLowerCase();
  processedText = replaceAll(processedText, "[[", "{cyan}");
  processedText = replaceAll(processedText, "]]", "{light blue}");
  return processedText;
}

function replaceAll(string, searchValue, replaceValue) {
  let processedString = string;
  while (processedString.indexOf(searchValue) >= 0) {
    processedString = processedString.replace(searchValue, replaceValue);
  }
  return processedString;
}

module.exports = {
  Location: Location,
  Intro: Intro
};

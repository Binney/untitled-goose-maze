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
    this.introBlocks = doc.introBlocks;
    this.nextIndex = 10;
    this.startLocationX = doc.startLocation.x;
    this.startLocationY = doc.startLocation.y;

    this.generateLines();
  }

  generateLines() {
    const startLine = this.addNewLine(this.getNextIndex(), 'REM INTRO');
    this.introBlocks.forEach(introBlock => this.generateIntroBlockCode(introBlock));
    this.addNewLine(this.getNextIndex(), `GOTO ${Location.buildPrefix(this.startLocationX, this.startLocationY)}00`);
  }

  generateIntroBlockCode(introBlock) {
    introBlock.split(/\r?\n/).forEach(intro => this.addNewLine(this.getNextIndex(), `PRINT "${intro.toLowerCase()}"`));
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
    this.nextInputIndex = 10;
    this.nextOutputIndex = 50;
    this.north = doc.north;
    this.south = doc.south;
    this.east = doc.east;
    this.west = doc.west;

    this.generateLines();
  }

  generateLines() {
    const startLine = this.addNewLine(this.getNextIntroIndex(), `REM ${this.name}`);
    this.intros.forEach(intro => this.addNewLine(this.getNextIntroIndex(), `PRINT "${intro.toLowerCase()}" : PRINT`));
    this.inputLine = this.addNewLine(this.getNextIntroIndex(), 'C$ = "" : INPUT ">"; C$ : PRINT');
    const bonkLine = this.addNewLine(this.getNextOutputIndex(), `PRINT "bonk!" : PRINT : GOTO ${this.inputLine.number}`);

    this.addNewLine(this.getNextInputIndex(), `IF C$ = "look" GOTO ${startLine.number};`);

    if (this.west) {
      this.addNewLine(this.getNextInputIndex(), `IF C$ = "west" OR C$ = "go west" GOTO ${Location.buildPrefix(this.x - 1, this.y)}00;`);
    } else {
      this.addNewLine(this.getNextInputIndex(), `IF C$ = "west" OR C$ = "go west" GOTO ${bonkLine.number};`);
    }

    if (this.east) {
      this.addNewLine(this.getNextInputIndex(), `IF C$ = "east" OR C$ = "go east" GOTO ${Location.buildPrefix(this.x + 1, this.y)}00;`);
    } else {
      this.addNewLine(this.getNextInputIndex(), `IF C$ = "east" OR C$ = "go east" GOTO ${bonkLine.number};`);
    }

    if (this.north) {
      this.addNewLine(this.getNextInputIndex(), `IF C$ = "north" OR C$ = "go north" GOTO ${Location.buildPrefix(this.x, this.y - 1)}00;`);
    } else {
      this.addNewLine(this.getNextInputIndex(), `IF C$ = "north" OR C$ = "go north" GOTO ${bonkLine.number};`);
    }

    if (this.south) {
      this.addNewLine(this.getNextInputIndex(), `IF C$ = "south" OR C$ = "go south" GOTO ${Location.buildPrefix(this.x, this.y + 1)}00;`);
    } else {
      this.addNewLine(this.getNextInputIndex(), `IF C$ = "south" OR C$ = "go south" GOTO ${bonkLine.number};`);
    }

    if (this.actions) {
      this.actions.forEach(action => {
        const outputLines = action.outputs.map(output => this.addNewLine(this.getNextOutputIndex(), `PRINT "${output.toLowerCase()}" : PRINT`));
        this.addNewLine(this.getNextOutputIndex(), `GOTO ${this.inputLine.number}`);
        action.inputs.forEach(input => this.addNewLine(this.getNextInputIndex(), `IF C$ = "${input.toLowerCase()}" GOTO ${outputLines[0].number};`));
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
      return prefix + Line.padWithZeroes(index, 2);
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

module.exports = {
  Location: Location,
  Intro: Intro
};

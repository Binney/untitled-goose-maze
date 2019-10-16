class Location {
  constructor(doc) {
    this.x = doc.x;
    this.y = doc.y;
    this.name = doc.name;
    this.intros = doc.intros;
    this.actions = doc.actions;
    this.nextIntroIndex = 0;
    this.nextInputIndex = 10;
    this.nextOutputIndex = 50;
    this.north = doc.north;
    this.south = doc.south;
    this.east = doc.east;
    this.west = doc.west;

    this.lines = [];

    this.generateLines();
  }

  generateLines() {
    const startLine = this.addNewLine(this.getNextIntroIndex(), `REM ${this.name}`);
    this.intros.forEach(intro => this.addNewLine(this.getNextIntroIndex(), `PRINT "${intro.toLowerCase()}"`));
    const inputLine = this.addNewLine(this.getNextIntroIndex(), 'INPUT ">"; C$');
    const bonkLine = this.addNewLine(this.getNextOutputIndex(), `PRINT "bonk!" : GOTO ${inputLine.number}`);

    this.addNewLine(this.getNextInputIndex(), `IF C$ = "look" GOTO ${startLine.number};`);

    if (this.west) {
      this.addNewLine(this.getNextInputIndex(), `IF C$ = "west" GOTO ${buildPrefix(this.x - 1, this.y)}00;`);
    } else {
      this.addNewLine(this.getNextInputIndex(), `IF C$ = "west" GOTO ${bonkLine.number};`);
    }

    if (this.east) {
      this.addNewLine(this.getNextInputIndex(), `IF C$ = "east" GOTO ${buildPrefix(this.x + 1, this.y)}00;`);
    } else {
      this.addNewLine(this.getNextInputIndex(), `IF C$ = "east" GOTO ${bonkLine.number};`);
    }

    if (this.north) {
      this.addNewLine(this.getNextInputIndex(), `IF C$ = "north" GOTO ${buildPrefix(this.x, this.y - 1)}00;`);
    } else {
      this.addNewLine(this.getNextInputIndex(), `IF C$ = "north" GOTO ${bonkLine.number};`);
    }

    if (this.south) {
      this.addNewLine(this.getNextInputIndex(), `IF C$ = "south" GOTO ${buildPrefix(this.x, this.y + 1)}00;`);
    } else {
      this.addNewLine(this.getNextInputIndex(), `IF C$ = "south" GOTO ${bonkLine.number};`);
    }

    if (this.actions) {
      this.actions.forEach(action => {
        const outputLines = action.outputs.map(output => this.addNewLine(this.getNextOutputIndex(), `PRINT "${output.toString()}" : GOTO ${inputLine.number}`));
        action.inputs.forEach(input => this.addNewLine(this.getNextInputIndex(), `IF C$ = "${input}" GOTO ${outputLines[0].number};`));
      });
    }

    this.addNewLine(this.getNextInputIndex(), `PRINT "404 command not found" : GOTO ${inputLine.number}`)
  }

  renderLines() {
    return this.lines.sort((first, second) => first.number - second.number).map(line => line.render());
  }

  addNewLine(index, command) {
    const line = new Line(this.x, this.y, index, command);
    this.lines.push(line);
    return line;
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
}

class Line {
  constructor(x, y, index, command) {
    this.number = lineNumber(x, y, index);
    this.command = command;
  }

  render() {
    return `${this.number} ${this.command}`;
  }
}

function padWithZeroes(number, length) {
  let string = number.toString();
  while (string.length < length) {
    string = "0" + string;
  }
  return string;
}

function buildPrefix(x, y) {
  return x.toString() + y.toString();
}

function lineNumber(x, y, index) {
  const prefix = buildPrefix(x, y);
  const suffix = padWithZeroes(index, 2);

  return prefix + suffix;
}

module.exports = Location;

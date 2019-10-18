function validateLocations(locations) {
  const locationHash = {};
  locations.forEach(location => {
    locationHash[location.x] || (locationHash[location.x] = {});
    return locationHash[location.x][location.y] = location;
  });

  for (let i in locations) {
    const location = locations[i];
    const x = location.x;
    const y = location.y;

    if (location.north && !(locationHash[x] && locationHash[x][y - 1] && locationHash[x][y - 1].south)) {
      return `Invalid North for ${x},${y}`;
    }

    if (location.south && !(locationHash[x] && locationHash[x][y + 1] && locationHash[x][y + 1].north)) {
      return `Invalid South for ${x},${y}`;
    }

    if (location.west && !(locationHash[x - 1] && locationHash[x - 1][y] && locationHash[x - 1][y].east)) {
      return `Invalid West for ${x},${y}`;
    }

    if (location.east && !(locationHash[x + 1] && locationHash[x + 1][y] && locationHash[x + 1][y].west)) {
      return `Invalid East for ${x},${y}`;
    }
  }

  return "Maze is valid";
}

module.exports = validateLocations;

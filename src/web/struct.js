Number.prototype.pad = function(size) {
  var s = String(this);
  while (s.length < (size || 2)) {s = "0" + s;}
  return s;
}
Array.prototype.remove = function(index) {
  delete this[index];
  for (var i = index + 1; i < this.length; i++)
    this[i-1] = this[i];
  this.pop();
}
Array.prototype.insert = function(index, value) {
  this.unshift(undefined);
  for (var i = 0; i < index + 1; i++)
    this[i-1] = this[i];
  this[index] = value;
}
class object {
  constructor({x = 0, y = 0, hspeed = 0, vspeed = 0}) {
    var index = lastobjindex
    lastobjindex += 1
    function kill() { objects.remove(id); }
    objects.push(this);
    var id = objects.length;
  }
}
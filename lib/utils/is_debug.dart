bool isDebug() {
  var debug = false;
  // In releases assertions are not evaluated.
  assert(debug = true);

  return debug;
}

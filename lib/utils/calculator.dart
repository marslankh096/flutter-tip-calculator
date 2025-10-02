double calculateTip(double cost, double percent, bool roundUp) {
  double tip = cost * percent;
  if (roundUp) {
    tip = tip.ceilToDouble();
  }
  return tip;
}

abstract class AppAssets {
  static const images = _Images();
  static const svg = _Svg();
}

class _Images {
  const _Images();
  final String accImage = 'assets/images/bitmap/avatar.png';
  final String oopsImage = 'assets/images/bitmap/oops.png';
}

class _Svg {
  const _Svg();
  final String optionsNavIcon = 'assets/images/svg/options.svg';
  final String pollsNavIcon = 'assets/images/svg/polls.svg';
  final String quotasNavIcon = 'assets/images/svg/quotas.svg';
  final String statisticsNavIcon = 'assets/images/svg/statistics.svg';
  final String actionSearchAppBar = 'assets/images/svg/search.svg';
  final String actionFilterAppBar = 'assets/images/svg/filter.svg';
  final String folder = 'assets/images/svg/folder.svg';
}

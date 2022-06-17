class University {
  final String titleRu;
  final String titleKz;
  final String addressRu;
  final String addressKz;
  final double percentageOfEmployment;

  const University({
    required this.titleKz,
    required this.titleRu,
    required this.addressKz,
    required this.addressRu,
    required this.percentageOfEmployment,
  });
}

extension UniversityX on University {
  String get title {
    return titleKz;
  }

  String get address {
    return addressKz;
  }
}

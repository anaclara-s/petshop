void main() {
  List<String> dogBreedsList = [
    'PUG',
    'SHIH TZU',
    'BULDOGUE',
    'DACHSHUND',
    'PASTOR ALEMÃO',
    'POODLE',
    'ROTTWEILER',
    'LABRADOR',
    'PINSCHER',
    'GOLDEN RETRIEVER',
    'SEM RAÇA DEFINIDA (SRD)',
    'OUTROS',
  ];

  List<String> catBreedsList = [
    'PERSA',
    'SIAMÊS',
    'MAINE COON',
    'ANGORÁ',
    'SPHYNX',
    'RAGDOLL',
    'ASHERA',
    'AMERICAN SHORTHAIR',
    'EXÓTICO',
    'SEM RAÇA DEFINIDA (SRD)',
    'OUTROS',
  ];

  List<String> birdBreedsList = [
    'CANÁRIO',
    'CALOPSITA',
    'MANON',
    'PERIQUITO AUSTRALIANO',
    'PAPAGAIO',
    'CACATUA',
    'ARARA',
    'SABIÁ',
    'MARITACA',
    'DIAMANTE GOLD',
    'OUTROS',
  ];

  dogBreedsList.sort(((a, b) => a.toLowerCase().compareTo(b.toLowerCase())));
  catBreedsList.sort(((a, b) => a.toLowerCase().compareTo(b.toLowerCase())));
  birdBreedsList.sort(((a, b) => a.toLowerCase().compareTo(b.toLowerCase())));
}

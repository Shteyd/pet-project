class Urls {
  static const String baseUrl = 'https://rickandmortyapi.com/graphql';
  static getCharacterAvatar(int characterId) =>
      'https://rickandmortyapi.com/api/character/avatar/$characterId.jpeg';
}

class GraphQLQuerries {
  static getCharacter(int id) => '''
query {
  character(id: $id) {
    id
    name
    status
    species
    type
    gender
    origin {
      id
      name
      type
      dimension
    }
  }
}
''';

  static getCharacters(int pageId) => '''
query {
  characters(page: $pageId) {
    results {
      id
      name
      status
      species
      type
      gender
      origin {
        id
        name
        type
        dimension
      }
    }
  }
}
''';
}

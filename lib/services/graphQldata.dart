import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQlObject {
  static HttpLink httpLink = HttpLink(
    uri: 'https://flutter-hasura-todo.herokuapp.com/v1alpha1/graphql',
  );
  static AuthLink authLink = AuthLink();
  static Link link = httpLink as Link;
  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      cache: InMemoryCache(),
      link: link,
    ),
  );
  String getQuery = """query TodoGet{
  todo {
    id
    isCompleted
    task
  }
}
""";
}

GraphQlObject graphQlObject = new GraphQlObject();

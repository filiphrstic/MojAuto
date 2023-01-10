# mobile

## Concepts
1. GraphQL - Flutter - https://pub.dev/packages/graphql_flutter.
But instead of using dynamic queries/mutators and then having a dynamic json as a result - we do use another library/concept (from #2)
2. Artemis code generator - https://pub.dev/packages/artemis. Allows us to code-generate proper classes and abstractions based on schema provided by server.
3. Flutter hooks - help with component lifecycle: https://pub.dev/packages/flutter_hooks
Read why: https://medium.com/@dan_abramov/making-sense-of-react-hooks-fdbde8803889 (the reading is about react but concept applies here as well)

## How-to create/use a new entity
1. Make sure your graphql schema is up to date. You can download schema here: http://api.autofox.iddqd.hr/graphql -> sidebar Schema -> Download SDL. Put the schema to `./lib/data/graphql/schema.graphql`
1. Create a folder for entity (use plural) in `./lib/data/repos/`
2. For each query that you plan to use, create an appropriate graphql file. Try to match filename to be same as provided by the backend. I.e. use `findAllCategories` and not `listCategories` or `categoriesGetAll`, to avoid confusion. If you want to provide arguments - you can adjust naming but keep same standard. You can find query examples here: https://dev.azure.com/iddqd-hr/Autofox/_wiki/wikis/Autofox.wiki/5/GraphQL. If you happen to write a query not mentioned in the wiki - please add it there!
3. Run `Flutter-build-packages` (vscode task) so it generated dynamic schema to `./lib/data/graphql/`
4. Use the query in the code!


## Vscode extentions:

1. Flutter: https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter
2. Prisma: https://marketplace.visualstudio.com/items?itemName=Prisma.prisma
3. GraphQL: https://marketplace.visualstudio.com/items?itemName=GraphQL.vscode-graphql

import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class FragmentPokemonItem {
  FragmentPokemonItem({
    this.$__typename = 'Pokemon',
    required this.id,
    this.name,
    this.image,
    this.classification,
    this.types,
    this.maxCP,
    this.maxHP,
  });

  factory FragmentPokemonItem.fromJson(Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$classification = json['classification'];
    final l$types = json['types'];
    final l$maxCP = json['maxCP'];
    final l$maxHP = json['maxHP'];
    return FragmentPokemonItem(
      $__typename: (l$$__typename as String),
      id: (l$id as String),
      name: (l$name as String?),
      image: (l$image as String?),
      classification: (l$classification as String?),
      types: (l$types as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      maxCP: (l$maxCP as int?),
      maxHP: (l$maxHP as int?),
    );
  }

  final String $__typename;

  final String id;

  final String? name;

  final String? image;

  final String? classification;

  final List<String?>? types;

  final int? maxCP;

  final int? maxHP;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$classification = classification;
    _resultData['classification'] = l$classification;
    final l$types = types;
    _resultData['types'] = l$types?.map((e) => e).toList();
    final l$maxCP = maxCP;
    _resultData['maxCP'] = l$maxCP;
    final l$maxHP = maxHP;
    _resultData['maxHP'] = l$maxHP;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$id = id;
    final l$name = name;
    final l$image = image;
    final l$classification = classification;
    final l$types = types;
    final l$maxCP = maxCP;
    final l$maxHP = maxHP;
    return Object.hashAll([
      l$$__typename,
      l$id,
      l$name,
      l$image,
      l$classification,
      l$types == null ? null : Object.hashAll(l$types.map((v) => v)),
      l$maxCP,
      l$maxHP,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is FragmentPokemonItem) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$classification = classification;
    final lOther$classification = other.classification;
    if (l$classification != lOther$classification) {
      return false;
    }
    final l$types = types;
    final lOther$types = other.types;
    if (l$types != null && lOther$types != null) {
      if (l$types.length != lOther$types.length) {
        return false;
      }
      for (int i = 0; i < l$types.length; i++) {
        final l$types$entry = l$types[i];
        final lOther$types$entry = lOther$types[i];
        if (l$types$entry != lOther$types$entry) {
          return false;
        }
      }
    } else if (l$types != lOther$types) {
      return false;
    }
    final l$maxCP = maxCP;
    final lOther$maxCP = other.maxCP;
    if (l$maxCP != lOther$maxCP) {
      return false;
    }
    final l$maxHP = maxHP;
    final lOther$maxHP = other.maxHP;
    if (l$maxHP != lOther$maxHP) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionFragmentPokemonItem on FragmentPokemonItem {
  CopyWithFragmentPokemonItem<FragmentPokemonItem> get copyWith =>
      CopyWithFragmentPokemonItem(
        this,
        (i) => i,
      );
}

abstract class CopyWithFragmentPokemonItem<TRes> {
  factory CopyWithFragmentPokemonItem(
    FragmentPokemonItem instance,
    TRes Function(FragmentPokemonItem) then,
  ) = _CopyWithImplFragmentPokemonItem;

  factory CopyWithFragmentPokemonItem.stub(TRes res) =
      _CopyWithStubImplFragmentPokemonItem;

  TRes call({
    String? $__typename,
    String? id,
    String? name,
    String? image,
    String? classification,
    List<String?>? types,
    int? maxCP,
    int? maxHP,
  });
}

class _CopyWithImplFragmentPokemonItem<TRes>
    implements CopyWithFragmentPokemonItem<TRes> {
  _CopyWithImplFragmentPokemonItem(
    this._instance,
    this._then,
  );

  final FragmentPokemonItem _instance;

  final TRes Function(FragmentPokemonItem) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? classification = _undefined,
    Object? types = _undefined,
    Object? maxCP = _undefined,
    Object? maxHP = _undefined,
  }) =>
      _then(FragmentPokemonItem(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined ? _instance.name : (name as String?),
        image: image == _undefined ? _instance.image : (image as String?),
        classification: classification == _undefined
            ? _instance.classification
            : (classification as String?),
        types:
            types == _undefined ? _instance.types : (types as List<String?>?),
        maxCP: maxCP == _undefined ? _instance.maxCP : (maxCP as int?),
        maxHP: maxHP == _undefined ? _instance.maxHP : (maxHP as int?),
      ));
}

class _CopyWithStubImplFragmentPokemonItem<TRes>
    implements CopyWithFragmentPokemonItem<TRes> {
  _CopyWithStubImplFragmentPokemonItem(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? id,
    String? name,
    String? image,
    String? classification,
    List<String?>? types,
    int? maxCP,
    int? maxHP,
  }) =>
      _res;
}

const fragmentDefinitionPokemonItem = FragmentDefinitionNode(
  name: NameNode(value: 'PokemonItem'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Pokemon'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'image'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'classification'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'types'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'maxCP'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'maxHP'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentPokemonItem = DocumentNode(definitions: [
  fragmentDefinitionPokemonItem,
]);

extension ClientExtensionFragmentPokemonItem on graphql.GraphQLClient {
  void writeFragmentPokemonItem({
    required FragmentPokemonItem data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'PokemonItem',
            document: documentNodeFragmentPokemonItem,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  FragmentPokemonItem? readFragmentPokemonItem({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'PokemonItem',
          document: documentNodeFragmentPokemonItem,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : FragmentPokemonItem.fromJson(result);
  }
}

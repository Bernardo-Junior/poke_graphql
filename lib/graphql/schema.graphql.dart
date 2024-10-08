enum Enum__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum__TypeKind.fromJson(String value) =>
      fromJsonEnum__TypeKind(value);

  String toJson() => toJsonEnum__TypeKind(this);
}

String toJsonEnum__TypeKind(Enum__TypeKind e) {
  switch (e) {
    case Enum__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum__TypeKind.UNION:
      return r'UNION';
    case Enum__TypeKind.ENUM:
      return r'ENUM';
    case Enum__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum__TypeKind.LIST:
      return r'LIST';
    case Enum__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum__TypeKind fromJsonEnum__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum__TypeKind.INTERFACE;
    case r'UNION':
      return Enum__TypeKind.UNION;
    case r'ENUM':
      return Enum__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum__TypeKind.LIST;
    case r'NON_NULL':
      return Enum__TypeKind.NON_NULL;
    default:
      return Enum__TypeKind.$unknown;
  }
}

enum Enum__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum__DirectiveLocation.fromJson(String value) =>
      fromJsonEnum__DirectiveLocation(value);

  String toJson() => toJsonEnum__DirectiveLocation(this);
}

String toJsonEnum__DirectiveLocation(Enum__DirectiveLocation e) {
  switch (e) {
    case Enum__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum__DirectiveLocation.UNION:
      return r'UNION';
    case Enum__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum__DirectiveLocation fromJsonEnum__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};

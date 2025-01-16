// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prisma_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserWhereInput _$UserWhereInputFromJson(Map<String, dynamic> json) =>
    UserWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : IntFilter.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFilter.fromJson(json['name'] as Map<String, dynamic>),
      lastName: json['lastName'] == null
          ? null
          : StringFilter.fromJson(json['lastName'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : StringFilter.fromJson(json['username'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFilter.fromJson(json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserWhereInputToJson(UserWhereInput instance) =>
    <String, dynamic>{
      if (instance.AND?.map((e) => e.toJson()).toList() case final value?)
        'AND': value,
      if (instance.OR?.map((e) => e.toJson()).toList() case final value?)
        'OR': value,
      if (instance.NOT?.map((e) => e.toJson()).toList() case final value?)
        'NOT': value,
      if (instance.id?.toJson() case final value?) 'id': value,
      if (instance.name?.toJson() case final value?) 'name': value,
      if (instance.lastName?.toJson() case final value?) 'lastName': value,
      if (instance.username?.toJson() case final value?) 'username': value,
      if (instance.password?.toJson() case final value?) 'password': value,
    };

UserOrderByWithRelationInput _$UserOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    UserOrderByWithRelationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      lastName: $enumDecodeNullable(_$SortOrderEnumMap, json['lastName']),
      username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
    );

Map<String, dynamic> _$UserOrderByWithRelationInputToJson(
        UserOrderByWithRelationInput instance) =>
    <String, dynamic>{
      if (_$SortOrderEnumMap[instance.id] case final value?) 'id': value,
      if (_$SortOrderEnumMap[instance.name] case final value?) 'name': value,
      if (_$SortOrderEnumMap[instance.lastName] case final value?)
        'lastName': value,
      if (_$SortOrderEnumMap[instance.username] case final value?)
        'username': value,
      if (_$SortOrderEnumMap[instance.password] case final value?)
        'password': value,
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};

UserWhereUniqueInput _$UserWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    UserWhereUniqueInput(
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UserWhereUniqueInputToJson(
        UserWhereUniqueInput instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
    };

UserOrderByWithAggregationInput _$UserOrderByWithAggregationInputFromJson(
        Map<String, dynamic> json) =>
    UserOrderByWithAggregationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      lastName: $enumDecodeNullable(_$SortOrderEnumMap, json['lastName']),
      username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
      $count: json['_count'] == null
          ? null
          : UserCountOrderByAggregateInput.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : UserAvgOrderByAggregateInput.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : UserMaxOrderByAggregateInput.fromJson(
              json['_max'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : UserMinOrderByAggregateInput.fromJson(
              json['_min'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : UserSumOrderByAggregateInput.fromJson(
              json['_sum'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserOrderByWithAggregationInputToJson(
        UserOrderByWithAggregationInput instance) =>
    <String, dynamic>{
      if (_$SortOrderEnumMap[instance.id] case final value?) 'id': value,
      if (_$SortOrderEnumMap[instance.name] case final value?) 'name': value,
      if (_$SortOrderEnumMap[instance.lastName] case final value?)
        'lastName': value,
      if (_$SortOrderEnumMap[instance.username] case final value?)
        'username': value,
      if (_$SortOrderEnumMap[instance.password] case final value?)
        'password': value,
      if (instance.$count?.toJson() case final value?) '_count': value,
      if (instance.$avg?.toJson() case final value?) '_avg': value,
      if (instance.$max?.toJson() case final value?) '_max': value,
      if (instance.$min?.toJson() case final value?) '_min': value,
      if (instance.$sum?.toJson() case final value?) '_sum': value,
    };

UserScalarWhereWithAggregatesInput _$UserScalarWhereWithAggregatesInputFromJson(
        Map<String, dynamic> json) =>
    UserScalarWhereWithAggregatesInput(
      AND: (json['AND'] as List<dynamic>?)?.map((e) =>
          UserScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map((e) =>
          UserScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
          UserScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : IntWithAggregatesFilter.fromJson(
              json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringWithAggregatesFilter.fromJson(
              json['name'] as Map<String, dynamic>),
      lastName: json['lastName'] == null
          ? null
          : StringWithAggregatesFilter.fromJson(
              json['lastName'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : StringWithAggregatesFilter.fromJson(
              json['username'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringWithAggregatesFilter.fromJson(
              json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserScalarWhereWithAggregatesInputToJson(
        UserScalarWhereWithAggregatesInput instance) =>
    <String, dynamic>{
      if (instance.AND?.map((e) => e.toJson()).toList() case final value?)
        'AND': value,
      if (instance.OR?.map((e) => e.toJson()).toList() case final value?)
        'OR': value,
      if (instance.NOT?.map((e) => e.toJson()).toList() case final value?)
        'NOT': value,
      if (instance.id?.toJson() case final value?) 'id': value,
      if (instance.name?.toJson() case final value?) 'name': value,
      if (instance.lastName?.toJson() case final value?) 'lastName': value,
      if (instance.username?.toJson() case final value?) 'username': value,
      if (instance.password?.toJson() case final value?) 'password': value,
    };

UserCreateInput _$UserCreateInputFromJson(Map<String, dynamic> json) =>
    UserCreateInput(
      name: json['name'] as String,
      lastName: json['lastName'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$UserCreateInputToJson(UserCreateInput instance) =>
    <String, dynamic>{
      'name': instance.name,
      'lastName': instance.lastName,
      'username': instance.username,
      'password': instance.password,
    };

UserUncheckedCreateInput _$UserUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    UserUncheckedCreateInput(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String,
      lastName: json['lastName'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$UserUncheckedCreateInputToJson(
        UserUncheckedCreateInput instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      'name': instance.name,
      'lastName': instance.lastName,
      'username': instance.username,
      'password': instance.password,
    };

UserUpdateInput _$UserUpdateInputFromJson(Map<String, dynamic> json) =>
    UserUpdateInput(
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      lastName: json['lastName'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['lastName'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['username'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUpdateInputToJson(UserUpdateInput instance) =>
    <String, dynamic>{
      if (instance.name?.toJson() case final value?) 'name': value,
      if (instance.lastName?.toJson() case final value?) 'lastName': value,
      if (instance.username?.toJson() case final value?) 'username': value,
      if (instance.password?.toJson() case final value?) 'password': value,
    };

UserUncheckedUpdateInput _$UserUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    UserUncheckedUpdateInput(
      id: json['id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      lastName: json['lastName'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['lastName'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['username'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUncheckedUpdateInputToJson(
        UserUncheckedUpdateInput instance) =>
    <String, dynamic>{
      if (instance.id?.toJson() case final value?) 'id': value,
      if (instance.name?.toJson() case final value?) 'name': value,
      if (instance.lastName?.toJson() case final value?) 'lastName': value,
      if (instance.username?.toJson() case final value?) 'username': value,
      if (instance.password?.toJson() case final value?) 'password': value,
    };

UserCreateManyInput _$UserCreateManyInputFromJson(Map<String, dynamic> json) =>
    UserCreateManyInput(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String,
      lastName: json['lastName'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$UserCreateManyInputToJson(
        UserCreateManyInput instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      'name': instance.name,
      'lastName': instance.lastName,
      'username': instance.username,
      'password': instance.password,
    };

UserUpdateManyMutationInput _$UserUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    UserUpdateManyMutationInput(
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      lastName: json['lastName'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['lastName'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['username'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUpdateManyMutationInputToJson(
        UserUpdateManyMutationInput instance) =>
    <String, dynamic>{
      if (instance.name?.toJson() case final value?) 'name': value,
      if (instance.lastName?.toJson() case final value?) 'lastName': value,
      if (instance.username?.toJson() case final value?) 'username': value,
      if (instance.password?.toJson() case final value?) 'password': value,
    };

UserUncheckedUpdateManyInput _$UserUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    UserUncheckedUpdateManyInput(
      id: json['id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      lastName: json['lastName'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['lastName'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['username'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUncheckedUpdateManyInputToJson(
        UserUncheckedUpdateManyInput instance) =>
    <String, dynamic>{
      if (instance.id?.toJson() case final value?) 'id': value,
      if (instance.name?.toJson() case final value?) 'name': value,
      if (instance.lastName?.toJson() case final value?) 'lastName': value,
      if (instance.username?.toJson() case final value?) 'username': value,
      if (instance.password?.toJson() case final value?) 'password': value,
    };

IntFilter _$IntFilterFromJson(Map<String, dynamic> json) => IntFilter(
      equals: (json['equals'] as num?)?.toInt(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toInt()),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toInt()),
      lt: (json['lt'] as num?)?.toInt(),
      lte: (json['lte'] as num?)?.toInt(),
      gt: (json['gt'] as num?)?.toInt(),
      gte: (json['gte'] as num?)?.toInt(),
      not: json['not'] == null
          ? null
          : NestedIntFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntFilterToJson(IntFilter instance) => <String, dynamic>{
      if (instance.equals case final value?) 'equals': value,
      if (instance.$in?.toList() case final value?) 'in': value,
      if (instance.notIn?.toList() case final value?) 'notIn': value,
      if (instance.lt case final value?) 'lt': value,
      if (instance.lte case final value?) 'lte': value,
      if (instance.gt case final value?) 'gt': value,
      if (instance.gte case final value?) 'gte': value,
      if (instance.not?.toJson() case final value?) 'not': value,
    };

StringFilter _$StringFilterFromJson(Map<String, dynamic> json) => StringFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringFilterToJson(StringFilter instance) =>
    <String, dynamic>{
      if (instance.equals case final value?) 'equals': value,
      if (instance.$in?.toList() case final value?) 'in': value,
      if (instance.notIn?.toList() case final value?) 'notIn': value,
      if (instance.lt case final value?) 'lt': value,
      if (instance.lte case final value?) 'lte': value,
      if (instance.gt case final value?) 'gt': value,
      if (instance.gte case final value?) 'gte': value,
      if (instance.contains case final value?) 'contains': value,
      if (instance.startsWith case final value?) 'startsWith': value,
      if (instance.endsWith case final value?) 'endsWith': value,
      if (instance.not?.toJson() case final value?) 'not': value,
    };

UserCountOrderByAggregateInput _$UserCountOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UserCountOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      lastName: $enumDecodeNullable(_$SortOrderEnumMap, json['lastName']),
      username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
    );

Map<String, dynamic> _$UserCountOrderByAggregateInputToJson(
        UserCountOrderByAggregateInput instance) =>
    <String, dynamic>{
      if (_$SortOrderEnumMap[instance.id] case final value?) 'id': value,
      if (_$SortOrderEnumMap[instance.name] case final value?) 'name': value,
      if (_$SortOrderEnumMap[instance.lastName] case final value?)
        'lastName': value,
      if (_$SortOrderEnumMap[instance.username] case final value?)
        'username': value,
      if (_$SortOrderEnumMap[instance.password] case final value?)
        'password': value,
    };

UserAvgOrderByAggregateInput _$UserAvgOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UserAvgOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
    );

Map<String, dynamic> _$UserAvgOrderByAggregateInputToJson(
        UserAvgOrderByAggregateInput instance) =>
    <String, dynamic>{
      if (_$SortOrderEnumMap[instance.id] case final value?) 'id': value,
    };

UserMaxOrderByAggregateInput _$UserMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UserMaxOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      lastName: $enumDecodeNullable(_$SortOrderEnumMap, json['lastName']),
      username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
    );

Map<String, dynamic> _$UserMaxOrderByAggregateInputToJson(
        UserMaxOrderByAggregateInput instance) =>
    <String, dynamic>{
      if (_$SortOrderEnumMap[instance.id] case final value?) 'id': value,
      if (_$SortOrderEnumMap[instance.name] case final value?) 'name': value,
      if (_$SortOrderEnumMap[instance.lastName] case final value?)
        'lastName': value,
      if (_$SortOrderEnumMap[instance.username] case final value?)
        'username': value,
      if (_$SortOrderEnumMap[instance.password] case final value?)
        'password': value,
    };

UserMinOrderByAggregateInput _$UserMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UserMinOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      lastName: $enumDecodeNullable(_$SortOrderEnumMap, json['lastName']),
      username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
    );

Map<String, dynamic> _$UserMinOrderByAggregateInputToJson(
        UserMinOrderByAggregateInput instance) =>
    <String, dynamic>{
      if (_$SortOrderEnumMap[instance.id] case final value?) 'id': value,
      if (_$SortOrderEnumMap[instance.name] case final value?) 'name': value,
      if (_$SortOrderEnumMap[instance.lastName] case final value?)
        'lastName': value,
      if (_$SortOrderEnumMap[instance.username] case final value?)
        'username': value,
      if (_$SortOrderEnumMap[instance.password] case final value?)
        'password': value,
    };

UserSumOrderByAggregateInput _$UserSumOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UserSumOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
    );

Map<String, dynamic> _$UserSumOrderByAggregateInputToJson(
        UserSumOrderByAggregateInput instance) =>
    <String, dynamic>{
      if (_$SortOrderEnumMap[instance.id] case final value?) 'id': value,
    };

IntWithAggregatesFilter _$IntWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    IntWithAggregatesFilter(
      equals: (json['equals'] as num?)?.toInt(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toInt()),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toInt()),
      lt: (json['lt'] as num?)?.toInt(),
      lte: (json['lte'] as num?)?.toInt(),
      gt: (json['gt'] as num?)?.toInt(),
      gte: (json['gte'] as num?)?.toInt(),
      not: json['not'] == null
          ? null
          : NestedIntWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedIntFilter.fromJson(json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedIntFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedIntFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntWithAggregatesFilterToJson(
        IntWithAggregatesFilter instance) =>
    <String, dynamic>{
      if (instance.equals case final value?) 'equals': value,
      if (instance.$in?.toList() case final value?) 'in': value,
      if (instance.notIn?.toList() case final value?) 'notIn': value,
      if (instance.lt case final value?) 'lt': value,
      if (instance.lte case final value?) 'lte': value,
      if (instance.gt case final value?) 'gt': value,
      if (instance.gte case final value?) 'gte': value,
      if (instance.not?.toJson() case final value?) 'not': value,
      if (instance.$count?.toJson() case final value?) '_count': value,
      if (instance.$avg?.toJson() case final value?) '_avg': value,
      if (instance.$sum?.toJson() case final value?) '_sum': value,
      if (instance.$min?.toJson() case final value?) '_min': value,
      if (instance.$max?.toJson() case final value?) '_max': value,
    };

StringWithAggregatesFilter _$StringWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    StringWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringWithAggregatesFilterToJson(
        StringWithAggregatesFilter instance) =>
    <String, dynamic>{
      if (instance.equals case final value?) 'equals': value,
      if (instance.$in?.toList() case final value?) 'in': value,
      if (instance.notIn?.toList() case final value?) 'notIn': value,
      if (instance.lt case final value?) 'lt': value,
      if (instance.lte case final value?) 'lte': value,
      if (instance.gt case final value?) 'gt': value,
      if (instance.gte case final value?) 'gte': value,
      if (instance.contains case final value?) 'contains': value,
      if (instance.startsWith case final value?) 'startsWith': value,
      if (instance.endsWith case final value?) 'endsWith': value,
      if (instance.not?.toJson() case final value?) 'not': value,
      if (instance.$count?.toJson() case final value?) '_count': value,
      if (instance.$min?.toJson() case final value?) '_min': value,
      if (instance.$max?.toJson() case final value?) '_max': value,
    };

StringFieldUpdateOperationsInput _$StringFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    StringFieldUpdateOperationsInput(
      set: json['set'] as String?,
    );

Map<String, dynamic> _$StringFieldUpdateOperationsInputToJson(
        StringFieldUpdateOperationsInput instance) =>
    <String, dynamic>{
      if (instance.set case final value?) 'set': value,
    };

IntFieldUpdateOperationsInput _$IntFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    IntFieldUpdateOperationsInput(
      set: (json['set'] as num?)?.toInt(),
      increment: (json['increment'] as num?)?.toInt(),
      decrement: (json['decrement'] as num?)?.toInt(),
      multiply: (json['multiply'] as num?)?.toInt(),
      divide: (json['divide'] as num?)?.toInt(),
    );

Map<String, dynamic> _$IntFieldUpdateOperationsInputToJson(
        IntFieldUpdateOperationsInput instance) =>
    <String, dynamic>{
      if (instance.set case final value?) 'set': value,
      if (instance.increment case final value?) 'increment': value,
      if (instance.decrement case final value?) 'decrement': value,
      if (instance.multiply case final value?) 'multiply': value,
      if (instance.divide case final value?) 'divide': value,
    };

NestedIntFilter _$NestedIntFilterFromJson(Map<String, dynamic> json) =>
    NestedIntFilter(
      equals: (json['equals'] as num?)?.toInt(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toInt()),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toInt()),
      lt: (json['lt'] as num?)?.toInt(),
      lte: (json['lte'] as num?)?.toInt(),
      gt: (json['gt'] as num?)?.toInt(),
      gte: (json['gte'] as num?)?.toInt(),
      not: json['not'] == null
          ? null
          : NestedIntFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntFilterToJson(NestedIntFilter instance) =>
    <String, dynamic>{
      if (instance.equals case final value?) 'equals': value,
      if (instance.$in?.toList() case final value?) 'in': value,
      if (instance.notIn?.toList() case final value?) 'notIn': value,
      if (instance.lt case final value?) 'lt': value,
      if (instance.lte case final value?) 'lte': value,
      if (instance.gt case final value?) 'gt': value,
      if (instance.gte case final value?) 'gte': value,
      if (instance.not?.toJson() case final value?) 'not': value,
    };

NestedStringFilter _$NestedStringFilterFromJson(Map<String, dynamic> json) =>
    NestedStringFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringFilterToJson(NestedStringFilter instance) =>
    <String, dynamic>{
      if (instance.equals case final value?) 'equals': value,
      if (instance.$in?.toList() case final value?) 'in': value,
      if (instance.notIn?.toList() case final value?) 'notIn': value,
      if (instance.lt case final value?) 'lt': value,
      if (instance.lte case final value?) 'lte': value,
      if (instance.gt case final value?) 'gt': value,
      if (instance.gte case final value?) 'gte': value,
      if (instance.contains case final value?) 'contains': value,
      if (instance.startsWith case final value?) 'startsWith': value,
      if (instance.endsWith case final value?) 'endsWith': value,
      if (instance.not?.toJson() case final value?) 'not': value,
    };

NestedIntWithAggregatesFilter _$NestedIntWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedIntWithAggregatesFilter(
      equals: (json['equals'] as num?)?.toInt(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toInt()),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toInt()),
      lt: (json['lt'] as num?)?.toInt(),
      lte: (json['lte'] as num?)?.toInt(),
      gt: (json['gt'] as num?)?.toInt(),
      gte: (json['gte'] as num?)?.toInt(),
      not: json['not'] == null
          ? null
          : NestedIntWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedIntFilter.fromJson(json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedIntFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedIntFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntWithAggregatesFilterToJson(
        NestedIntWithAggregatesFilter instance) =>
    <String, dynamic>{
      if (instance.equals case final value?) 'equals': value,
      if (instance.$in?.toList() case final value?) 'in': value,
      if (instance.notIn?.toList() case final value?) 'notIn': value,
      if (instance.lt case final value?) 'lt': value,
      if (instance.lte case final value?) 'lte': value,
      if (instance.gt case final value?) 'gt': value,
      if (instance.gte case final value?) 'gte': value,
      if (instance.not?.toJson() case final value?) 'not': value,
      if (instance.$count?.toJson() case final value?) '_count': value,
      if (instance.$avg?.toJson() case final value?) '_avg': value,
      if (instance.$sum?.toJson() case final value?) '_sum': value,
      if (instance.$min?.toJson() case final value?) '_min': value,
      if (instance.$max?.toJson() case final value?) '_max': value,
    };

NestedFloatFilter _$NestedFloatFilterFromJson(Map<String, dynamic> json) =>
    NestedFloatFilter(
      equals: (json['equals'] as num?)?.toDouble(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      lt: (json['lt'] as num?)?.toDouble(),
      lte: (json['lte'] as num?)?.toDouble(),
      gt: (json['gt'] as num?)?.toDouble(),
      gte: (json['gte'] as num?)?.toDouble(),
      not: json['not'] == null
          ? null
          : NestedFloatFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedFloatFilterToJson(NestedFloatFilter instance) =>
    <String, dynamic>{
      if (instance.equals case final value?) 'equals': value,
      if (instance.$in?.toList() case final value?) 'in': value,
      if (instance.notIn?.toList() case final value?) 'notIn': value,
      if (instance.lt case final value?) 'lt': value,
      if (instance.lte case final value?) 'lte': value,
      if (instance.gt case final value?) 'gt': value,
      if (instance.gte case final value?) 'gte': value,
      if (instance.not?.toJson() case final value?) 'not': value,
    };

NestedStringWithAggregatesFilter _$NestedStringWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedStringWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringWithAggregatesFilterToJson(
        NestedStringWithAggregatesFilter instance) =>
    <String, dynamic>{
      if (instance.equals case final value?) 'equals': value,
      if (instance.$in?.toList() case final value?) 'in': value,
      if (instance.notIn?.toList() case final value?) 'notIn': value,
      if (instance.lt case final value?) 'lt': value,
      if (instance.lte case final value?) 'lte': value,
      if (instance.gt case final value?) 'gt': value,
      if (instance.gte case final value?) 'gte': value,
      if (instance.contains case final value?) 'contains': value,
      if (instance.startsWith case final value?) 'startsWith': value,
      if (instance.endsWith case final value?) 'endsWith': value,
      if (instance.not?.toJson() case final value?) 'not': value,
      if (instance.$count?.toJson() case final value?) '_count': value,
      if (instance.$min?.toJson() case final value?) '_min': value,
      if (instance.$max?.toJson() case final value?) '_max': value,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      lastName: json['lastName'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lastName': instance.lastName,
      'username': instance.username,
      'password': instance.password,
    };

UserGroupByOutputType _$UserGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UserGroupByOutputType(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      lastName: json['lastName'] as String?,
      username: json['username'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$UserGroupByOutputTypeToJson(
        UserGroupByOutputType instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.name case final value?) 'name': value,
      if (instance.lastName case final value?) 'lastName': value,
      if (instance.username case final value?) 'username': value,
      if (instance.password case final value?) 'password': value,
    };

AffectedRowsOutput _$AffectedRowsOutputFromJson(Map<String, dynamic> json) =>
    AffectedRowsOutput(
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AffectedRowsOutputToJson(AffectedRowsOutput instance) =>
    <String, dynamic>{
      if (instance.count case final value?) 'count': value,
    };

Map<String, dynamic> _$DatasourcesToJson(Datasources instance) =>
    <String, dynamic>{
      if (instance.db case final value?) 'db': value,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavoriteModelImplAdapter extends TypeAdapter<_$FavoriteModelImpl> {
  @override
  final int typeId = 5;

  @override
  _$FavoriteModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$FavoriteModelImpl(
      id: fields[0] as String,
      fullName: fields[1] as String,
      category: fields[2] as String,
      profileImage: fields[3] as String?,
      rating: fields[4] as double,
      location: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$FavoriteModelImpl obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.fullName)
      ..writeByte(2)
      ..write(obj.category)
      ..writeByte(3)
      ..write(obj.profileImage)
      ..writeByte(4)
      ..write(obj.rating)
      ..writeByte(5)
      ..write(obj.location);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoriteModelImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavoriteModelImpl _$$FavoriteModelImplFromJson(Map<String, dynamic> json) =>
    _$FavoriteModelImpl(
      id: json['id'] as String,
      fullName: json['full_name'] as String,
      category: json['category'] as String,
      profileImage: json['profile_image'] as String?,
      rating: (json['rating'] as num).toDouble(),
      location: json['location'] as String,
    );

Map<String, dynamic> _$$FavoriteModelImplToJson(_$FavoriteModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
      'category': instance.category,
      'profile_image': instance.profileImage,
      'rating': instance.rating,
      'location': instance.location,
    };

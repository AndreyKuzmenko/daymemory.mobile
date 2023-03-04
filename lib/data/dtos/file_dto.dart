enum FileType {
  unknown,

  image,

  video
}

enum FileSizeType {
  unknown,

  original,

  optimized
}

class FileDto {
  String id;
  String name;
  //String originalFilePath;
  //String resizedFilePath;
  String filePath;
  int? fileSize;
  DateTime? createdDate;
  FileType fileType;
  int height;
  int width;

  FileDto({
    required this.id,
    required this.name,
    //required this.originalFilePath,
    //required this.resizedFilePath,
    required this.filePath,
    required this.fileType,
    required this.height,
    required this.width,
    this.createdDate,
    this.fileSize,
  });

  factory FileDto.fromJson(Map<String, dynamic> json) {
    return FileDto(
      id: json['id'],
      fileType: FileType.values[json['fileType']],
      name: json['name'],
      //originalFilePath: json['originalUrl'],
      //resizedFilePath: json['resizedUrl'],
      filePath: json['resizedUrl'],
      height: json['height'],
      width: json['width'],
      fileSize: json['fileSize'],
    );
  }
}

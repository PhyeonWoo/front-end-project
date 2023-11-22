
class ProviderReqDto{
  final String? providername;

  ProviderReqDto(this.providername);
  Map<String, dynamic> toJson()=>{
    "providername": providername,
  };
}
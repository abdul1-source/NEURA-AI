import 'dart:typed_data';
import 'package:http/http.dart' as http;
class api{
    
    

     static Future<Uint8List?> HandlePrompt(p) async{

     var header={
      'Authorization' : 'Bearer  vk-grpWtwQDIAiPiyDVV28X3Y1MNbU4nn818pXuO2rHCX0EU'
     };
     var request=http.MultipartRequest('POST', Uri.parse('https://api.vyro.ai/v2/image/generations'));
     request.fields.addAll({
      'prompt' : '$p',
      'style':'realistic',
      'aspect_ratio':'1:1',
      'seed':'5'
     });
     request.headers.addAll(header);

     http.StreamedResponse response = await request.send();

     if(response.statusCode==200){
      final Uint8List resp=await response.stream.toBytes();
      return resp;
     }else{
      print(response.reasonPhrase);
     }
     return null;


     }


}
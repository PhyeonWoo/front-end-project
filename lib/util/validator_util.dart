import 'package:get/get.dart';
import 'package:validators/validators.dart';

Function validatorNickName(){
  return (String? value){
    if(value!.isEmpty) {
      return "공백이 들어갈 수 없습니다.";
    }else if(value.length  > 12){
      return "12자 이하 입력해주세요.";
    }else if(value.length  < 3){
      return "4자 이상 입력해주세요";
    } else {
      return null;
    }
  };
}
Function validatorPassword(){
  return (String? value){
    if(value!.isEmpty) {
      return "공백이 들어갈 수 없습니다.";
    }else if(value.length  > 14){
      return "14자 이하 입력해주세요.";
    }
    // else if(value.length  < 10){
    //   return "10자 이상 입력해주새요. ";
    // }
    else {
      return null;
    }
  };
}

Function validatorPasswordCheck() {
  return (String? value) {
    if (value != validatorPassword.obs) {
      return "비밀번호가 일치하지 않습니다.";
    } else {
      return null;
    }
  };
}

Function validatorEmail(){
  return (String? value){
    if(value!.isEmpty) {
      return "공백이 들어갈 수 없습니다.";
    }else if(!isEmail(value)){
      return "이메일 형식이 아닙니다.";
    }else {
      return null;
    }
  };
}


Function validatorProvider(){
  return (String? value){
    if(value!.isEmpty) {
      return "공백이 들어갈 수 없습니다.";
    }else {
      return null;
    }
  };
}
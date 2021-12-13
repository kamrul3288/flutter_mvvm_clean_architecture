
class ApiResponse<T>{
  bool get success => this is Success<T>;
  bool get failure => this is Failure<T>;
}

class Success<T> extends ApiResponse<T> {
  T data;
  Success(this.data);
}

class Failure<T> extends ApiResponse<T>{
  String errorMessage = "Unknown error occurred";
  int errorCode = -1;
  Failure(this.errorMessage,this.errorCode);
}


extension SuccesApiResponseData on ApiResponse{
  T data<T>(){
    if(success){
      return (this as Success).data as T;
    }else{
      throw Exception("IllegalArgument Exception");
    }

  }
}



extension ErrorApiResponseData on ApiResponse{
  Failure error(){
    if(failure){
      final failure = (this as Failure);
      return Failure(failure.errorMessage, failure.errorCode);
    }else {
      throw Exception("IllegalArgument Exception");
    }
  }
}




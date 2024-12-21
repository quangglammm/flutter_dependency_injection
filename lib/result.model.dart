abstract class Result {
  const Result();
}

class Success<T> extends Result {
  final T data;

  Success(this.data);

  List<Object?> get props => [];
}

class Error extends Result {
  final String error;

  Error(this.error);

  List<Object?> get props => [this.error];
}
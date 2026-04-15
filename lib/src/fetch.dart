sealed class FetchState<T> {}

class FetchSuccess<T> extends FetchState<T> {
  final T? result;

  FetchSuccess(this.result);
}

class FetchInitial<T> extends FetchState<T> {}

class FetchLoading<T> extends FetchState<T> {}

class FetchError<T> extends FetchState<T> {
  final String message;

  FetchError(this.message);
}

abstract class BaseApiService {

  final String BASE_URL = "";

  Future<dynamic> getResponse(String url);
  Future<dynamic> postResponse(String url,Map<String, String> jsonBody);

}
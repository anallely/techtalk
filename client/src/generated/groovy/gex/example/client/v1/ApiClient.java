package gex.example.client.v1;
import retrofit.http.*;
import retrofit.client.Response;
import java.util.List;
import java.util.Map;

import rx.Observable;
import retrofit.mime.TypedFile;
import gex.example.dto.v1.*;


public interface ApiClient {

  @GET("/v1/hello")
  Observable<Map> getRest();

  @GET("/v1/xkcd")
  Observable<Map> getXkcd();

}

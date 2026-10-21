package flix.com.vision.api;

import com.google.gson.JsonElement;
import io.reactivex.Observable;
import retrofit2.http.GET;
import retrofit2.http.Query;

/* loaded from: classes2.dex */
public interface IntroDbApi {
    @GET("segments")
    Observable<JsonElement> getSegments(@Query("imdb_id") String str, @Query("season") Integer num, @Query("episode") Integer num2, @Query("is_movie") Boolean bool);
}

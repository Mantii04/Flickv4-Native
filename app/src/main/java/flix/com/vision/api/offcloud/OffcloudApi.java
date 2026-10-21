package flix.com.vision.api.offcloud;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import io.reactivex.Observable;
import retrofit2.http.Body;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.POST;
import retrofit2.http.Path;
import retrofit2.http.Query;

/* loaded from: classes2.dex */
public interface OffcloudApi {
    @FormUrlEncoded
    @POST("api/cloud")
    Observable<JsonElement> addLink(@Header("Authorization") String str, @Field("url") String str2);

    @GET("api/cloud/explore/{requestId}")
    Observable<JsonElement> exploreTorrent(@Header("Authorization") String str, @Path("requestId") String str2, @Query("format") String str3);

    @GET("api/account/info")
    Observable<JsonElement> getUserAccount(@Header("Authorization") String str);

    @GET("api/cloud/history")
    Observable<JsonElement> getUserTorrents(@Header("Authorization") String str);

    @POST("api/cloud/remove")
    Observable<JsonElement> removeDownloads(@Header("Authorization") String str, @Body JsonObject jsonObject);
}

package flix.com.vision.api.torbox;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import io.reactivex.Observable;
import retrofit2.http.Body;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* loaded from: classes2.dex */
public interface TorboxApi {
    @FormUrlEncoded
    @POST("v1/api/torrents/createtorrent")
    Observable<JsonElement> addMagnet(@Header("Authorization") String str, @Field("magnet") String str2);

    @FormUrlEncoded
    @POST("v1/api/webdls/createwebdl")
    Observable<JsonElement> addWebLink(@Header("Authorization") String str, @Field("link") String str2);

    @GET("v1/api/torrents/checkcached")
    Observable<JsonElement> checkCached(@Header("Authorization") String str, @Query("hash") String str2, @Query("format") String str3);

    @POST("v1/api/torrents/controltorrent")
    Observable<JsonElement> controlTorrent(@Header("Authorization") String str, @Body JsonObject jsonObject);

    @GET("v1/api/torrents/requestdl")
    Observable<JsonElement> getDownloadLink(@Header("Authorization") String str, @Query("token") String str2, @Query("torrent_id") String str3, @Query("file_id") String str4, @Query("zip_link") boolean z6);

    @GET("v1/api/user/me")
    Observable<JsonElement> getUserAccount(@Header("Authorization") String str);

    @GET("v1/api/torrents/mylist")
    Observable<JsonElement> getUserTorrents(@Header("Authorization") String str);

    @GET("v1/api/webdls/requestdl")
    Observable<JsonElement> getWebDownloadLink(@Header("Authorization") String str, @Query("token") String str2, @Query("webdl_id") String str3, @Query("file_id") String str4, @Query("zip_link") boolean z6);
}

package flix.com.vision.api;

import F4.a;
import F4.b;
import F4.c;
import F4.d;
import F4.e;
import F4.f;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Path;
import retrofit2.http.Query;

/* loaded from: classes2.dex */
public interface FlixVisionApiService {
    @POST("favorites")
    Call<a> addFavorite(@Body a aVar);

    @POST("history")
    Call<b> addHistoryItem(@Body b bVar);

    @POST("watchlist")
    Call<f> addWatchlistItem(@Body f fVar);

    @POST("preferences")
    Call<d> createOrUpdatePreference(@Body d dVar);

    @DELETE("favorites/{id}")
    Call<Void> deleteFavorite(@Path("id") int i2);

    @DELETE("history/{id}")
    Call<Void> deleteHistoryItem(@Path("id") int i2);

    @DELETE("watchlist/{id}")
    Call<Void> deleteWatchlistItem(@Path("id") int i2);

    @GET("episodes/{id}")
    Call<Object> getEpisode(@Path("id") int i2);

    @GET("episodes")
    Call<List<Object>> getEpisodes(@Query("per_page") Integer num);

    @GET("favorites")
    Call<List<a>> getFavorites();

    @GET("history")
    Call<List<b>> getHistory();

    @GET("movies/{id}")
    Call<Object> getMovie(@Path("id") int i2);

    @GET("movies")
    Call<List<Object>> getMovies(@Query("per_page") Integer num);

    @GET("playback")
    Call<List<c>> getPlaybackProgress();

    @GET("preferences")
    Call<List<d>> getPreferences();

    @GET("watchlist")
    Call<List<f>> getWatchlist();

    @FormUrlEncoded
    @POST(FirebaseAnalytics.Event.LOGIN)
    Call<e> login(@Field("email") String str, @Field("password") String str2);

    @POST("logout")
    Call<Void> logout();

    @FormUrlEncoded
    @POST("register")
    Call<e> register(@Field("name") String str, @Field("email") String str2, @Field("password") String str3);

    @POST("playback")
    Call<c> savePlaybackProgress(@Body c cVar);
}

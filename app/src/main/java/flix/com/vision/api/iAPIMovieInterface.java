package flix.com.vision.api;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import flix.com.vision.models.IntroDbResponse;
import flix.com.vision.models.TmdbImagesResponse;
import io.reactivex.Observable;
import j6.h;
import java.util.List;
import java.util.Map;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.Headers;
import retrofit2.http.Multipart;
import retrofit2.http.POST;
import retrofit2.http.Part;
import retrofit2.http.Path;
import retrofit2.http.Query;
import retrofit2.http.QueryMap;
import retrofit2.http.Url;

/* loaded from: classes2.dex */
public interface iAPIMovieInterface {
    @Headers({"User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36", "Accept: application/json"})
    @GET("./")
    Observable<h> SCGetHome();

    @Headers({"x-inertia: true", "lang: en"})
    @GET("en/titles/{id}")
    Observable<JsonElement> SCGetSeason(@Path("id") String str, @Header("x-inertia-version") String str2);

    @Headers({"User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36", "Accept: application/json"})
    @GET("api/search")
    Observable<JsonElement> SCSearch(@QueryMap Map<String, String> map);

    @Headers({"Content-Type:application/json", "trakt-api-version:2", "trakt-api-key: 39c944040d5f19862b77e7a66b6c419af653c1e3bf226cc691eb2abbb551730c"})
    @POST("/sync/collection")
    Observable<JsonElement> addCollectionTrakt(@Body Map<String, JsonArray> map, @Header("authorization") String str);

    @Headers({"Content-Type:application/json", "trakt-api-version:2", "trakt-api-key: 39c944040d5f19862b77e7a66b6c419af653c1e3bf226cc691eb2abbb551730c"})
    @POST("/sync/history")
    Observable<JsonElement> addHistory(@Body Map<String, JsonArray> map, @Header("authorization") String str);

    @GET("/v4/magnet/upload")
    Observable<JsonElement> addMagnetsAllDebrid(@QueryMap Map<String, String> map, @Query("magnets[]") List<String> list);

    @Headers({"Content-Type:application/json", "trakt-api-version:2", "trakt-api-key: 39c944040d5f19862b77e7a66b6c419af653c1e3bf226cc691eb2abbb551730c"})
    @POST("/sync/watchlist")
    Observable<JsonElement> addWatchlist(@Body Map<String, JsonArray> map, @Header("authorization") String str);

    @GET("/v4/magnet/delete")
    Observable<JsonElement> deleteMagnetsAllDebrid(@QueryMap Map<String, String> map);

    @DELETE("/rest/1.0/torrents/delete/{id}")
    Observable<Void> deleteMagnetsRealDebrid(@Path("id") String str, @Header("authorization") String str2);

    @FormUrlEncoded
    @POST("/api/transfer/directdl")
    Observable<JsonElement> directDl(@Query("apikey") String str, @FieldMap Map<String, String> map);

    @GET("/ajax/sources/{id}")
    Observable<JsonElement> get123MoviesGo(@Path("id") String str);

    @GET("/ajax/movie/episodes/{id}")
    Call<String> get123MoviesGoMeta(@Path("id") String str);

    @GET("/ajax/v2/episode/servers/{id}")
    Call<String> get123MoviesGoSeriesEpisodesServers(@Path("id") String str);

    @GET("/ajax/v2/season/episodes/{id}")
    Call<String> get123MoviesGoSeriesSeasonEpisodes(@Path("id") String str);

    @GET("ajax/v2/tv/seasons/{id}")
    Call<String> get123MoviesGoSeriesSeasons(@Path("id") String str);

    @Headers({"Content-Type:application/json"})
    @GET("/api/v1/adult")
    Observable<JsonElement> getAdultCategories(@QueryMap Map<String, String> map);

    @GET
    Observable<JsonElement> getAdultCategories2();

    @GET("/3/{type}/airing_today")
    Observable<JsonElement> getAiringToday(@Path("type") String str, @QueryMap Map<String, String> map);

    @Headers({"Content-Type:application/json", "trakt-api-version:2", "trakt-api-key: 39c944040d5f19862b77e7a66b6c419af653c1e3bf226cc691eb2abbb551730c"})
    @GET("/calendars/all/{type}/{start_date}/{days}")
    Observable<JsonElement> getCalendar(@Path("type") String str, @Path("start_date") String str2, @Path("days") String str3);

    @GET("/ajax-get-link-stream/")
    Call<String> getCartoonStreamLink(@QueryMap Map<String, String> map);

    @GET("/3/{type}/{movie_id}/credits")
    Observable<JsonElement> getCasts(@Path("type") String str, @Path("movie_id") String str2, @QueryMap Map<String, String> map);

    @GET("/3/genre/{type}/list")
    Observable<JsonElement> getCategory(@Path("type") String str, @QueryMap Map<String, String> map);

    @GET
    Observable<JsonElement> getCodeRealDebrid(@Url String str);

    @Headers({"Content-Type:application/json"})
    @POST("/oauth/device/code")
    Observable<JsonElement> getCodeTrakt(@Body Map<String, String> map);

    @GET("/3/collection/{id}")
    Observable<JsonElement> getCollection(@Path("id") String str, @QueryMap Map<String, String> map);

    @GET("/3/list/{id}")
    Observable<JsonElement> getCollectionThemovieDb(@Path("id") String str, @QueryMap Map<String, String> map);

    @Headers({"Content-Type:application/json", "trakt-api-version:2", "trakt-api-key: 39c944040d5f19862b77e7a66b6c419af653c1e3bf226cc691eb2abbb551730c"})
    @GET("/sync/collection/{type}")
    Observable<JsonElement> getCollectionTrakt(@Path("type") String str, @Header("Authorization") String str2);

    @GET("/3/{type}/{movie_id}/credits")
    Observable<JsonElement> getCredits(@Path("type") String str, @Path("movie_id") String str2, @QueryMap Map<String, String> map);

    @GET("/3/person/{person_id}/{type}")
    Observable<JsonElement> getDetailCast(@Path("person_id") String str, @Path("type") String str2, @QueryMap Map<String, String> map);

    @GET("/3/person/{person_id}/{type}")
    Observable<JsonElement> getDetailCast2(@Path("person_id") String str, @Path("type") String str2, @QueryMap Map<String, String> map);

    @Headers({"Accept: application/json"})
    @GET("/series/{tvdb_id}")
    Observable<JsonElement> getDetailTvdbShow(@Path("tvdb_id") String str, @Header("Authorization") String str2);

    @GET("/3/{type}/{id}")
    Observable<JsonElement> getDetails(@Path("type") String str, @Path("id") String str2, @QueryMap Map<String, String> map);

    @GET("/3/discover/{type}")
    Observable<JsonElement> getDiscover(@Path("type") String str, @QueryMap Map<String, String> map);

    @FormUrlEncoded
    @Headers({"authorization: Bearer false", "Content-Type: application/x-www-form-urlencoded", "x-requested-with: XMLHttpRequest"})
    @POST("/ajax/{mPath}")
    Observable<JsonElement> getEmbedFlix(@Path("mPath") String str, @FieldMap Map<String, String> map);

    @GET("/3/tv/{tv_id}/season/{season_number}/episode/{episode_number}")
    Observable<JsonElement> getEpisode(@Path("tv_id") String str, @Path("season_number") String str2, @Path("episode_number") String str3, @QueryMap Map<String, String> map);

    @GET("/3/tv/{id}/external_ids")
    Observable<JsonElement> getExternalIds(@Path("id") String str, @QueryMap Map<String, String> map);

    @GET("/ajax/movie_sources/{id}")
    Observable<JsonElement> getHDODirect(@Path("id") String str, @QueryMap Map<String, String> map);

    @GET("/ajax/movie_embed/{id}")
    Observable<JsonElement> getHDOEmbed(@Path("id") String str);

    @GET("/ajax/v4_movie_episodes/{id}")
    Observable<JsonElement> getHDOEpisodes(@Path("id") String str);

    @GET("/ajax/movie_token")
    Observable<JsonElement> getHDOToken(@QueryMap Map<String, String> map);

    @GET("api/v3/headlines.json")
    Observable<JsonElement> getHeadlines();

    @GET("/play/{movie_id}")
    Observable<String> getHindi1(@Path("movie_id") String str, @Header("Referer") String str2);

    @POST("/playlist/{file}")
    Observable<JsonElement> getHindi2(@Path("file") String str);

    @FormUrlEncoded
    @POST("/playlist/{file}")
    Call<String> getHindi3(@Path("file") String str);

    @Headers({"Content-Type:application/json", "trakt-api-version:2", "trakt-api-key: 39c944040d5f19862b77e7a66b6c419af653c1e3bf226cc691eb2abbb551730c"})
    @GET("/sync/watched/{type}")
    Observable<JsonElement> getHistory(@Path("type") String str, @Header("Authorization") String str2);

    @GET("/3/{type}/{movie_id}/images")
    Observable<JsonElement> getImages(@Path("type") String str, @Path("movie_id") String str2, @QueryMap Map<String, String> map);

    @GET("segments")
    Observable<IntroDbResponse> getIntroSegments(@Query("imdb_id") String str, @Query("season") Integer num, @Query("episode") Integer num2, @Query("is_movie") Boolean bool);

    @Headers({"Content-Type:application/json", "trakt-api-version:2", "trakt-api-key: 39c944040d5f19862b77e7a66b6c419af653c1e3bf226cc691eb2abbb551730c"})
    @GET("/users/{id}/lists/{list_id}/items/{type}")
    Observable<JsonElement> getItemCustomList(@Path("id") String str, @Path("list_id") String str2, @Path("type") String str3);

    @FormUrlEncoded
    @POST("/rest/1.0/unrestrict/link")
    Observable<JsonElement> getLinkRealDebrid(@FieldMap Map<String, String> map, @Header("authorization") String str);

    @FormUrlEncoded
    @POST("/rest/1.0/torrents/addMagnet")
    Observable<JsonElement> getLinkRealDebridTorrent(@FieldMap Map<String, String> map, @Header("authorization") String str);

    @FormUrlEncoded
    @Headers({"authorization: Bearer false", "Content-Type: application/x-www-form-urlencoded", "x-requested-with: XMLHttpRequest"})
    @POST("/wp-admin/admin-ajax.php")
    Observable<JsonElement> getLinksFFMovies(@FieldMap Map<String, String> map);

    @GET("/3/tv/{tv_id}/season/{season_number}")
    Observable<JsonElement> getListEpisode(@Path("tv_id") String str, @Path("season_number") String str2, @QueryMap Map<String, String> map);

    @GET("3/{type}/{typedata}")
    Observable<JsonElement> getListType(@Path("type") String str, @Path("typedata") String str2, @QueryMap Map<String, String> map);

    @Headers({"authorization: Bearer {token}", "accept: application/json"})
    @GET("/3/discover/{id}/images")
    Observable<JsonElement> getLogo(@Path("type") String str, @Path("id") String str2, @Path("id") String str3, @FieldMap Map<String, String> map);

    @GET("/v4/magnet/status")
    Observable<JsonElement> getMagnetStatusAllDebrid(@QueryMap Map<String, String> map);

    @GET("/rest/1.0/torrents")
    Observable<JsonElement> getMagnetsRealDebrid(@QueryMap Map<String, String> map, @Header("authorization") String str);

    @GET("/3/{type}/{id}/images")
    Observable<TmdbImagesResponse> getMediaImages(@Path("type") String str, @Path("id") long j7, @Query("api_key") String str2);

    @GET("/it/movie_search2.php")
    Observable<JsonElement> getMoviesHQ(@QueryMap Map<String, String> map);

    @GET("/3/movie/now_playing")
    Observable<JsonElement> getNowPlayingMovies(@QueryMap Map<String, String> map);

    @GET("/3/tv/on_the_air")
    Observable<JsonElement> getNowPlayingShows(@QueryMap Map<String, String> map);

    @GET("/3/{type}/popular")
    Observable<JsonElement> getPopular(@Path("type") String str, @QueryMap Map<String, String> map);

    @GET("/3/{type}/{id}/release_dates")
    Observable<JsonElement> getRating(@Path("type") String str, @Path("id") String str2, @QueryMap Map<String, String> map);

    @GET("/3/{type}/{id}/content_ratings")
    Observable<JsonElement> getRatingSeries(@Path("type") String str, @Path("id") String str2, @QueryMap Map<String, String> map);

    @GET("/3/{type}/{id}/reviews")
    Observable<JsonElement> getReviews(@Path("type") String str, @Path("id") String str2, @QueryMap Map<String, String> map);

    @GET("/3/search/multi")
    Observable<JsonElement> getSearchMulti(@QueryMap Map<String, String> map);

    @GET("/3/{type}/{movie_id}/recommendations")
    Observable<JsonElement> getSeeAlso(@Path("type") String str, @Path("movie_id") String str2, @QueryMap Map<String, String> map);

    @FormUrlEncoded
    @POST("api/movie_status")
    Observable<JsonElement> getStatus(@FieldMap Map<String, String> map);

    @GET("/3/{type}/{movie_id}/watch/providers")
    Observable<JsonElement> getStreamingServices(@Path("type") String str, @Path("movie_id") String str2, @QueryMap Map<String, String> map);

    @GET("/3/search/multi")
    Observable<JsonElement> getSuggestSearch(@QueryMap Map<String, String> map);

    @GET("/complete/search")
    Observable<JsonElement> getSuggestSearchGoogle(@QueryMap Map<String, String> map);

    @GET("/3/list/{id}")
    Observable<JsonElement> getTMDBCollections(@Path("id") String str, @QueryMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/oauth/v2/token")
    Observable<JsonElement> getTokenRealDebrid(@FieldMap Map<String, String> map);

    @Headers({"Content-Type:application/json"})
    @POST("/oauth/device/token")
    Observable<JsonElement> getTokenTrak(@Body Map<String, String> map);

    @GET("/3/{type}/top_rated")
    Observable<JsonElement> getTopRated(@Path("type") String str, @QueryMap Map<String, String> map);

    @GET("/3/{type}/{movie_id}/videos")
    Observable<JsonElement> getTrailer(@Path("type") String str, @Path("movie_id") String str2, @QueryMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/api/transfer/directdl")
    Observable<JsonElement> getTransferLinkPrem(@FieldMap Map<String, String> map, @Header("authorization") String str);

    @GET("/3/trending/{media_type}/week")
    Observable<JsonElement> getTrending(@Path("media_type") String str, @QueryMap Map<String, String> map);

    @Headers({"Content-Type:application/json", "trakt-api-version:2", "trakt-api-key: 39c944040d5f19862b77e7a66b6c419af653c1e3bf226cc691eb2abbb551730c"})
    @GET("/movies/trending")
    Observable<JsonElement> getTrendingMovie(@QueryMap Map<String, String> map);

    @GET("/3/{type}/upcoming")
    Observable<JsonElement> getUpcoming(@Path("type") String str, @QueryMap Map<String, String> map);

    @GET("/rest/1.0/user")
    Observable<JsonElement> getUserRealDebrid(@Header("authorization") String str);

    @GET("/api/transfer/list")
    Observable<JsonElement> getUserTorrentsPrem(@QueryMap Map<String, String> map);

    @GET("/rest/1.0/downloads")
    Observable<JsonElement> getUserTorrentsRD(@Header("authorization") String str);

    @Headers({"Content-Type:application/json", "trakt-api-version:2", "trakt-api-key: 39c944040d5f19862b77e7a66b6c419af653c1e3bf226cc691eb2abbb551730c"})
    @GET("/users/settings")
    Observable<JsonElement> getUserTrakt(@Header("authorization") String str);

    @Headers({"Content-Type:application/json", "trakt-api-version:2", "trakt-api-key: 39c944040d5f19862b77e7a66b6c419af653c1e3bf226cc691eb2abbb551730c", "X-Sort-By: added"})
    @GET("/sync/watchlist/{type}")
    Observable<JsonElement> getWatchList(@Path("type") String str, @Header("Authorization") String str2);

    @GET("/rest/1.0/torrents/info/{id}")
    Observable<JsonElement> gettorrentFiles(@FieldMap Map<String, String> map, @Header("authorization") String str, @Path("id") String str2);

    @GET("/v4/user")
    Observable<JsonElement> loginAllDebrid(@QueryMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/api/account/info")
    Observable<JsonElement> loginPremiumize(@FieldMap Map<String, String> map);

    @Headers({"x-thetvdb-api-version: 2.2.0", "content-type: application/json; charset=utf-8", "content-encoding: gzip"})
    @POST("/login")
    Observable<JsonElement> loginTvdb(@Body Map<String, String> map);

    @Headers({"Content-Type:application/json", "trakt-api-version:2", "trakt-api-key: 39c944040d5f19862b77e7a66b6c419af653c1e3bf226cc691eb2abbb551730c"})
    @POST("/sync/collection/remove")
    Observable<JsonElement> removeCollectionTrakt(@Body Map<String, JsonArray> map, @Header("authorization") String str);

    @Headers({"Content-Type:application/json", "trakt-api-version:2", "trakt-api-key: 39c944040d5f19862b77e7a66b6c419af653c1e3bf226cc691eb2abbb551730c"})
    @POST("/sync/history/remove")
    Observable<JsonElement> removeHistory(@Body Map<String, JsonArray> map, @Header("authorization") String str);

    @Headers({"Content-Type:application/json", "trakt-api-version:2", "trakt-api-key: 39c944040d5f19862b77e7a66b6c419af653c1e3bf226cc691eb2abbb551730c"})
    @POST("/sync/watchlist/remove")
    Observable<JsonElement> removeWatchList(@Body Map<String, JsonArray> map, @Header("authorization") String str);

    @Headers({"User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36", "Accept: application/json"})
    @GET("api/show/{slug}/season/{number}")
    Observable<JsonElement> ridoGetSeason(@Path("slug") String str, @Path("number") int i2);

    @Headers({"User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36", "Accept: application/json"})
    @GET("tv/{slug}/season-{season_number}")
    Observable<JsonElement> ridoGetSeason1(@Path("slug") String str, @Path("season_number") int i2);

    @Headers({"User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36", "Accept: application/json"})
    @GET("api/search")
    Observable<JsonElement> ridoSearch(@QueryMap Map<String, String> map);

    @Headers({"x-requested-with: XMLHttpRequest"})
    @GET("/ajax/suggest_search")
    Observable<JsonElement> search123MoviesHub(@QueryMap Map<String, String> map);

    @GET("/3/search/{type}")
    Observable<JsonElement> searchData(@Path("type") String str, @QueryMap Map<String, String> map);

    @FormUrlEncoded
    @Headers({"authorization: Bearer false", "Content-Type: application/x-www-form-urlencoded", "x-requested-with: XMLHttpRequest"})
    @POST("/ajax/movie_suggest_search.html")
    Observable<JsonElement> searchHDO(@FieldMap Map<String, String> map);

    @GET("/3/search/person")
    Observable<JsonElement> searchPeople(@QueryMap Map<String, String> map);

    @GET("/v4/link/unlock")
    Observable<JsonElement> unlockLinkAllDebrid(@QueryMap Map<String, String> map);

    @POST("/file/upload")
    @Multipart
    Observable<JsonElement> uploadFile(@Part("partner_code") RequestBody requestBody, @Part("request_time") RequestBody requestBody2, @Part("filename") RequestBody requestBody3, @Part("hash") RequestBody requestBody4, @Part MultipartBody.Part part);
}

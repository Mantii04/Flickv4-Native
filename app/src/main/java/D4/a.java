package D4;

import A4.s;
import android.content.Context;
import androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import flix.com.vision.api.alldebrid.AllDebridCommon;
import flix.com.vision.models.TmdbImagesResponse;
import flix.com.vision.models.tmdb.Network;
import flix.com.vision.subtitles.OpenSubtitles;
import io.reactivex.Observable;
import io.reactivex.Single;
import io.reactivex.schedulers.Schedulers;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public abstract class a {
    public static Observable<JsonElement> addLinkOffcloud(String str) {
        return k.getInstanceOffcloudAPI().addLink("Bearer " + G4.b.f1175b, str);
    }

    public static Observable<JsonElement> addMagnetAllDebrid(List<String> list) {
        HashMap hashMap = new HashMap();
        hashMap.put("apikey", AllDebridCommon.f15807j);
        hashMap.put("agent", "flixvision");
        return k.getInstanceAllDebridAPI().addMagnetsAllDebrid(hashMap, list);
    }

    public static Observable<JsonElement> addMagnetTorbox(String str) {
        return k.getInstanceTorboxAPI().addMagnet("Bearer " + J4.b.f1542b, str);
    }

    public static Observable<JsonElement> addWebLinkTorbox(String str) {
        return k.getInstanceTorboxAPI().addWebLink("Bearer " + J4.b.f1542b, str);
    }

    public static Observable<JsonElement> deleteMagnetAllDebrid(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("apikey", AllDebridCommon.f15807j);
        hashMap.put("agent", "flixvision");
        hashMap.put("id", str);
        return k.getInstanceAllDebridAPI().deleteMagnetsAllDebrid(hashMap);
    }

    public static Observable<Void> deleteMagnetRealDebrid(String str, String str2, String str3) {
        return k.getInstanceDebrid().deleteMagnetsRealDebrid(str, str2 + StringUtils.SPACE + str3);
    }

    public static Observable<JsonElement> deleteOffcloudDownloads(Set<String> set) {
        JsonObject jsonObject = new JsonObject();
        JsonArray jsonArray = new JsonArray();
        Iterator<String> it = set.iterator();
        while (it.hasNext()) {
            jsonArray.add(it.next());
        }
        jsonObject.add("requests", jsonArray);
        return k.getInstanceOffcloudAPI().removeDownloads("Bearer " + G4.b.f1175b, jsonObject);
    }

    public static Observable<JsonElement> deleteTorboxTorrent(String str) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("torrent_id", str);
        jsonObject.addProperty("operation", "delete");
        return k.getInstanceTorboxAPI().controlTorrent("Bearer " + J4.b.f1542b, jsonObject);
    }

    public static Observable<JsonElement> exploreOffcloudTorrent(String str) {
        return k.getInstanceOffcloudAPI().exploreTorrent("Bearer " + G4.b.f1175b, str, "detailed");
    }

    public static Observable<JsonElement> getAllDebridUserAccount(String str) {
        HashMap p6 = b.c.p("apikey", str);
        HashSet hashSet = AllDebridCommon.f15804b;
        p6.put("agent", "flixvision");
        return k.getInstanceAllDebridAPI().loginAllDebrid(p6);
    }

    public static Observable<JsonElement> getAllMagnetAllDebrid() {
        HashMap hashMap = new HashMap();
        hashMap.put("apikey", AllDebridCommon.f15807j);
        hashMap.put("agent", "flixvision");
        return k.getInstanceAllDebridAPI().getMagnetStatusAllDebrid(hashMap);
    }

    public static Observable<JsonElement> getCast(Context context, String str, long j7) {
        return k.getRequestTmdb().getCasts(str, String.valueOf(j7), b.c.q("api_key", "2f3cb5763db1117fcba3948632f8aad9", "language", "en-US"));
    }

    public static Observable<JsonElement> getCollection(long j7) {
        HashMap q6 = b.c.q("api_key", "2f3cb5763db1117fcba3948632f8aad9", "language", "en-US");
        q6.put("append_to_response", "external_ids");
        return k.getRequestTmdb().getCollection(String.valueOf(j7), q6);
    }

    public static Observable<JsonElement> getDetailCast(Context context, String str, long j7, boolean z6) {
        HashMap q6 = b.c.q("api_key", "2f3cb5763db1117fcba3948632f8aad9", "language", "en-US");
        q6.put("include_adult", Boolean.toString(z6));
        return k.getRequestTmdb().getDetailCast(String.valueOf(j7), str, q6);
    }

    public static Observable<JsonElement> getDetails(Context context, String str, long j7) {
        HashMap q6 = b.c.q("api_key", "2f3cb5763db1117fcba3948632f8aad9", "language", "en-US");
        q6.put("append_to_response", "external_ids");
        return k.getRequestTmdb().getDetails(str, String.valueOf(j7), q6);
    }

    public static Observable<JsonElement> getEpisode(Context context, String str, String str2, String str3) {
        return k.getRequestTmdb().getEpisode(str, str2, str3, b.c.q("api_key", "2f3cb5763db1117fcba3948632f8aad9", "language", "en-US"));
    }

    public static Observable<JsonElement> getIntroSegment(String str, Integer num, Integer num2, Boolean bool) {
        return k.getInstanceIntroDBAPI().getSegments(str, num, num2, bool);
    }

    public static Observable<JsonElement> getItemsByGenres(Context context, String str, int i2, int i7, String str2, String str3, int i8, String str4) {
        String str5 = i7 == 0 ? "movie" : "tv";
        HashMap q6 = b.c.q("api_key", "2f3cb5763db1117fcba3948632f8aad9", "language", "en-US");
        q6.put("include_adult", Boolean.toString(false));
        q6.put("include_video", Boolean.toString(false));
        if (i8 != -1) {
            if (i8 == 999) {
                q6.put("with_origin_country", HlsMediaPlaylist.Interstitial.SNAP_TYPE_IN);
            } else if (i8 == 9999) {
                q6.put("with_companies", "420|19551|38679|2301|13252");
            } else if (i7 == 0) {
                int providerId = Network.getProviderId(i8);
                if (providerId != -1) {
                    q6.put("with_watch_providers", String.valueOf(providerId));
                    q6.put("watch_region", "US");
                }
            } else {
                q6.put("with_networks", String.valueOf(i8));
            }
        }
        if (str2 != null) {
            if (i7 == 1) {
                q6.put("first_air_date_year", str2);
            } else {
                q6.put("primary_release_year", str2);
            }
        }
        q6.put("sort_by", str3);
        if (!str.equals("-1") && !str.equals("0")) {
            q6.put("with_genres", str);
        }
        q6.put("page", String.valueOf(i2));
        return k.getRequestTmdb().getDiscover(str5, q6);
    }

    public static Observable<JsonElement> getItemsByGenresLeanBack(Context context, String str, int i2, int i7, String str2, boolean z6) {
        String str3 = i7 == 0 ? "movie" : "tv";
        HashMap q6 = b.c.q("api_key", "2f3cb5763db1117fcba3948632f8aad9", "language", "en-US");
        q6.put("sort_by", str2);
        q6.put("include_adult", Boolean.toString(false));
        q6.put("include_video", Boolean.toString(false));
        if (!str.equals("-1")) {
            q6.put("with_genres", str);
        }
        q6.put("page", String.valueOf(i2));
        return k.getRequestTmdb().getDiscover(str3, q6);
    }

    public static Observable<JsonElement> getLinkRealDebrid(String str, String str2, String str3) {
        HashMap p6 = b.c.p("link", str);
        return k.getInstanceDebrid().getLinkRealDebrid(p6, str2 + StringUtils.SPACE + str3);
    }

    public static Observable<JsonElement> getListEpisode(Context context, String str, String str2) {
        return k.getRequestTmdb().getListEpisode(str, str2, b.c.q("api_key", "2f3cb5763db1117fcba3948632f8aad9", "language", "en-US"));
    }

    public static Observable<JsonElement> getMagnetStatusAllDebrid(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("apikey", AllDebridCommon.f15807j);
        hashMap.put("agent", "flixvision");
        hashMap.put("id", str + "");
        return k.getInstanceAllDebridAPI().getMagnetStatusAllDebrid(hashMap);
    }

    public static Observable<JsonElement> getMagnetsRealDebridAll(String str, String str2, int i2) {
        HashMap hashMap = new HashMap();
        hashMap.put("limit", i2 + "");
        return k.getInstanceDebrid().getMagnetsRealDebrid(hashMap, str + StringUtils.SPACE + str2);
    }

    public static Observable<JsonElement> getMagnetsRealDebridLatest(String str, String str2, int i2) {
        HashMap hashMap = new HashMap();
        hashMap.put("limit", i2 + "");
        return k.getInstanceDebrid().getMagnetsRealDebrid(hashMap, str + StringUtils.SPACE + str2);
    }

    public static Observable<TmdbImagesResponse> getMediaImages(String str, long j7) {
        return k.getRequestTmdb().getMediaImages(str, j7, "2f3cb5763db1117fcba3948632f8aad9");
    }

    public static Observable<JsonElement> getOffcloudUserAccount(String str) {
        return k.getInstanceOffcloudAPI().getUserAccount("Bearer " + str);
    }

    public static Observable<JsonElement> getOffcloudUserTorrents() {
        return k.getInstanceOffcloudAPI().getUserTorrents("Bearer " + G4.b.f1175b);
    }

    public static Observable<JsonElement> getPremUserAccount(String str) {
        return k.getInstancePremiumizeAPI().loginPremiumize(b.c.p("apikey", str));
    }

    public static Observable<JsonElement> getRating(Context context, String str, long j7) {
        return k.getRequestTmdb().getRating(str, String.valueOf(j7), b.c.q("api_key", "2f3cb5763db1117fcba3948632f8aad9", "language", "en-US"));
    }

    public static Observable<JsonElement> getRatingSeries(Context context, String str, long j7) {
        return k.getRequestTmdb().getRatingSeries(str, String.valueOf(j7), b.c.q("api_key", "2f3cb5763db1117fcba3948632f8aad9", "language", "en-US"));
    }

    public static Observable<JsonElement> getRealDebridUserAccount(String str, String str2) {
        return k.getInstanceDebrid().getUserRealDebrid(str + StringUtils.SPACE + str2);
    }

    public static Observable<JsonElement> getSeeAlso(Context context, int i2, long j7) {
        HashMap q6 = b.c.q("api_key", "2f3cb5763db1117fcba3948632f8aad9", "language", "en-US");
        q6.put("include_adult", Boolean.toString(false));
        q6.put("include_video", Boolean.toString(false));
        q6.put("page", "1");
        return k.getRequestTmdb().getSeeAlso(i2 == 0 ? "movie" : "tv", String.valueOf(j7), q6);
    }

    public static Observable<JsonElement> getStreamingServices(Context context, String str, long j7) {
        return k.getRequestTmdb().getStreamingServices(str, String.valueOf(j7), b.c.p("api_key", "2f3cb5763db1117fcba3948632f8aad9"));
    }

    public static Observable<JsonElement> getSuggest(Context context, String str) {
        HashMap q6 = b.c.q("client", "youtube", "ds", "yt");
        q6.put("q", str);
        return k.getInstanceFlix("http://suggestqueries.google.com").getSuggestSearchGoogle(q6);
    }

    public static Single<String> getTmdbPoster(int i2, boolean z6) {
        return getDetails(null, z6 ? "tv" : "movie", i2).subscribeOn(Schedulers.io()).map(new s(1)).firstOrError();
    }

    public static Observable<JsonElement> getTorboxDownloadLink(String str, String str2) {
        return k.getInstanceTorboxAPI().getDownloadLink("Bearer " + J4.b.f1542b, J4.b.f1542b, str, str2, false);
    }

    public static Observable<JsonElement> getTorboxUserAccount(String str) {
        return k.getInstanceTorboxAPI().getUserAccount("Bearer " + str);
    }

    public static Observable<JsonElement> getTorboxUserTorrents(String str) {
        return k.getInstanceTorboxAPI().getUserTorrents("Bearer " + str);
    }

    public static Observable<JsonElement> getTorboxWebDownloadLink(String str, String str2) {
        return k.getInstanceTorboxAPI().getWebDownloadLink("Bearer " + J4.b.f1542b, J4.b.f1542b, str, str2, false);
    }

    public static Observable<JsonElement> getTorrent(String str, String str2, String str3) {
        HashMap p6 = b.c.p("magnet", str);
        return k.getInstanceDebrid().getLinkRealDebridTorrent(p6, str2 + StringUtils.SPACE + str3);
    }

    public static Observable<JsonElement> getTrailer(Context context, String str, long j7) {
        return k.getRequestTmdb().getTrailer(str, String.valueOf(j7), b.c.p("api_key", "2f3cb5763db1117fcba3948632f8aad9"));
    }

    public static Observable<JsonElement> getUserTorrentPrem(String str) {
        return k.getInstancePremiumizeAPI().getUserTorrentsPrem(b.c.p("apikey", str));
    }

    public static Observable<JsonElement> gettabbedList(Context context, int i2, String str, int i7) {
        HashMap q6 = b.c.q("api_key", "2f3cb5763db1117fcba3948632f8aad9", "language", "en-US");
        q6.put("include_video", Boolean.toString(false));
        q6.put("include_adult", Boolean.toString(false));
        q6.put("page", String.valueOf(i2));
        if (str == null || !str.equalsIgnoreCase("movie")) {
            if (str != null && str.equalsIgnoreCase("tv")) {
                if (i7 == 0) {
                    return k.getRequestTmdb().getTrending(str, q6);
                }
                if (i7 == 1) {
                    return k.getRequestTmdb().getNowPlayingShows(q6);
                }
                if (i7 == 2) {
                    return k.getRequestTmdb().getPopular(str, q6);
                }
                if (i7 == 3) {
                    return k.getRequestTmdb().getTopRated(str, q6);
                }
                if (i7 == 4) {
                    return k.getRequestTmdb().getAiringToday(str, q6);
                }
            }
        } else {
            if (i7 == 0) {
                return k.getRequestTmdb().getTrending(str, q6);
            }
            if (i7 == 1) {
                return k.getRequestTmdb().getNowPlayingMovies(q6);
            }
            if (i7 == 2) {
                return k.getRequestTmdb().getPopular(str, q6);
            }
            if (i7 == 3) {
                return k.getRequestTmdb().getTopRated(str, q6);
            }
            if (i7 == 4) {
                return k.getRequestTmdb().getUpcoming(str, q6);
            }
        }
        return k.getRequestTmdb().getTrending(str, q6);
    }

    public static Observable<JsonElement> ridoSearch(String str, String str2) {
        HashMap q6 = b.c.q("q", str2, "lang", "en");
        q6.put("limit", "5");
        return k.getInstanceRidoMovies(str).ridoSearch(q6);
    }

    public static Observable<JsonElement> searchData(Context context, String str, int i2, String str2, boolean z6) {
        if (str == null) {
            str = "";
        }
        HashMap q6 = b.c.q("api_key", "2f3cb5763db1117fcba3948632f8aad9", "language", "en-US");
        q6.put("include_adult", Boolean.toString(false));
        q6.put("include_video", Boolean.toString(false));
        q6.put("page", String.valueOf(i2));
        q6.put(OpenSubtitles.Params.Key.QUERY, str);
        return k.getRequestTmdb().searchData(str2, q6);
    }

    public static Observable<JsonElement> searchDataMulti(Context context, String str, int i2, boolean z6) {
        if (str == null) {
            str = "";
        }
        HashMap q6 = b.c.q("api_key", "2f3cb5763db1117fcba3948632f8aad9", "language", "en-US");
        q6.put("page", String.valueOf(i2));
        q6.put(OpenSubtitles.Params.Key.QUERY, str);
        q6.put("include_adult", Boolean.toString(false));
        q6.put("include_video", Boolean.toString(false));
        return k.getRequestTmdb().getSearchMulti(q6);
    }

    public static Observable<JsonElement> searchPeople(Context context, String str, int i2) {
        if (str == null) {
            str = "";
        }
        HashMap q6 = b.c.q("api_key", "2f3cb5763db1117fcba3948632f8aad9", "language", "en-US");
        q6.put("page", String.valueOf(i2));
        q6.put(OpenSubtitles.Params.Key.QUERY, str);
        q6.put("include_adult", Boolean.toString(false));
        return k.getRequestTmdb().searchPeople(q6);
    }

    public static Observable<JsonElement> unlockLinkAllDebrid(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("apikey", AllDebridCommon.f15807j);
        hashMap.put("agent", "flixvision");
        hashMap.put("link", str);
        return k.getInstanceAllDebridAPI().unlockLinkAllDebrid(hashMap);
    }
}

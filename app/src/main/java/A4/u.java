package A4;

import android.content.SharedPreferences;
import android.os.Handler;
import android.util.Log;
import android.widget.Toast;
import androidx.media3.common.C;
import androidx.media3.datasource.DataSchemeDataSource;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import cz.msebera.android.httpclient.HttpStatus;
import flix.com.vision.App;
import flix.com.vision.activities.LinksActivity;
import flix.com.vision.activities.MainActivity;
import flix.com.vision.activities.UserTorrentsActivity;
import flix.com.vision.activities.leanback.SlideshowActivity;
import flix.com.vision.activities.leanback.fragment.TVListFragmentMain;
import flix.com.vision.api.alldebrid.AllDebridApiKeyEntryActivity;
import flix.com.vision.api.alldebrid.AllDebridCommon;
import flix.com.vision.api.offcloud.OffCloudApiKeyEntryActivity;
import flix.com.vision.api.premiumize.PremApiKeyEntryActivity;
import flix.com.vision.api.premiumize.PremiumizeCommon;
import flix.com.vision.api.torbox.TorBoxApiKeyEntryActivity;
import flix.com.vision.models.Movie;
import flix.com.vision.models.TmdbImagesResponse;
import flix.com.vision.models.VideoSource;
import flix.com.vision.models.tmdb.Network;
import flix.com.vision.utils.JsonUtils;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import m4.D;

/* loaded from: classes2.dex */
public final /* synthetic */ class u implements Consumer {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f96b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f97e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f98f;

    public /* synthetic */ u(int i2, Object obj, Object obj2) {
        this.f96b = i2;
        this.f97e = obj;
        this.f98f = obj2;
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        String str;
        Network network;
        flix.com.vision.activities.leanback.fragment.d dVar;
        String str2 = null;
        int i2 = 1;
        Object obj2 = this.f98f;
        Object obj3 = this.f97e;
        switch (this.f96b) {
            case 0:
                String str3 = (String) obj;
                SlideshowActivity slideshowActivity = (SlideshowActivity) obj3;
                if (str3 != null) {
                    int i7 = SlideshowActivity.f15502v;
                    slideshowActivity.getClass();
                    if (!str3.isEmpty()) {
                        String concat = "https://image.tmdb.org/t/p/w500".concat(str3);
                        Movie movie = (Movie) obj2;
                        movie.is_title_logo_available = true;
                        movie.logoUrl = concat;
                        slideshowActivity.f15503b.setVisibility(8);
                        D.get().load(concat).into(slideshowActivity.f15505f, new B(slideshowActivity, movie));
                        new Handler().postDelayed(new t(slideshowActivity, i2), C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
                        break;
                    }
                }
                slideshowActivity.f15505f.setVisibility(8);
                slideshowActivity.f15503b.setVisibility(0);
                break;
            case 1:
                JsonElement jsonElement = (JsonElement) obj;
                int i8 = AllDebridApiKeyEntryActivity.f15797p;
                AllDebridApiKeyEntryActivity allDebridApiKeyEntryActivity = (AllDebridApiKeyEntryActivity) obj3;
                Q4.d dVar2 = allDebridApiKeyEntryActivity.f15803n;
                if (dVar2 != null) {
                    try {
                        dVar2.dismiss();
                    } catch (Exception unused) {
                    }
                }
                JsonObject asJsonObject = jsonElement.getAsJsonObject();
                if (!asJsonObject.get("status").getAsString().equals(FirebaseAnalytics.Param.SUCCESS)) {
                    N4.a.Success(allDebridApiKeyEntryActivity, A.i.k("API Key not valid: ", asJsonObject.get("message").getAsString()), null, 80, 1);
                    break;
                } else {
                    SharedPreferences.Editor edit = App.getInstance().f14440s.edit();
                    JsonObject asJsonObject2 = asJsonObject.get(DataSchemeDataSource.SCHEME_DATA).getAsJsonObject().get("user").getAsJsonObject();
                    String asString = asJsonObject2.get("username").getAsString();
                    boolean asBoolean = asJsonObject2.get("isPremium").getAsBoolean();
                    int asInt = asJsonObject2.get("premiumUntil").getAsInt();
                    if (asInt > 0) {
                        edit.putString("ALL_DEBRID_PREMIUM_UNTIL", AllDebridApiKeyEntryActivity.getDate(asInt));
                    }
                    edit.putBoolean("ALL_DEBRID_LOGGED_IN", true);
                    edit.putString("ALL_DEBRID_USERNAME", asString);
                    edit.putBoolean("ALL_DEBRID_IS_PREMIUM", asBoolean);
                    String str4 = T4.f.f3687a;
                    String str5 = (String) obj2;
                    edit.putString("all_debrid_apikey", str5);
                    edit.apply();
                    edit.commit();
                    AllDebridCommon.f15806f = true;
                    AllDebridCommon.f15807j = str5;
                    N4.a.Success(allDebridApiKeyEntryActivity, "Successfully logged in", null, 80, 1);
                    allDebridApiKeyEntryActivity.finish();
                    break;
                }
            case 2:
                JsonElement jsonElement2 = (JsonElement) obj;
                int i9 = OffCloudApiKeyEntryActivity.f15808p;
                OffCloudApiKeyEntryActivity offCloudApiKeyEntryActivity = (OffCloudApiKeyEntryActivity) obj3;
                Q4.d dVar3 = offCloudApiKeyEntryActivity.f15814n;
                if (dVar3 != null) {
                    try {
                        dVar3.dismiss();
                    } catch (Exception unused2) {
                    }
                }
                if (!jsonElement2.isJsonObject() || !jsonElement2.getAsJsonObject().has("email")) {
                    N4.a.Success(offCloudApiKeyEntryActivity, "API Key not valid.", null, 80, 1);
                    break;
                } else {
                    SharedPreferences.Editor edit2 = App.getInstance().f14440s.edit();
                    String asString2 = jsonElement2.getAsJsonObject().get("email").getAsString();
                    boolean asBoolean2 = jsonElement2.getAsJsonObject().get("is_premium").getAsBoolean();
                    edit2.putString("pref_offcloud_premium_until", jsonElement2.getAsJsonObject().get("expiration_date").getAsString());
                    edit2.putString("pref_offcloud_username", asString2);
                    edit2.putBoolean("offcloud_logged_in", true);
                    edit2.putBoolean("pref_offcloud_is_premium", asBoolean2);
                    String str6 = (String) obj2;
                    edit2.putString("offcloud_apikey", str6);
                    edit2.apply();
                    G4.b.f1174a = true;
                    G4.b.f1175b = str6;
                    N4.a.Success(offCloudApiKeyEntryActivity, "Successfully logged into Offcloud", null, 80, 1);
                    offCloudApiKeyEntryActivity.finish();
                    break;
                }
            case 3:
                JsonElement jsonElement3 = (JsonElement) obj;
                int i10 = PremApiKeyEntryActivity.f15815p;
                PremApiKeyEntryActivity premApiKeyEntryActivity = (PremApiKeyEntryActivity) obj3;
                Q4.d dVar4 = premApiKeyEntryActivity.f15821n;
                if (dVar4 != null) {
                    try {
                        dVar4.dismiss();
                    } catch (Exception unused3) {
                    }
                }
                JsonObject asJsonObject3 = jsonElement3.getAsJsonObject();
                if (!asJsonObject3.get("status").getAsString().equals(FirebaseAnalytics.Param.SUCCESS)) {
                    N4.a.Success(premApiKeyEntryActivity, A.i.k("API Key not valid: ", asJsonObject3.get("message").getAsString()), null, 80, 1);
                    break;
                } else {
                    int asInt2 = asJsonObject3.get("premium_until").getAsInt();
                    if (asInt2 > 0) {
                        App.getInstance().f14440s.edit().putString("PREM_PREMIUM_UNTIL", PremApiKeyEntryActivity.getDate(asInt2)).apply();
                    }
                    App.getInstance().f14440s.edit().putBoolean("PREM_LOGGED_IN", true).apply();
                    SharedPreferences.Editor edit3 = App.getInstance().f14440s.edit();
                    String str7 = T4.f.f3687a;
                    String str8 = (String) obj2;
                    edit3.putString("prem_apikey", str8).apply();
                    PremiumizeCommon.f15822b = true;
                    PremiumizeCommon.f15823e = str8;
                    N4.a.Success(premApiKeyEntryActivity, "Successfully logged in", null, 80, 1);
                    premApiKeyEntryActivity.finish();
                    break;
                }
            case 4:
                JsonElement jsonElement4 = (JsonElement) obj;
                int i11 = TorBoxApiKeyEntryActivity.f15841p;
                TorBoxApiKeyEntryActivity torBoxApiKeyEntryActivity = (TorBoxApiKeyEntryActivity) obj3;
                Q4.d dVar5 = torBoxApiKeyEntryActivity.f15847n;
                if (dVar5 != null) {
                    try {
                        dVar5.dismiss();
                    } catch (Exception unused4) {
                    }
                }
                JsonObject asJsonObject4 = jsonElement4.getAsJsonObject();
                if (!asJsonObject4.has(FirebaseAnalytics.Param.SUCCESS) || !asJsonObject4.get(FirebaseAnalytics.Param.SUCCESS).getAsBoolean()) {
                    N4.a.Success(torBoxApiKeyEntryActivity, A.i.k("API Key not valid: ", asJsonObject4.has("detail") ? asJsonObject4.get("detail").getAsString() : "Unknown error"), null, 80, 1);
                    break;
                } else {
                    SharedPreferences.Editor edit4 = App.getInstance().f14440s.edit();
                    JsonObject asJsonObject5 = asJsonObject4.get(DataSchemeDataSource.SCHEME_DATA).getAsJsonObject();
                    String asString3 = (!asJsonObject5.has("email") || asJsonObject5.get("email").isJsonNull()) ? "Torbox User" : asJsonObject5.get("email").getAsString();
                    boolean z6 = (asJsonObject5.has("plan") ? asJsonObject5.get("plan").getAsInt() : 0) > 0;
                    if (asJsonObject5.has("premium_expires_at") && !asJsonObject5.get("premium_expires_at").isJsonNull()) {
                        edit4.putString("pref_torbox_premium_until", TorBoxApiKeyEntryActivity.formatTorboxDate(asJsonObject5.get("premium_expires_at").getAsString()));
                    }
                    edit4.putBoolean("torbox_logged_in", true);
                    edit4.putString("pref_torbox_username", asString3);
                    edit4.putBoolean("pref_torbox_is_premium", z6);
                    String str9 = (String) obj2;
                    edit4.putString("torbox_apikey", str9);
                    edit4.apply();
                    J4.b.f1541a = true;
                    J4.b.f1542b = str9;
                    N4.a.Success(torBoxApiKeyEntryActivity, "Successfully logged into Torbox", null, 80, 1);
                    torBoxApiKeyEntryActivity.finish();
                    break;
                }
                break;
            case 5:
                TmdbImagesResponse tmdbImagesResponse = (TmdbImagesResponse) obj;
                flix.com.vision.activities.leanback.fragment.d dVar6 = (flix.com.vision.activities.leanback.fragment.d) obj3;
                List<TmdbImagesResponse.TmdbLogo> list = tmdbImagesResponse.logos;
                if (list != null && !list.isEmpty()) {
                    Iterator<TmdbImagesResponse.TmdbLogo> it = tmdbImagesResponse.logos.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            TmdbImagesResponse.TmdbLogo next = it.next();
                            if ("en".equalsIgnoreCase(next.language) && (str = next.filePath) != null && str.endsWith("png")) {
                                str2 = next.filePath;
                            }
                        }
                    }
                    if (str2 == null) {
                        str2 = tmdbImagesResponse.logos.get(0).filePath;
                    }
                }
                if (str2 != null) {
                    String concat2 = "https://image.tmdb.org/t/p/w500".concat(str2);
                    Movie movie2 = (Movie) obj2;
                    movie2.logoUrl = concat2;
                    try {
                        D.get().load(concat2).into(dVar6.f15575q0, new flix.com.vision.activities.leanback.fragment.c(dVar6, movie2));
                        break;
                    } catch (Exception e3) {
                        e3.printStackTrace();
                        return;
                    }
                }
                break;
            case 6:
                Network network2 = (Network) obj2;
                JsonElement jsonElement5 = (JsonElement) obj;
                TVListFragmentMain tVListFragmentMain = (TVListFragmentMain) obj3;
                tVListFragmentMain.getClass();
                try {
                    ArrayList<Movie> parseListMovie = JsonUtils.parseListMovie(jsonElement5, 1);
                    if (parseListMovie != null && parseListMovie.size() > 0) {
                        Movie movie3 = parseListMovie.get(0);
                        tVListFragmentMain.f15542y0.put(Integer.valueOf(network2.id), movie3);
                        if (tVListFragmentMain.f15518D0 && (network = tVListFragmentMain.f15517C0) != null && network.id == network2.id && (dVar = tVListFragmentMain.f15536V0) != null) {
                            dVar.onMovieSelected(movie3);
                            break;
                        }
                    }
                } catch (Exception e7) {
                    e7.printStackTrace();
                    return;
                }
                break;
            case 7:
                int i12 = UserTorrentsActivity.f15279y;
                ((UserTorrentsActivity) obj3).h();
                Log.d(MainActivity.class.toString(), (String) obj2, (Throwable) obj);
                break;
            default:
                int i13 = UserTorrentsActivity.f15279y;
                UserTorrentsActivity userTorrentsActivity = (UserTorrentsActivity) obj3;
                userTorrentsActivity.h();
                JsonObject asJsonObject6 = ((JsonElement) obj).getAsJsonObject();
                if (!asJsonObject6.has(FirebaseAnalytics.Param.SUCCESS) || !asJsonObject6.get(FirebaseAnalytics.Param.SUCCESS).getAsBoolean()) {
                    Toast.makeText(userTorrentsActivity, "Torbox could not generate a stream link.", 0).show();
                    break;
                } else {
                    VideoSource videoSource = (VideoSource) obj2;
                    videoSource.streamUrl = asJsonObject6.get(DataSchemeDataSource.SCHEME_DATA).getAsString();
                    videoSource.streamable = true;
                    LinksActivity.setRDQtyLabel(videoSource);
                    if (videoSource.quality == 0) {
                        videoSource.quality = HttpStatus.SC_MULTIPLE_CHOICES;
                    }
                    userTorrentsActivity.i(videoSource);
                    break;
                }
                break;
        }
    }
}

package C4;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import android.view.MenuItem;
import android.widget.Toast;
import androidx.media3.common.Player;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.datasource.DataSchemeDataSource;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.analytics.DefaultAnalyticsCollector;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import com.android.volley.Response;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.models.Movie;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.schedulers.Schedulers;
import l.C1191v1;
import l.InterfaceC1188u1;

/* loaded from: classes2.dex */
public final /* synthetic */ class M implements InterfaceC1188u1, ListenerSet.Event, Consumer, Response.Listener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f577b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f578e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f579f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f580j;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ Object f581m;

    public /* synthetic */ M(P p6, Movie movie, int i2, C1191v1 c1191v1) {
        this.f577b = 0;
        this.f579f = p6;
        this.f580j = movie;
        this.f578e = i2;
        this.f581m = c1191v1;
    }

    @Override // androidx.media3.common.util.Consumer
    public void accept(Object obj) {
        ((MediaSourceEventListener.EventDispatcher) this.f579f).lambda$loadStarted$0((LoadEventInfo) this.f580j, (MediaLoadData) this.f581m, this.f578e, (MediaSourceEventListener) obj);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        switch (this.f577b) {
            case 1:
                DefaultAnalyticsCollector.lambda$onPositionDiscontinuity$46((AnalyticsListener.EventTime) this.f579f, this.f578e, (Player.PositionInfo) this.f580j, (Player.PositionInfo) this.f581m, analyticsListener);
                break;
            default:
                DefaultAnalyticsCollector.lambda$onLoadStarted$26((AnalyticsListener.EventTime) this.f579f, (LoadEventInfo) this.f580j, (MediaLoadData) this.f581m, this.f578e, analyticsListener);
                break;
        }
    }

    @Override // l.InterfaceC1188u1
    public boolean onMenuItemClick(MenuItem menuItem) {
        P p6 = (P) this.f579f;
        p6.getClass();
        int itemId = menuItem.getItemId();
        int i2 = R.id.action_add_favorites_live_tv;
        Movie movie = (Movie) this.f580j;
        Context context = p6.f592e;
        if (itemId == i2) {
            App.getInstance().f14439r.addMovieFavorites(movie);
            Toast.makeText(context, context.getString(R.string.added_fav_label), 0).show();
        }
        if (menuItem.getItemId() == R.id.action_remove_favorites_live_tv) {
            App.getInstance().f14439r.deleteFavoriteMovie(movie);
            Toast.makeText(context, context.getString(R.string.removed_fav_label), 0).show();
            p6.f591d.favoriteDeleted(this.f578e);
        }
        ((C1191v1) this.f581m).dismiss();
        return true;
    }

    @Override // com.android.volley.Response.Listener
    public void onResponse(Object obj) {
        boolean z6;
        boolean z7;
        int i2;
        String str = (String) obj;
        flix.com.vision.processors.english.m mVar = (flix.com.vision.processors.english.m) this.f579f;
        mVar.getClass();
        try {
            JsonObject asJsonObject = JsonParser.parseString(str).getAsJsonObject();
            if (asJsonObject.has(FirebaseAnalytics.Param.SUCCESS) && asJsonObject.get(FirebaseAnalytics.Param.SUCCESS).getAsBoolean() && asJsonObject.has(DataSchemeDataSource.SCHEME_DATA)) {
                JsonElement jsonElement = asJsonObject.get(DataSchemeDataSource.SCHEME_DATA);
                JsonObject asJsonObject2 = (!jsonElement.isJsonArray() || jsonElement.getAsJsonArray().size() <= 0) ? jsonElement.isJsonObject() ? jsonElement.getAsJsonObject() : null : jsonElement.getAsJsonArray().get(0).getAsJsonObject();
                if (asJsonObject2 != null) {
                    String asString = asJsonObject2.has("download_state") ? asJsonObject2.get("download_state").getAsString() : "";
                    if (!asString.equals("completed") && !asString.equals("cached")) {
                        z6 = false;
                        if (asJsonObject2.has("progress") && asJsonObject2.get("progress").getAsDouble() == 1.0d) {
                            z6 = true;
                        }
                        z7 = !asJsonObject2.has("files") && asJsonObject2.getAsJsonArray("files").size() > 0;
                        String str2 = (String) this.f580j;
                        String str3 = (String) this.f581m;
                        if (!z6 && z7) {
                            String[] b7 = flix.com.vision.processors.english.m.b(asJsonObject2);
                            if (b7 != null) {
                                D4.a.getTorboxDownloadLink(str3, b7[0]).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new flix.com.vision.processors.english.f(mVar, Long.parseLong(b7[1]), str2, 1), new A4.c(26));
                                return;
                            }
                            return;
                        }
                        if (!z7 || (i2 = this.f578e) >= 3) {
                            Log.d("Torbox", "Skipping link: Not fully cached or missing files. State: ".concat(asString));
                        } else {
                            new Handler().postDelayed(new flix.com.vision.processors.english.i(mVar, str2, str3, i2, 0), ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
                            return;
                        }
                    }
                    z6 = true;
                    if (asJsonObject2.has("progress")) {
                        z6 = true;
                    }
                    if (asJsonObject2.has("files")) {
                    }
                    String str22 = (String) this.f580j;
                    String str32 = (String) this.f581m;
                    if (!z6) {
                    }
                    if (z7) {
                    }
                    Log.d("Torbox", "Skipping link: Not fully cached or missing files. State: ".concat(asString));
                }
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public /* synthetic */ M(AnalyticsListener.EventTime eventTime, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i2) {
        this.f577b = 1;
        this.f579f = eventTime;
        this.f578e = i2;
        this.f580j = positionInfo;
        this.f581m = positionInfo2;
    }

    public /* synthetic */ M(Object obj, Object obj2, Object obj3, int i2, int i7) {
        this.f577b = i7;
        this.f579f = obj;
        this.f580j = obj2;
        this.f581m = obj3;
        this.f578e = i2;
    }
}

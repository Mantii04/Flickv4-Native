package androidx.media3.exoplayer.source.chunk;

import P2.d;
import S0.q;
import android.content.Context;
import android.net.Uri;
import androidx.media3.common.Format;
import androidx.media3.datasource.DataSchemeDataSource;
import androidx.media3.exoplayer.source.chunk.BundledChunkExtractor;
import androidx.transition.e;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseCommonRegistrar;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.send.DataTransportCrashlyticsReportSender;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.google.firebase.remoteconfig.internal.ConfigContainer;
import com.google.firebase.remoteconfig.internal.ConfigFetchHandler;
import flix.com.vision.App;
import flix.com.vision.activities.AnimesListActivity;
import flix.com.vision.activities.DramaHomeActivity;
import flix.com.vision.activities.TraktActivity;
import flix.com.vision.activities.TraktSignInActivity;
import flix.com.vision.activities.UserTorrentsActivity;
import flix.com.vision.models.Movie;
import io.reactivex.functions.Predicate;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
import v0.C;
import v0.H;
import v0.I;
import v0.InterfaceC1737v;
import x1.InterfaceC1820w;
import x1.InterfaceC1821x;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements BundledChunkExtractor.ManifestFormatMerger, LibraryVersionComponent.VersionExtractor, d, SuccessContinuation, Response.ErrorListener, InterfaceC1737v, I, InterfaceC1821x, Response.Listener, Predicate {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7486b;

    public /* synthetic */ a(int i2) {
        this.f7486b = i2;
    }

    @Override // P2.d
    public Object apply(Object obj) {
        byte[] lambda$static$0;
        lambda$static$0 = DataTransportCrashlyticsReportSender.lambda$static$0((CrashlyticsReport) obj);
        return lambda$static$0;
    }

    @Override // v0.I
    public /* synthetic */ C[] createExtractors(Uri uri, Map map) {
        return H.a(this, uri, map);
    }

    @Override // v0.I
    public /* synthetic */ I experimentalSetCodecsToParseWithinGopSampleDependencies(int i2) {
        return H.b(this, i2);
    }

    @Override // v0.I
    public /* synthetic */ I experimentalSetTextTrackTranscodingEnabled(boolean z6) {
        return H.c(this, z6);
    }

    @Override // com.google.firebase.platforminfo.LibraryVersionComponent.VersionExtractor
    public String extract(Object obj) {
        String lambda$getComponents$0;
        String lambda$getComponents$1;
        String lambda$getComponents$2;
        String lambda$getComponents$3;
        Context context = (Context) obj;
        switch (this.f7486b) {
            case 1:
                lambda$getComponents$0 = FirebaseCommonRegistrar.lambda$getComponents$0(context);
                return lambda$getComponents$0;
            case 2:
                lambda$getComponents$1 = FirebaseCommonRegistrar.lambda$getComponents$1(context);
                return lambda$getComponents$1;
            case 3:
                lambda$getComponents$2 = FirebaseCommonRegistrar.lambda$getComponents$2(context);
                return lambda$getComponents$2;
            default:
                lambda$getComponents$3 = FirebaseCommonRegistrar.lambda$getComponents$3(context);
                return lambda$getComponents$3;
        }
    }

    @Override // v0.InterfaceC1737v
    public Constructor getConstructor() {
        switch (this.f7486b) {
            case 10:
                if (Boolean.TRUE.equals(Class.forName("androidx.media3.decoder.flac.FlacLibrary").getMethod("isAvailable", new Class[0]).invoke(null, new Object[0]))) {
                    return Class.forName("androidx.media3.decoder.flac.FlacExtractor").asSubclass(C.class).getConstructor(Integer.TYPE);
                }
                return null;
            default:
                return Class.forName("androidx.media3.decoder.midi.MidiExtractor").asSubclass(C.class).getConstructor(new Class[0]);
        }
    }

    @Override // androidx.media3.exoplayer.source.chunk.BundledChunkExtractor.ManifestFormatMerger
    public Format merge(Format format, Format format2) {
        return b.a(format, format2);
    }

    @Override // x1.InterfaceC1821x
    public void notifyListener(InterfaceC1820w interfaceC1820w, e eVar, boolean z6) {
        switch (this.f7486b) {
            case 13:
                interfaceC1820w.onTransitionStart(eVar, z6);
                break;
            case 14:
                interfaceC1820w.onTransitionEnd(eVar, z6);
                break;
            case 15:
                interfaceC1820w.onTransitionCancel(eVar);
                break;
            case 16:
                interfaceC1820w.onTransitionPause(eVar);
                break;
            default:
                interfaceC1820w.onTransitionResume(eVar);
                break;
        }
    }

    @Override // com.android.volley.Response.ErrorListener
    public void onErrorResponse(VolleyError volleyError) {
        switch (this.f7486b) {
            case 9:
                volleyError.printStackTrace();
                break;
            case 19:
                ArrayList arrayList = App.f14430z;
                break;
            case 21:
                App.e();
                break;
            case 23:
                App.e();
                break;
            case 24:
                int i2 = AnimesListActivity.f14504E;
                break;
            case 25:
                int i7 = DramaHomeActivity.f14580W;
                break;
            case 27:
                int i8 = TraktSignInActivity.f15246y;
                break;
            default:
                int i9 = UserTorrentsActivity.f15279y;
                break;
        }
    }

    @Override // com.android.volley.Response.Listener
    public void onResponse(Object obj) {
        String str = (String) obj;
        switch (this.f7486b) {
            case 18:
                ArrayList arrayList = App.f14430z;
                try {
                    JSONArray jSONArray = new JSONObject(str).getJSONArray("cache");
                    for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                        String string = jSONArray.getString(i2);
                        if (!App.f14427L.contains(string)) {
                            App.f14427L.add(string);
                        }
                    }
                    break;
                } catch (Exception unused) {
                    return;
                }
            case 19:
            default:
                ArrayList arrayList2 = App.f14430z;
                try {
                    Iterator<String> keys = new JSONObject(str).keys();
                    while (keys.hasNext()) {
                        String obj2 = keys.next().toString();
                        if (!App.f14426K.contains(obj2)) {
                            App.f14426K.add(obj2);
                        }
                    }
                    break;
                } catch (Exception unused2) {
                    App.e();
                }
            case 20:
                ArrayList arrayList3 = App.f14430z;
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    if (jSONObject.get("status").toString().equals(FirebaseAnalytics.Param.SUCCESS)) {
                        JSONObject jSONObject2 = (JSONObject) ((JSONObject) jSONObject.get(DataSchemeDataSource.SCHEME_DATA)).get("hosts");
                        Iterator<String> keys2 = jSONObject2.keys();
                        while (keys2.hasNext()) {
                            JSONArray jSONArray2 = (JSONArray) ((JSONObject) jSONObject2.get(keys2.next().toString())).get("domains");
                            for (int i7 = 0; i7 < jSONArray2.length(); i7++) {
                                String obj3 = jSONArray2.get(i7).toString();
                                if (!App.f14428M.contains(obj3)) {
                                    App.f14428M.add(obj3);
                                }
                            }
                        }
                        break;
                    }
                } catch (Exception unused3) {
                    App.e();
                    return;
                }
                break;
        }
    }

    @Override // v0.I
    public /* synthetic */ I setSubtitleParserFactory(q qVar) {
        return H.d(this, qVar);
    }

    @Override // io.reactivex.functions.Predicate
    public boolean test(Object obj) {
        int i2 = TraktActivity.f15234u;
        return ((Movie) obj).getMovieId() > 0;
    }

    @Override // com.google.android.gms.tasks.SuccessContinuation
    public Task then(Object obj) {
        Task lambda$fetch$3;
        Task lambda$setDefaultsWithStringsMapAsync$7;
        Task lambda$fetch$4;
        switch (this.f7486b) {
            case 6:
                lambda$fetch$3 = FirebaseRemoteConfig.lambda$fetch$3((ConfigFetchHandler.FetchResponse) obj);
                return lambda$fetch$3;
            case 7:
                lambda$setDefaultsWithStringsMapAsync$7 = FirebaseRemoteConfig.lambda$setDefaultsWithStringsMapAsync$7((ConfigContainer) obj);
                return lambda$setDefaultsWithStringsMapAsync$7;
            default:
                lambda$fetch$4 = FirebaseRemoteConfig.lambda$fetch$4((ConfigFetchHandler.FetchResponse) obj);
                return lambda$fetch$4;
        }
    }

    @Override // v0.I
    public C[] createExtractors() {
        return new C[0];
    }
}

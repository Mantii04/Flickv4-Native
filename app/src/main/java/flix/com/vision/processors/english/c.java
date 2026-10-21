package flix.com.vision.processors.english;

import android.os.Handler;
import android.os.Looper;
import androidx.media3.datasource.DataSchemeDataSource;
import androidx.media3.exoplayer.ExoPlayer;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.HashSet;

/* loaded from: classes2.dex */
public final /* synthetic */ class c implements Consumer {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f16076b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ m f16077e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f16078f;

    public /* synthetic */ c(m mVar, String str, int i2) {
        this.f16076b = i2;
        this.f16077e = mVar;
        this.f16078f = str;
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        String[] b7;
        switch (this.f16076b) {
            case 0:
                String str = this.f16078f;
                JsonElement jsonElement = (JsonElement) obj;
                m mVar = this.f16077e;
                try {
                    JsonObject asJsonObject = jsonElement.getAsJsonObject();
                    if (asJsonObject.has(FirebaseAnalytics.Param.SUCCESS) && asJsonObject.get(FirebaseAnalytics.Param.SUCCESS).getAsBoolean() && asJsonObject.has(DataSchemeDataSource.SCHEME_DATA)) {
                        JsonObject asJsonObject2 = asJsonObject.getAsJsonObject(DataSchemeDataSource.SCHEME_DATA);
                        String asString = asJsonObject2.has("webdl_id") ? asJsonObject2.get("webdl_id").getAsString() : asJsonObject2.get("id").getAsString();
                        long asLong = asJsonObject2.has("size") ? asJsonObject2.get("size").getAsLong() : 0L;
                        String str2 = "0";
                        if (asJsonObject2.has("files") && asJsonObject2.getAsJsonArray("files").size() > 0 && (b7 = m.b(asJsonObject2)) != null) {
                            str2 = b7[0];
                        }
                        D4.a.getTorboxWebDownloadLink(asString, str2).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new f(mVar, asLong, str, 0), new A4.c(23));
                        break;
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                    return;
                }
                break;
            case 1:
                final String str3 = this.f16078f;
                JsonElement jsonElement2 = (JsonElement) obj;
                final m mVar2 = this.f16077e;
                try {
                    JsonObject asJsonObject3 = jsonElement2.getAsJsonObject();
                    if (asJsonObject3.has(FirebaseAnalytics.Param.SUCCESS) && asJsonObject3.get(FirebaseAnalytics.Param.SUCCESS).getAsBoolean() && asJsonObject3.has(DataSchemeDataSource.SCHEME_DATA)) {
                        JsonObject asJsonObject4 = asJsonObject3.getAsJsonObject(DataSchemeDataSource.SCHEME_DATA);
                        final String asString2 = asJsonObject4.has("torrent_id") ? asJsonObject4.get("torrent_id").getAsString() : asJsonObject4.get("id").getAsString();
                        if (J4.b.f1543c == null) {
                            J4.b.f1543c = new HashSet();
                        }
                        J4.b.f1543c.add(asString2);
                        final int i2 = 1;
                        new Handler().postDelayed(new Runnable() { // from class: flix.com.vision.processors.english.e
                            @Override // java.lang.Runnable
                            public final void run() {
                                switch (i2) {
                                    case 0:
                                        mVar2.a(0, str3, asString2);
                                        break;
                                    default:
                                        mVar2.d(0, str3, asString2);
                                        break;
                                }
                            }
                        }, 1500L);
                        break;
                    }
                } catch (Exception e7) {
                    e7.printStackTrace();
                    return;
                }
                break;
            default:
                final String str4 = this.f16078f;
                JsonElement jsonElement3 = (JsonElement) obj;
                final m mVar3 = this.f16077e;
                try {
                    JsonObject asJsonObject5 = jsonElement3.getAsJsonObject();
                    if (asJsonObject5.has("requestId")) {
                        final String asString3 = asJsonObject5.get("requestId").getAsString();
                        if (G4.b.f1176c == null) {
                            G4.b.f1176c = new HashSet();
                        }
                        G4.b.f1176c.add(asString3);
                        final int i7 = 0;
                        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: flix.com.vision.processors.english.e
                            @Override // java.lang.Runnable
                            public final void run() {
                                switch (i7) {
                                    case 0:
                                        mVar3.a(0, str4, asString3);
                                        break;
                                    default:
                                        mVar3.d(0, str4, asString3);
                                        break;
                                }
                            }
                        }, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
                        break;
                    }
                } catch (Exception e8) {
                    e8.printStackTrace();
                }
                break;
        }
    }
}

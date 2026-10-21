package flix.com.vision.processors.english;

import androidx.media3.datasource.DataSchemeDataSource;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import cz.msebera.android.httpclient.HttpHost;
import cz.msebera.android.httpclient.HttpStatus;
import flix.com.vision.models.VideoSource;
import io.reactivex.functions.Consumer;

/* loaded from: classes2.dex */
public final /* synthetic */ class f implements Consumer {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f16085b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ m f16086e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ long f16087f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ String f16088j;

    public /* synthetic */ f(m mVar, long j7, String str, int i2) {
        this.f16085b = i2;
        this.f16086e = mVar;
        this.f16087f = j7;
        this.f16088j = str;
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        switch (this.f16085b) {
            case 0:
                JsonElement jsonElement = (JsonElement) obj;
                m mVar = this.f16086e;
                mVar.getClass();
                try {
                    JsonObject asJsonObject = jsonElement.getAsJsonObject();
                    if (asJsonObject.has(FirebaseAnalytics.Param.SUCCESS) && asJsonObject.get(FirebaseAnalytics.Param.SUCCESS).getAsBoolean() && asJsonObject.has(DataSchemeDataSource.SCHEME_DATA)) {
                        String asString = asJsonObject.get(DataSchemeDataSource.SCHEME_DATA).getAsString();
                        String str = "";
                        long j7 = this.f16087f;
                        if (j7 > 0) {
                            str = " [" + T4.m.readableFileSize(j7) + "]";
                        }
                        VideoSource videoSource = new VideoSource();
                        videoSource.streamUrl = asString;
                        String str2 = this.f16088j;
                        if (str2 == null || !str2.startsWith(HttpHost.DEFAULT_SCHEME_NAME)) {
                            videoSource.label = "[TORBOX] [FAST]" + str;
                        } else {
                            String domainName = mVar.getDomainName(str2);
                            if (domainName != null && !domainName.isEmpty()) {
                                videoSource.label = "[" + domainName + "] [TORBOX]" + str;
                            }
                        }
                        videoSource.originalFileName = mVar.getOriginalName(str2);
                        videoSource.streamable = true;
                        videoSource.isTorbox = true;
                        videoSource.isTorrentMagnet = true;
                        m.setRDQtyLabelNew(videoSource);
                        if (videoSource.quality == 0) {
                            videoSource.quality = HttpStatus.SC_MULTIPLE_CHOICES;
                        }
                        mVar.addLink(videoSource);
                        break;
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                    return;
                }
                break;
            default:
                String str3 = this.f16088j;
                JsonElement jsonElement2 = (JsonElement) obj;
                m mVar2 = this.f16086e;
                mVar2.getClass();
                try {
                    JsonObject asJsonObject2 = jsonElement2.getAsJsonObject();
                    if (asJsonObject2.has(FirebaseAnalytics.Param.SUCCESS) && asJsonObject2.get(FirebaseAnalytics.Param.SUCCESS).getAsBoolean() && asJsonObject2.has(DataSchemeDataSource.SCHEME_DATA)) {
                        String asString2 = asJsonObject2.get(DataSchemeDataSource.SCHEME_DATA).getAsString();
                        String str4 = "";
                        long j8 = this.f16087f;
                        if (j8 > 0) {
                            str4 = " [" + T4.m.readableFileSize(j8) + "]";
                        }
                        VideoSource videoSource2 = new VideoSource();
                        videoSource2.streamUrl = asString2;
                        videoSource2.label = "[TORBOX] [FAST]" + str4;
                        videoSource2.originalFileName = mVar2.getOriginalName(str3);
                        videoSource2.streamable = true;
                        videoSource2.isTorbox = true;
                        videoSource2.isTorrentMagnet = true;
                        m.setRDQtyLabelNew(videoSource2);
                        if (videoSource2.quality == 0) {
                            videoSource2.quality = HttpStatus.SC_MULTIPLE_CHOICES;
                        }
                        mVar2.addLink(videoSource2);
                        break;
                    }
                } catch (Exception e7) {
                    e7.printStackTrace();
                }
                break;
        }
    }
}

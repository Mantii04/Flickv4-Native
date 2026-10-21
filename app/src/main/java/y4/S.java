package y4;

import androidx.media3.datasource.DataSchemeDataSource;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import cz.msebera.android.httpclient.HttpStatus;
import flix.com.vision.activities.LinksActivity;
import flix.com.vision.models.VideoSource;
import flix.com.vision.utils.JsonUtils;
import io.reactivex.functions.Consumer;

/* loaded from: classes2.dex */
public final /* synthetic */ class S implements Consumer {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21167b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ LinksActivity f21168e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ VideoSource f21169f;

    public /* synthetic */ S(LinksActivity linksActivity, VideoSource videoSource, int i2) {
        this.f21167b = i2;
        this.f21168e = linksActivity;
        this.f21169f = videoSource;
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        VideoSource videoSource = this.f21169f;
        LinksActivity linksActivity = this.f21168e;
        JsonElement jsonElement = (JsonElement) obj;
        switch (this.f21167b) {
            case 0:
                linksActivity.f14722T = true;
                JsonObject asJsonObject = jsonElement.getAsJsonObject();
                String asString = asJsonObject.get("status").getAsString();
                if (asString != null && asString.equals(FirebaseAnalytics.Param.SUCCESS)) {
                    JsonObject asJsonObject2 = asJsonObject.get(DataSchemeDataSource.SCHEME_DATA).getAsJsonObject();
                    String asString2 = asJsonObject2.get("link").getAsString();
                    String asString3 = asJsonObject2.get("host").getAsString();
                    long asLong = asJsonObject2.get("filesize").getAsLong();
                    if (asString3 == null || asString3.length() < 2) {
                        asString3 = "ALLDEBRID";
                    }
                    String readableFileSize = (asLong == 0 || asLong == -1) ? "" : T4.m.readableFileSize(asLong);
                    VideoSource videoSource2 = new VideoSource();
                    videoSource2.streamable = true;
                    videoSource2.label = "[" + asString3.toUpperCase() + "] [ALLDEBRID] [" + readableFileSize + "]";
                    videoSource2.streamUrl = asString2;
                    videoSource2.originalFileName = videoSource.originalFileName;
                    videoSource2.isAllDebrid = true;
                    LinksActivity.setRDQtyLabel(videoSource2);
                    if (videoSource2.quality == 0) {
                        videoSource2.quality = HttpStatus.SC_MULTIPLE_CHOICES;
                    }
                    linksActivity.OnSuccess(videoSource2);
                    break;
                }
                break;
            default:
                int i2 = LinksActivity.f14702b0;
                linksActivity.getClass();
                VideoSource parseRDVideo = JsonUtils.parseRDVideo(jsonElement);
                if (parseRDVideo != null) {
                    linksActivity.f14722T = true;
                    LinksActivity.setRDQtyLabel(parseRDVideo);
                    parseRDVideo.originalFileName = videoSource.originalFileName;
                    linksActivity.OnSuccess(parseRDVideo);
                    break;
                }
                break;
        }
    }
}

package y4;

import android.util.Log;
import android.widget.Toast;
import androidx.media3.datasource.DataSchemeDataSource;
import com.android.volley.Response;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import cz.msebera.android.httpclient.HttpStatus;
import flix.com.vision.activities.LinksActivity;
import flix.com.vision.activities.MovieDetailActivity;
import flix.com.vision.activities.UserTorrentsActivity;
import flix.com.vision.models.VideoSource;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final /* synthetic */ class v1 implements Response.Listener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21298b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ UserTorrentsActivity f21299e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f21300f;

    public /* synthetic */ v1(UserTorrentsActivity userTorrentsActivity, String str, int i2) {
        this.f21298b = i2;
        this.f21299e = userTorrentsActivity;
        this.f21300f = str;
    }

    @Override // com.android.volley.Response.Listener
    public final void onResponse(Object obj) {
        int i2;
        boolean z6 = false;
        UserTorrentsActivity userTorrentsActivity = this.f21299e;
        String str = this.f21300f;
        switch (this.f21298b) {
            case 0:
                int i7 = UserTorrentsActivity.f15279y;
                String valueOf = String.valueOf((String) obj);
                ArrayList arrayList = new ArrayList();
                try {
                    JsonObject asJsonObject = JsonParser.parseString(valueOf).getAsJsonObject();
                    if (asJsonObject.get("status").getAsString().equals(FirebaseAnalytics.Param.SUCCESS)) {
                        JsonArray asJsonArray = asJsonObject.get(FirebaseAnalytics.Param.CONTENT).getAsJsonArray();
                        for (int i8 = 0; i8 < asJsonArray.size(); i8++) {
                            JsonObject asJsonObject2 = asJsonArray.get(i8).getAsJsonObject();
                            String asString = asJsonObject2.get("stream_link").getAsString();
                            if (asString != null && asString.length() > 10) {
                                int asInt = asJsonObject2.get("size").getAsInt();
                                String readableFileSize = (asInt == 0 || asInt == -1) ? "" : T4.m.readableFileSize(asInt);
                                VideoSource videoSource = new VideoSource();
                                videoSource.streamable = true;
                                videoSource.label = "[PREMIUMIZE.ME] [FAST] [" + readableFileSize + "]";
                                videoSource.streamUrl = asString;
                                videoSource.isPremiumize = true;
                                LinksActivity.setRDQtyLabel(videoSource);
                                if (videoSource.quality == 0) {
                                    videoSource.quality = HttpStatus.SC_MULTIPLE_CHOICES;
                                }
                                arrayList.add(videoSource);
                            }
                        }
                        if (arrayList.size() > 0) {
                            userTorrentsActivity.f15291u.put(str, arrayList);
                            userTorrentsActivity.e(arrayList);
                            break;
                        }
                    } else {
                        break;
                    }
                } catch (Exception e3) {
                    try {
                        Log.d(MovieDetailActivity.class.toString(), "", e3);
                        return;
                    } catch (Exception e7) {
                        Log.d(MovieDetailActivity.class.toString(), "", e7);
                        return;
                    }
                }
                break;
            default:
                String str2 = (String) obj;
                int i9 = UserTorrentsActivity.f15279y;
                try {
                    JsonObject asJsonObject3 = JsonParser.parseString(str2).getAsJsonObject();
                    if (asJsonObject3.has(FirebaseAnalytics.Param.SUCCESS) && asJsonObject3.get(FirebaseAnalytics.Param.SUCCESS).getAsBoolean() && asJsonObject3.has(DataSchemeDataSource.SCHEME_DATA)) {
                        JsonObject asJsonObject4 = asJsonObject3.get(DataSchemeDataSource.SCHEME_DATA).isJsonArray() ? asJsonObject3.getAsJsonArray(DataSchemeDataSource.SCHEME_DATA).get(0).getAsJsonObject() : asJsonObject3.getAsJsonObject(DataSchemeDataSource.SCHEME_DATA);
                        if (asJsonObject4.has("files")) {
                            JsonArray asJsonArray2 = asJsonObject4.getAsJsonArray("files");
                            int i10 = 0;
                            while (true) {
                                int size = asJsonArray2.size();
                                ArrayList arrayList2 = userTorrentsActivity.f15294x;
                                if (i10 >= size) {
                                    userTorrentsActivity.h();
                                    if (arrayList2.size() > 0) {
                                        userTorrentsActivity.f(str, arrayList2);
                                        break;
                                    } else {
                                        Toast.makeText(userTorrentsActivity, "No playable video files found in this torrent.", 0).show();
                                        break;
                                    }
                                } else {
                                    JsonObject asJsonObject5 = asJsonArray2.get(i10).getAsJsonObject();
                                    String asString2 = asJsonObject5.has("name") ? asJsonObject5.get("name").getAsString() : "File " + i10;
                                    if (!asString2.toLowerCase().endsWith(".mp4") && !asString2.toLowerCase().endsWith(".mkv") && !asString2.toLowerCase().endsWith(".avi")) {
                                        i2 = 1;
                                        i10 += i2;
                                        z6 = false;
                                    }
                                    long asLong = asJsonObject5.has("size") ? asJsonObject5.get("size").getAsLong() : 0L;
                                    String asString3 = asJsonObject5.has("id") ? asJsonObject5.get("id").getAsString() : String.valueOf(i10);
                                    VideoSource videoSource2 = new VideoSource();
                                    videoSource2.streamable = z6;
                                    videoSource2.label = asString2 + " [" + T4.m.readableFileSize(asLong) + "]";
                                    videoSource2.streamUrl = asString3;
                                    videoSource2.originalFileName = asString2;
                                    i2 = 1;
                                    videoSource2.isTorbox = true;
                                    arrayList2.add(videoSource2);
                                    i10 += i2;
                                    z6 = false;
                                }
                            }
                        }
                    }
                } catch (Exception e8) {
                    userTorrentsActivity.h();
                    e8.printStackTrace();
                }
                break;
        }
    }
}

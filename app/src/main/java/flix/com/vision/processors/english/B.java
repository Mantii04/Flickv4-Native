package flix.com.vision.processors.english;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import flix.com.vision.models.Movie;
import java.util.ArrayList;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public final class B extends m {

    /* renamed from: a, reason: collision with root package name */
    public WebView f16060a;

    /* renamed from: b, reason: collision with root package name */
    public final Movie f16061b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f16062c;

    /* renamed from: d, reason: collision with root package name */
    public int f16063d;

    /* renamed from: e, reason: collision with root package name */
    public int f16064e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f16065f = false;

    public B(Context context, Movie movie, U4.f fVar) {
        this.f16061b = movie;
        this.f16062c = context;
        this.callBack = fVar;
        new ArrayList();
        this.domain = "https://streamingunity.dog/";
    }

    public static String getEpisodeIdByNumber(JsonElement jsonElement, int i2) {
        if (jsonElement != null) {
            try {
                if (jsonElement.isJsonObject()) {
                    JsonObject asJsonObject = jsonElement.getAsJsonObject();
                    if (!asJsonObject.has("props")) {
                        return null;
                    }
                    JsonObject asJsonObject2 = asJsonObject.getAsJsonObject("props");
                    if (asJsonObject2.has("loadedSeason") && !asJsonObject2.get("loadedSeason").isJsonNull()) {
                        JsonObject asJsonObject3 = asJsonObject2.getAsJsonObject("loadedSeason");
                        if (asJsonObject3.has("episodes") && asJsonObject3.get("episodes").isJsonArray()) {
                            JsonArray asJsonArray = asJsonObject3.getAsJsonArray("episodes");
                            for (int i7 = 0; i7 < asJsonArray.size(); i7++) {
                                JsonObject asJsonObject4 = asJsonArray.get(i7).getAsJsonObject();
                                if (asJsonObject4.has("number") && !asJsonObject4.get("number").isJsonNull() && asJsonObject4.get("number").getAsInt() == i2 && asJsonObject4.has("id") && !asJsonObject4.get("id").isJsonNull()) {
                                    return asJsonObject4.get("id").getAsInt() + "";
                                }
                            }
                        }
                    }
                    return null;
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
        return null;
    }

    public static String getSeasonIdByNumber(JsonElement jsonElement, int i2) {
        if (jsonElement != null) {
            try {
                if (jsonElement.isJsonObject()) {
                    JsonObject asJsonObject = jsonElement.getAsJsonObject();
                    if (!asJsonObject.has("props")) {
                        return null;
                    }
                    JsonObject asJsonObject2 = asJsonObject.getAsJsonObject("props");
                    if (!asJsonObject2.has("title")) {
                        return null;
                    }
                    JsonObject asJsonObject3 = asJsonObject2.getAsJsonObject("title");
                    if (!asJsonObject3.has("seasons")) {
                        return null;
                    }
                    JsonArray asJsonArray = asJsonObject3.getAsJsonArray("seasons");
                    for (int i7 = 0; i7 < asJsonArray.size(); i7++) {
                        JsonObject asJsonObject4 = asJsonArray.get(i7).getAsJsonObject();
                        if (asJsonObject4.has("number") && !asJsonObject4.get("number").isJsonNull() && asJsonObject4.get("number").getAsInt() == i2 && asJsonObject4.has("id") && !asJsonObject4.get("id").isJsonNull()) {
                            return asJsonObject4.get("id").getAsInt() + "";
                        }
                    }
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
        return null;
    }

    public void process(int i2, int i7, int i8, String str) {
        this.f16063d = i7;
        this.f16064e = i2;
        new Handler(Looper.getMainLooper()).post(new z(this, this.domain + "en/search?q=" + this.f16061b.getTitle().replace(",", "").replace("(", "").replace(")", "").replace(StringUtils.SPACE, "%20"), 0));
    }
}

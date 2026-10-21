package flix.com.vision.processors.english;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import androidx.media3.datasource.DataSchemeDataSource;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import flix.com.vision.models.Movie;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;

/* loaded from: classes2.dex */
public final class v extends m {

    /* renamed from: a, reason: collision with root package name */
    public WebView f16122a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f16123b;

    /* renamed from: c, reason: collision with root package name */
    public final Movie f16124c;

    public v(Context context, Movie movie, U4.f fVar) {
        this.f16123b = context;
        this.f16124c = movie;
        this.callBack = fVar;
        this.domain = "https://ridomovies.tv/";
    }

    public void process(final int i2, final int i7) {
        D4.a.ridoSearch(this.domain, this.f16124c.getTitle()).subscribeOn(Schedulers.io()).subscribe(new Consumer() { // from class: flix.com.vision.processors.english.t
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                String str;
                JsonElement jsonElement = (JsonElement) obj;
                v vVar = v.this;
                if (jsonElement != null) {
                    JsonArray f3 = b.c.f(DataSchemeDataSource.SCHEME_DATA, jsonElement);
                    for (int i8 = 0; i8 < f3.size(); i8++) {
                        JsonObject asJsonObject = f3.get(i8).getAsJsonObject();
                        String asString = asJsonObject.get("imdb_id").getAsString();
                        String asString2 = asJsonObject.get("title").getAsString();
                        Movie movie = vVar.f16124c;
                        if (asString2.equalsIgnoreCase(movie.getTitle()) || (asString != null && asString.equalsIgnoreCase(movie.getImdbID()))) {
                            str = asJsonObject.get("slug").getAsString();
                            break;
                        }
                    }
                }
                str = null;
                if (str != null) {
                    new Handler(Looper.getMainLooper()).post(new flix.com.vision.activities.leanback.fragment.a(7, vVar, vVar.domain + "tv/" + str + "/season-" + i2 + "/episode-" + i7));
                }
            }
        }, new A4.c(22));
    }
}

package d5;

import android.util.Log;
import com.android.volley.Response;
import com.google.gson.JsonParser;
import flix.com.vision.activities.MovieDetailActivity;
import flix.com.vision.models.hindi.MovieRequest;
import flix.com.vision.models.hindi.PlaylistItem;
import flix.com.vision.utils.JsonUtils;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final /* synthetic */ class g implements Response.Listener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f13597b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ l f13598e;

    public /* synthetic */ g(l lVar, int i2) {
        this.f13597b = i2;
        this.f13598e = lVar;
    }

    @Override // com.android.volley.Response.Listener
    public final void onResponse(Object obj) {
        String str = (String) obj;
        switch (this.f13597b) {
            case 0:
                l lVar = this.f13598e;
                lVar.getClass();
                String valueOf = String.valueOf(str);
                try {
                    MovieRequest parseMovieHindiSeries = JsonUtils.parseMovieHindiSeries(valueOf);
                    if (parseMovieHindiSeries == null) {
                        parseMovieHindiSeries = JsonUtils.parseMovieHindiSeries2(valueOf);
                    }
                    if (parseMovieHindiSeries != null) {
                        lVar.f13606c = parseMovieHindiSeries.token;
                        String str2 = lVar.domain + parseMovieHindiSeries.data;
                        if (parseMovieHindiSeries.data.contains(lVar.domain) || parseMovieHindiSeries.data.contains(".com")) {
                            str2 = parseMovieHindiSeries.data;
                        }
                        lVar.GetStreamLinkHindi2(str2);
                        break;
                    }
                } catch (Exception e3) {
                    Log.d(MovieDetailActivity.class.toString(), "", e3);
                    return;
                }
                break;
            default:
                l lVar2 = this.f13598e;
                lVar2.getClass();
                try {
                    Iterator<PlaylistItem> it = JsonUtils.parsePlaylistHindiSeries(JsonParser.parseString(String.valueOf(str)).getAsJsonArray(), lVar2.f13607d, lVar2.f13608e).iterator();
                    while (it.hasNext()) {
                        try {
                            lVar2.GetStreamLinkHindi3(it.next());
                        } catch (Exception unused) {
                        }
                    }
                    break;
                } catch (Exception e7) {
                    try {
                        Log.d(MovieDetailActivity.class.toString(), "", e7);
                        return;
                    } catch (Exception e8) {
                        Log.d(MovieDetailActivity.class.toString(), "", e8);
                    }
                }
        }
    }
}

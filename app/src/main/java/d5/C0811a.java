package d5;

import android.util.Log;
import com.android.volley.Response;
import com.google.gson.JsonParser;
import flix.com.vision.activities.MovieDetailActivity;
import flix.com.vision.models.hindi.MovieRequest;
import flix.com.vision.models.hindi.PlaylistItem;
import flix.com.vision.utils.JsonUtils;
import java.util.Iterator;

/* renamed from: d5.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0811a implements Response.Listener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f13585b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ f f13586e;

    public /* synthetic */ C0811a(f fVar, int i2) {
        this.f13585b = i2;
        this.f13586e = fVar;
    }

    @Override // com.android.volley.Response.Listener
    public final void onResponse(Object obj) {
        String str = (String) obj;
        switch (this.f13585b) {
            case 0:
                f fVar = this.f13586e;
                fVar.getClass();
                String valueOf = String.valueOf(str);
                try {
                    MovieRequest parseMovieHindi = JsonUtils.parseMovieHindi(valueOf);
                    if (parseMovieHindi == null) {
                        parseMovieHindi = JsonUtils.parseMovieHindi2(valueOf);
                    }
                    if (parseMovieHindi != null) {
                        fVar.f13594c = parseMovieHindi.token;
                        String str2 = fVar.domain + parseMovieHindi.data;
                        if (parseMovieHindi.data.contains(fVar.domain) || parseMovieHindi.data.contains(".com")) {
                            str2 = parseMovieHindi.data;
                        }
                        fVar.GetStreamLinkHindi2(str2);
                        break;
                    }
                } catch (Exception e3) {
                    Log.d(MovieDetailActivity.class.toString(), "", e3);
                    return;
                }
                break;
            default:
                f fVar2 = this.f13586e;
                fVar2.getClass();
                try {
                    Iterator<PlaylistItem> it = JsonUtils.parsePlaylistHindi(JsonParser.parseString(String.valueOf(str)).getAsJsonArray()).iterator();
                    while (it.hasNext()) {
                        try {
                            fVar2.GetStreamLinkHindi3(it.next());
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

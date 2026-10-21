package y4;

import com.google.gson.JsonElement;
import flix.com.vision.App;
import flix.com.vision.activities.CastMoviesActivity;
import flix.com.vision.models.Movie;
import flix.com.vision.utils.JsonUtils;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import x4.C1851d;

/* renamed from: y4.t, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C1928t implements Consumer {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21286b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ CastMoviesActivity f21287e;

    public /* synthetic */ C1928t(CastMoviesActivity castMoviesActivity, int i2) {
        this.f21286b = i2;
        this.f21287e = castMoviesActivity;
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = 1;
        CastMoviesActivity castMoviesActivity = this.f21287e;
        JsonElement jsonElement = (JsonElement) obj;
        switch (this.f21286b) {
            case 0:
                int i7 = CastMoviesActivity.f14526G;
                castMoviesActivity.getClass();
                ArrayList<Movie> parseCastMovies = JsonUtils.parseCastMovies(jsonElement, 0);
                ArrayList arrayList = castMoviesActivity.f14535f;
                arrayList.addAll(App.getInstance().filterList(parseCastMovies));
                castMoviesActivity.f14539p.setText("Movies · " + arrayList.size());
                if (arrayList.size() > 0) {
                    castMoviesActivity.f14527A.notifyDataSetChanged();
                    ArrayList arrayList2 = castMoviesActivity.f14536j;
                    arrayList2.clear();
                    arrayList2.addAll(arrayList);
                }
                D4.a.getDetailCast(castMoviesActivity, "tv_credits", castMoviesActivity.f14541r, false).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C1928t(castMoviesActivity, i2), new C1851d(4));
                break;
            default:
                int i8 = CastMoviesActivity.f14526G;
                castMoviesActivity.getClass();
                ArrayList<Movie> parseCastMovies2 = JsonUtils.parseCastMovies(jsonElement, 1);
                ArrayList arrayList3 = castMoviesActivity.f14537m;
                arrayList3.addAll(App.getInstance().filterList(parseCastMovies2));
                castMoviesActivity.f14540q.setText("Series · " + arrayList3.size());
                if (castMoviesActivity.f14535f.size() == 0 && arrayList3.size() > 0) {
                    castMoviesActivity.f14527A.notifyDataSetChanged();
                    ArrayList arrayList4 = castMoviesActivity.f14536j;
                    arrayList4.clear();
                    arrayList4.addAll(arrayList3);
                    break;
                }
                break;
        }
    }
}

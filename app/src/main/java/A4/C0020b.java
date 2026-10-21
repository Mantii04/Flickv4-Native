package A4;

import com.google.gson.JsonElement;
import flix.com.vision.App;
import flix.com.vision.activities.leanback.CastMoviesActivityLeanBack;
import flix.com.vision.models.Movie;
import flix.com.vision.utils.JsonUtils;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;

/* renamed from: A4.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0020b implements Consumer {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f56b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ CastMoviesActivityLeanBack f57e;

    public /* synthetic */ C0020b(CastMoviesActivityLeanBack castMoviesActivityLeanBack, int i2) {
        this.f56b = i2;
        this.f57e = castMoviesActivityLeanBack;
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        CastMoviesActivityLeanBack castMoviesActivityLeanBack = this.f57e;
        int i2 = 1;
        JsonElement jsonElement = (JsonElement) obj;
        switch (this.f56b) {
            case 0:
                int i7 = CastMoviesActivityLeanBack.f15414H;
                castMoviesActivityLeanBack.getClass();
                ArrayList<Movie> parseCastMovies = JsonUtils.parseCastMovies(jsonElement, 0);
                ArrayList arrayList = castMoviesActivityLeanBack.f15424f;
                arrayList.addAll(App.getInstance().filterList(parseCastMovies));
                castMoviesActivityLeanBack.f15428p.setText("Movies · " + arrayList.size());
                if (arrayList.size() > 0) {
                    castMoviesActivityLeanBack.f15415A.notifyDataSetChanged();
                    ArrayList arrayList2 = castMoviesActivityLeanBack.f15425j;
                    arrayList2.clear();
                    arrayList2.addAll(arrayList);
                }
                D4.a.getDetailCast(castMoviesActivityLeanBack, "tv_credits", castMoviesActivityLeanBack.f15430r, false).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C0020b(castMoviesActivityLeanBack, i2), new c(1));
                break;
            default:
                int i8 = CastMoviesActivityLeanBack.f15414H;
                castMoviesActivityLeanBack.getClass();
                ArrayList<Movie> parseCastMovies2 = JsonUtils.parseCastMovies(jsonElement, 1);
                ArrayList arrayList3 = castMoviesActivityLeanBack.f15426m;
                arrayList3.addAll(App.getInstance().filterList(parseCastMovies2));
                castMoviesActivityLeanBack.f15429q.setText("Series · " + arrayList3.size());
                if (castMoviesActivityLeanBack.f15424f.size() == 0 && arrayList3.size() > 0) {
                    castMoviesActivityLeanBack.f15415A.notifyDataSetChanged();
                    ArrayList arrayList4 = castMoviesActivityLeanBack.f15425j;
                    arrayList4.clear();
                    arrayList4.addAll(arrayList3);
                    break;
                }
                break;
        }
    }
}

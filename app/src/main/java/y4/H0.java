package y4;

import android.util.Log;
import flix.com.vision.activities.MainActivity;
import flix.com.vision.activities.SearchActivityTV;
import flix.com.vision.activities.SearchResultsActivity;
import flix.com.vision.activities.SeriesDetailActivity;
import flix.com.vision.activities.SeriesDetailActivityLeanBack;
import flix.com.vision.activities.UserTorrentsActivity;
import io.reactivex.functions.Consumer;

/* loaded from: classes2.dex */
public final /* synthetic */ class H0 implements Consumer {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21130b;

    public /* synthetic */ H0(int i2) {
        this.f21130b = i2;
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        Throwable th = (Throwable) obj;
        switch (this.f21130b) {
            case 0:
                int i2 = SearchActivityTV.f14981I;
                Log.d(MainActivity.class.toString(), "", th);
                break;
            case 1:
                int i7 = SearchResultsActivity.f15007H;
                break;
            case 2:
                int i8 = SeriesDetailActivity.f15032G;
                Log.d("", "", th);
                break;
            case 3:
                int i9 = SeriesDetailActivityLeanBack.f15056G;
                Log.d("", "", th);
                break;
            case 4:
                th.printStackTrace();
                break;
            default:
                int i10 = UserTorrentsActivity.f15279y;
                break;
        }
    }
}

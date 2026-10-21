package f1;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Handler;
import android.view.animation.AccelerateInterpolator;
import com.google.android.material.carousel.CarouselLayoutManager;
import flix.com.vision.activities.AnimeDetailActivity;
import flix.com.vision.activities.DramaDetailActivity;
import flix.com.vision.activities.SearchActivityTV;
import flix.com.vision.activities.UserTorrentsActivity;
import flix.com.vision.activities.YouTubePlayerActivity;
import flix.com.vision.activities.adult.AdultHistoryActivity;
import flix.com.vision.activities.adult.AdultVideosFavoritesActivity;
import flix.com.vision.tv.ChannelsListActivityLegacy;
import flix.com.vision.tv.TVCategoriesActivity;
import flix.com.vision.tv.TVCategorySearchActivity;
import flix.com.vision.tv.TVChannelSearchActivity;
import java.lang.reflect.Method;
import java.util.ArrayList;
import z.AbstractC1965k;
import z.C1964j;
import z.RunnableC1961g;
import z.RunnableC1962h;

/* renamed from: f1.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0883a implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f14214b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f14215e;

    public /* synthetic */ RunnableC0883a(Object obj, int i2) {
        this.f14214b = i2;
        this.f14215e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        Object obj2 = this.f14215e;
        switch (this.f14214b) {
            case 0:
                ((C0903k) obj2).k();
                return;
            case 1:
                ((C0909o) obj2).f14282n = -1;
                return;
            case 2:
                ((Q) obj2).b();
                return;
            case 3:
                ChannelsListActivityLegacy channelsListActivityLegacy = (ChannelsListActivityLegacy) obj2;
                channelsListActivityLegacy.f16176q.setInterpolator(new AccelerateInterpolator());
                channelsListActivityLegacy.f16176q.setDuration(500L);
                channelsListActivityLegacy.f16183x.startAnimation(channelsListActivityLegacy.f16176q);
                channelsListActivityLegacy.f16183x.setVisibility(8);
                return;
            case 4:
                TVCategoriesActivity tVCategoriesActivity = (TVCategoriesActivity) obj2;
                tVCategoriesActivity.f16259D.setInterpolator(new AccelerateInterpolator());
                tVCategoriesActivity.f16259D.setDuration(500L);
                tVCategoriesActivity.f16258C.startAnimation(tVCategoriesActivity.f16259D);
                tVCategoriesActivity.f16258C.setVisibility(8);
                return;
            case 5:
                ((TVCategorySearchActivity) obj2).f16280b.openSearch();
                return;
            case 6:
                ((TVChannelSearchActivity) obj2).f16287b.openSearch();
                return;
            case 7:
                ((n1.u) obj2).onAutoCloseCallback$room_runtime_release();
                return;
            case 8:
                ((CarouselLayoutManager) obj2).D();
                return;
            case 9:
                int i2 = AnimeDetailActivity.f14449D;
                ((AnimeDetailActivity) obj2).extractDominantColor();
                return;
            case 10:
                int i7 = DramaDetailActivity.f14551A;
                ((DramaDetailActivity) obj2).extractDominantColor();
                return;
            case 11:
                SearchActivityTV searchActivityTV = (SearchActivityTV) obj2;
                searchActivityTV.f15003w.clearFocus();
                searchActivityTV.f15000t.requestFocus();
                return;
            case 12:
                UserTorrentsActivity userTorrentsActivity = (UserTorrentsActivity) obj2;
                ArrayList arrayList = userTorrentsActivity.f15294x;
                if (arrayList.size() > 0) {
                    userTorrentsActivity.h();
                    userTorrentsActivity.e(arrayList);
                    return;
                }
                return;
            case 13:
                ((YouTubePlayerActivity) obj2).f15305q = false;
                return;
            case 14:
                Activity activity = (Activity) obj2;
                if (activity.isFinishing()) {
                    return;
                }
                int i8 = Build.VERSION.SDK_INT;
                if (i8 >= 28) {
                    Class cls = AbstractC1965k.f21368a;
                    activity.recreate();
                    return;
                }
                Class cls2 = AbstractC1965k.f21368a;
                boolean z6 = i8 == 26 || i8 == 27;
                Method method = AbstractC1965k.f21373f;
                if ((!z6 || method != null) && (AbstractC1965k.f21372e != null || AbstractC1965k.f21371d != null)) {
                    try {
                        Object obj3 = AbstractC1965k.f21370c.get(activity);
                        if (obj3 != null && (obj = AbstractC1965k.f21369b.get(activity)) != null) {
                            Application application = activity.getApplication();
                            C1964j c1964j = new C1964j(activity);
                            application.registerActivityLifecycleCallbacks(c1964j);
                            Handler handler = AbstractC1965k.f21374g;
                            handler.post(new RunnableC1961g(c1964j, obj3));
                            try {
                                if (i8 == 26 || i8 == 27) {
                                    Boolean bool = Boolean.FALSE;
                                    method.invoke(obj, obj3, null, null, 0, bool, null, null, bool, bool);
                                } else {
                                    activity.recreate();
                                }
                                handler.post(new RunnableC1962h(application, c1964j));
                                return;
                            } finally {
                                handler.post(new RunnableC1962h(application, c1964j));
                            }
                        }
                    } catch (Throwable unused) {
                    }
                }
                activity.recreate();
                return;
            case 15:
                ((AdultHistoryActivity) obj2).f15331q.requestFocus();
                return;
            default:
                ((AdultVideosFavoritesActivity) obj2).f15375q.requestFocus();
                return;
        }
    }
}

package C4;

import android.view.View;
import flix.com.vision.App;
import flix.com.vision.activities.DramaHomeActivity;
import flix.com.vision.activities.MainActivity;
import flix.com.vision.activities.WatchedAcvivity;
import flix.com.vision.activities.adult.AdultHistoryActivity;
import flix.com.vision.activities.adult.AdultVideosFavoritesActivity;
import flix.com.vision.models.Drama;
import flix.com.vision.models.Movie;
import flix.com.vision.models.adult.AdultVideo;
import h5.AbstractC0995i;
import m1.B0;

/* renamed from: C4.l, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class ViewOnClickListenerC0088l implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f722b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f723e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f724f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f725j;

    public /* synthetic */ ViewOnClickListenerC0088l(int i2, int i7, m1.V v6, B0 b02) {
        this.f722b = i7;
        this.f724f = v6;
        this.f723e = i2;
        this.f725j = b02;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i2 = this.f723e;
        Object obj = this.f725j;
        Object obj2 = this.f724f;
        switch (this.f722b) {
            case 0:
                ((C0091o) obj2).f756g.openEpisode(i2);
                ((C0090n) obj).f744u.toString().getClass();
                break;
            case 1:
                ((D) obj2).f544g.openEpisode(i2);
                ((C) obj).f537u.toString().getClass();
                break;
            case 2:
                int i7 = DramaHomeActivity.f14580W;
                DramaHomeActivity dramaHomeActivity = (DramaHomeActivity) obj2;
                dramaHomeActivity.getClass();
                Drama drama = (Drama) obj;
                App.getInstance().f14439r.deletDramaFromContinue(drama);
                App.getInstance().f14439r.addDramaToHistory(drama);
                dramaHomeActivity.f14618y.remove(i2);
                AbstractC0995i.makeToast(dramaHomeActivity, "Marked as watched", true);
                dramaHomeActivity.f14599S.notifyItemRemoved(i2);
                break;
            case 3:
                int i8 = MainActivity.f14747T;
                MainActivity mainActivity = (MainActivity) obj2;
                mainActivity.getClass();
                App.getInstance().f14439r.markAsWatched((Movie) obj);
                mainActivity.f14767b.remove(i2);
                AbstractC0995i.makeToast(mainActivity, "Marked as watched", true);
                mainActivity.f14769f.notifyItemRemoved(i2);
                break;
            case 4:
                int i9 = WatchedAcvivity.f15295n;
                WatchedAcvivity watchedAcvivity = (WatchedAcvivity) obj2;
                watchedAcvivity.getClass();
                Movie movie = (Movie) obj;
                App.getInstance().f14439r.removeFromWaching(movie);
                AbstractC0995i.makeToast(watchedAcvivity, "Removed", true);
                watchedAcvivity.f15299j.remove(i2);
                watchedAcvivity.f15300m.notifyItemRemoved(i2);
                App.getInstance().f14439r.removeFromWatched(movie);
                break;
            case 5:
                int i10 = AdultHistoryActivity.f15323v;
                AdultHistoryActivity adultHistoryActivity = (AdultHistoryActivity) obj2;
                adultHistoryActivity.getClass();
                App.getInstance().f14439r.deleteAdultFromHistory((AdultVideo) obj);
                adultHistoryActivity.f15330p.remove(i2);
                AbstractC0995i.makeToast(adultHistoryActivity, "Deleted from History", true);
                adultHistoryActivity.f15332r.notifyItemRemoved(i2);
                break;
            default:
                int i11 = AdultVideosFavoritesActivity.f15367v;
                AdultVideosFavoritesActivity adultVideosFavoritesActivity = (AdultVideosFavoritesActivity) obj2;
                adultVideosFavoritesActivity.getClass();
                App.getInstance().f14439r.deleteAdultFromFavorites((AdultVideo) obj);
                adultVideosFavoritesActivity.f15374p.remove(i2);
                AbstractC0995i.makeToast(adultVideosFavoritesActivity, "Deleted from Favorites", true);
                adultVideosFavoritesActivity.f15376r.notifyItemRemoved(i2);
                break;
        }
    }

    public /* synthetic */ ViewOnClickListenerC0088l(flix.com.vision.activities.base.a aVar, Object obj, int i2, int i7) {
        this.f722b = i7;
        this.f724f = aVar;
        this.f725j = obj;
        this.f723e = i2;
    }
}

package C4;

import android.app.Activity;
import android.view.View;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.adult.AdultHistoryActivity;
import flix.com.vision.activities.adult.AdultVideosFavoritesActivity;
import flix.com.vision.models.ChannelTv;
import flix.com.vision.models.Drama;
import flix.com.vision.models.Movie;
import flix.com.vision.models.adult.AdultVideo;
import flix.com.vision.tv.ChannelsListActivity;
import j.C1023f;
import l.C1191v1;
import m1.B0;

/* renamed from: C4.e, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class ViewOnLongClickListenerC0081e implements View.OnLongClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f664b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f665e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ m1.V f666f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ B0 f667j;

    public /* synthetic */ ViewOnLongClickListenerC0081e(int i2, int i7, m1.V v6, B0 b02) {
        this.f664b = i7;
        this.f666f = v6;
        this.f667j = b02;
        this.f665e = i2;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        switch (this.f664b) {
            case 0:
                C0084h c0084h = (C0084h) this.f666f;
                C0083g c0083g = (C0083g) this.f667j;
                int bindingAdapterPosition = c0083g.getBindingAdapterPosition();
                Activity activity = c0084h.f688e;
                boolean z6 = activity instanceof AdultHistoryActivity;
                int i2 = this.f665e;
                if (z6 && bindingAdapterPosition != -1) {
                    ((AdultHistoryActivity) activity).onHistoryLongPress(i2);
                    break;
                } else if ((activity instanceof AdultVideosFavoritesActivity) && bindingAdapterPosition != -1) {
                    ((AdultVideosFavoritesActivity) activity).onFavoritesLongPress(i2);
                    break;
                } else {
                    try {
                        C1191v1 c1191v1 = new C1191v1(activity, c0083g.f680y);
                        AdultVideo adultVideo = c0083g.f676u;
                        if (App.getInstance().f14439r.isAdultVideoFavorited(adultVideo)) {
                            c1191v1.getMenuInflater().inflate(R.menu.context_menu_remove_fav_channels, c1191v1.getMenu());
                        } else {
                            c1191v1.getMenuInflater().inflate(R.menu.context_menu_add_fav_channels, c1191v1.getMenu());
                        }
                        c1191v1.setOnMenuItemClickListener(new C0082f(c0084h, adultVideo, c1191v1, 0));
                        c1191v1.show();
                        break;
                    } catch (Exception unused) {
                        return true;
                    }
                }
            case 1:
                C0096u c0096u = (C0096u) this.f666f;
                ChannelsListActivity channelsListActivity = c0096u.f780g;
                if (channelsListActivity == null) {
                    C0095t c0095t = (C0095t) this.f667j;
                    C1191v1 c1191v12 = new C1191v1(c0096u.f779f, c0095t.f774v);
                    ChannelTv channelTv = c0095t.f773u;
                    if (App.getInstance().f14439r.isChannelFavorited(channelTv)) {
                        c1191v12.getMenuInflater().inflate(R.menu.context_menu_remove_fav_channels, c1191v12.getMenu());
                    } else {
                        c1191v12.getMenuInflater().inflate(R.menu.context_menu_add_fav_channels, c1191v12.getMenu());
                    }
                    c1191v12.setOnMenuItemClickListener(new C0082f(c0096u, channelTv, c1191v12, 2));
                    c1191v12.show();
                    break;
                } else {
                    channelsListActivity.channelLongPress(this.f665e, c0096u.f781h);
                    break;
                }
            case 2:
                B b7 = (B) this.f666f;
                b7.getClass();
                Drama drama = ((A) this.f667j).f528u;
                b7.f535e.onContinueLongPress(this.f665e);
                break;
            case 3:
                P p6 = (P) this.f666f;
                C1191v1 c1191v13 = new C1191v1(new C1023f(view.getContext(), androidx.appcompat.R.style.Theme_AppCompat_DayNight_NoActionBar), view);
                Movie movie = ((O) this.f667j).f585u;
                if (App.getInstance().f14439r.isMovieFavorited(movie)) {
                    c1191v13.getMenuInflater().inflate(R.menu.context_menu_remove_fav_channels, c1191v13.getMenu());
                } else {
                    c1191v13.getMenuInflater().inflate(R.menu.context_menu_add_fav_channels, c1191v13.getMenu());
                }
                c1191v13.setOnMenuItemClickListener(new M(p6, movie, this.f665e, c1191v13));
                c1191v13.show();
                break;
            default:
                ((m0) this.f666f).f738g.showLongPressDialog(((l0) this.f667j).f728u, this.f665e);
                break;
        }
        return true;
    }

    public /* synthetic */ ViewOnLongClickListenerC0081e(C0096u c0096u, int i2, C0095t c0095t) {
        this.f664b = 1;
        this.f666f = c0096u;
        this.f665e = i2;
        this.f667j = c0095t;
    }
}

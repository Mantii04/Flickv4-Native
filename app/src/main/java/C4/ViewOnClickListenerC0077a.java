package C4;

import android.app.Activity;
import android.os.Handler;
import android.view.View;
import android.widget.Toast;
import flix.com.vision.activities.SeriesDetailActivity;
import flix.com.vision.activities.SeriesDetailActivityLeanBack;
import flix.com.vision.activities.player.PlayerActivityLiveTV;
import flix.com.vision.activities.player.SimpleVideoPlayer;
import flix.com.vision.models.ChannelTv;
import flix.com.vision.models.Episode;
import flix.com.vision.tv.ChannelsListActivity;
import flix.com.vision.tv.ChannelsListActivityLegacy;
import flix.com.vision.tv.PlayerActivityLiveExtended;
import flix.com.vision.tv.PlayerActivityLiveExternal;
import flix.com.vision.tv.TVChannelFavoritesActivity;
import flix.com.vision.tv.TVChannelSearchActivity;
import java.util.ArrayList;

/* renamed from: C4.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class ViewOnClickListenerC0077a implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f633b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f634e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ m1.V f635f;

    public /* synthetic */ ViewOnClickListenerC0077a(m1.V v6, int i2, int i7) {
        this.f633b = i7;
        this.f635f = v6;
        this.f634e = i2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f633b) {
            case 0:
                ((C0080d) this.f635f).f657g.openCategory(this.f634e);
                break;
            case 1:
                ((C0084h) this.f635f).f689f.openAdultVideo(this.f634e);
                break;
            case 2:
                C0096u c0096u = (C0096u) this.f635f;
                Activity activity = c0096u.f779f;
                boolean z6 = activity instanceof PlayerActivityLiveTV;
                int i2 = this.f634e;
                ArrayList arrayList = c0096u.f781h;
                if (!z6) {
                    if (!(activity instanceof ChannelsListActivityLegacy)) {
                        if (!(activity instanceof PlayerActivityLiveExtended)) {
                            if (!(activity instanceof PlayerActivityLiveExternal)) {
                                if (!(activity instanceof ChannelsListActivity)) {
                                    if (!(activity instanceof TVChannelSearchActivity)) {
                                        if (activity instanceof TVChannelFavoritesActivity) {
                                            ((TVChannelFavoritesActivity) activity).playChannel((ChannelTv) arrayList.get(i2));
                                            break;
                                        }
                                    } else {
                                        ((TVChannelSearchActivity) activity).playChannel((ChannelTv) arrayList.get(i2));
                                        break;
                                    }
                                } else {
                                    ((ChannelsListActivity) activity).playChannel((ChannelTv) arrayList.get(i2));
                                    break;
                                }
                            } else {
                                ((PlayerActivityLiveExternal) activity).playChannel(i2);
                                break;
                            }
                        } else {
                            ((PlayerActivityLiveExtended) activity).playChannel(i2);
                            break;
                        }
                    } else {
                        ((ChannelsListActivityLegacy) activity).OpenChannel((ChannelTv) arrayList.get(i2));
                        break;
                    }
                } else {
                    ((PlayerActivityLiveTV) activity).playChannel((ChannelTv) arrayList.get(i2), false);
                    break;
                }
                break;
            case 3:
                G g7 = (G) this.f635f;
                ArrayList arrayList2 = g7.f559g;
                int i7 = this.f634e;
                boolean z7 = ((Episode) arrayList2.get(i7)).aired;
                Activity activity2 = g7.f560h;
                if (!z7) {
                    Toast.makeText(activity2, "Episode will be available on " + ((Episode) arrayList2.get(i7)).date, 1).show();
                    break;
                } else {
                    if (activity2 instanceof SeriesDetailActivity) {
                        ((SeriesDetailActivity) activity2).openEpisode(i7);
                    }
                    if (activity2 instanceof SeriesDetailActivityLeanBack) {
                        ((SeriesDetailActivityLeanBack) activity2).openEpisode(i7);
                        break;
                    }
                }
                break;
            case 4:
                V v6 = (V) this.f635f;
                SimpleVideoPlayer simpleVideoPlayer = v6.f614f;
                if (simpleVideoPlayer instanceof SimpleVideoPlayer) {
                    int i8 = this.f634e;
                    v6.f613e = i8;
                    simpleVideoPlayer.openEpisode(i8);
                    break;
                }
                break;
            default:
                Z z8 = (Z) this.f635f;
                U4.k kVar = z8.f627e;
                int i9 = this.f634e;
                kVar.openSeason(i9);
                z8.f629g = i9 + 1;
                z8.notifyDataSetChanged();
                new Handler().postDelayed(new C.q(z8, i9, 1), 500L);
                break;
        }
    }
}

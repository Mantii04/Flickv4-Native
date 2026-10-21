package B4;

import android.content.DialogInterface;
import flix.com.vision.activities.LinksActivity;
import flix.com.vision.activities.SettingsActivity;
import flix.com.vision.activities.UserTorrentsActivity;
import flix.com.vision.activities.adult.AdultHistoryActivity;
import flix.com.vision.activities.adult.AdultVideosActivity;
import flix.com.vision.activities.adult.AdultVideosFavoritesActivity;
import flix.com.vision.activities.adult.AdultVideosSearchActivity;
import flix.com.vision.activities.player.AdultVideoPlayerActivity;
import flix.com.vision.activities.player.SimpleVideoPlayer;
import flix.com.vision.tv.ChannelsListActivityLegacy;

/* renamed from: B4.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class DialogInterfaceOnDismissListenerC0040c implements DialogInterface.OnDismissListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f259b;

    public /* synthetic */ DialogInterfaceOnDismissListenerC0040c(int i2) {
        this.f259b = i2;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        switch (this.f259b) {
            case 0:
                int i2 = AdultVideoPlayerActivity.f15591z;
                break;
            case 1:
                boolean z6 = SimpleVideoPlayer.f15629Q0;
                break;
            case 2:
                int i7 = ChannelsListActivityLegacy.f16168y;
                break;
            case 3:
                int i8 = LinksActivity.f14702b0;
                break;
            case 4:
                int i9 = SettingsActivity.f15080c2;
                break;
            case 5:
                int i10 = UserTorrentsActivity.f15279y;
                break;
            case 6:
                int i11 = AdultHistoryActivity.f15323v;
                break;
            case 7:
                int i12 = AdultVideosActivity.f15347C;
                break;
            case 8:
                int i13 = AdultVideosFavoritesActivity.f15367v;
                break;
            default:
                int i14 = AdultVideosSearchActivity.f15380y;
                break;
        }
    }
}

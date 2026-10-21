package A4;

import android.view.View;
import flix.com.vision.App;
import flix.com.vision.activities.LinksActivity;
import flix.com.vision.activities.MainActivity;
import flix.com.vision.activities.SettingsActivity;
import flix.com.vision.activities.WatchedAcvivity;
import flix.com.vision.activities.YouTubePlayerActivity;
import flix.com.vision.activities.adult.AdultVideosFavoritesActivity;
import flix.com.vision.activities.leanback.MainActivityLeanback;
import flix.com.vision.activities.player.AdultVideoPlayerActivity;
import flix.com.vision.activities.player.SimpleVideoPlayer;
import flix.com.vision.activities.player.YouTubeWebviewActivity;
import flix.com.vision.tv.PlayerActivityLiveExternal;
import flix.com.vision.tv.TVCategoriesActivity;

/* loaded from: classes2.dex */
public final /* synthetic */ class q implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f88b;

    public /* synthetic */ q(int i2) {
        this.f88b = i2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f88b) {
            case 0:
                int i2 = MainActivityLeanback.f15476I;
                break;
            case 1:
                int i7 = AdultVideoPlayerActivity.f15591z;
                break;
            case 2:
                boolean z6 = SimpleVideoPlayer.f15629Q0;
                break;
            case 3:
                int i8 = YouTubeWebviewActivity.f15778t;
                break;
            case 4:
                int i9 = PlayerActivityLiveExternal.f16226J;
                break;
            case 5:
                int i10 = TVCategoriesActivity.f16255H;
                break;
            case 6:
                int i11 = LinksActivity.f14702b0;
                break;
            case 7:
                int i12 = MainActivity.f14747T;
                break;
            case 8:
                int i13 = SettingsActivity.f15080c2;
                break;
            case 9:
                int i14 = SettingsActivity.f15080c2;
                A.i.x(App.getInstance().f14440s, "hindi_include_english", true);
                break;
            case 10:
                int i15 = SettingsActivity.f15080c2;
                A.i.x(App.getInstance().f14440s, "hindi_include_english", false);
                break;
            case 11:
                int i16 = WatchedAcvivity.f15295n;
                break;
            case 12:
                int i17 = YouTubePlayerActivity.f15301r;
                break;
            default:
                int i18 = AdultVideosFavoritesActivity.f15367v;
                break;
        }
    }
}

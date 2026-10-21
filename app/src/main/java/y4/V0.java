package y4;

import android.widget.CompoundButton;
import flix.com.vision.App;
import flix.com.vision.activities.SettingsActivity;
import flix.com.vision.activities.TraktTvConfigActivity;

/* loaded from: classes2.dex */
public final /* synthetic */ class V0 implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21182a;

    public /* synthetic */ V0(int i2) {
        this.f21182a = i2;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z6) {
        switch (this.f21182a) {
            case 0:
                int i2 = SettingsActivity.f15080c2;
                A.i.x(App.getInstance().f14440s, "pref_hide_episodes", z6);
                break;
            case 1:
                int i7 = SettingsActivity.f15080c2;
                A.i.x(App.getInstance().f14440s, "pref_adult_show_big_pictures", z6);
                break;
            case 2:
                int i8 = SettingsActivity.f15080c2;
                A.i.x(App.getInstance().f14440s, "pref_logo_as_loading_players", z6);
                break;
            case 3:
                int i9 = SettingsActivity.f15080c2;
                A.i.x(App.getInstance().f14440s, "pref_sub_auto_dl", z6);
                break;
            case 4:
                int i10 = SettingsActivity.f15080c2;
                A.i.x(App.getInstance().f14440s, "pref_adult_zone_keep_history", z6);
                break;
            case 5:
                int i11 = SettingsActivity.f15080c2;
                A.i.x(App.getInstance().f14440s, "pref_play_intro_sound", z6);
                break;
            case 6:
                int i12 = SettingsActivity.f15080c2;
                A.i.x(App.getInstance().f14440s, "pref_show_adult_zone_hide_related", z6);
                break;
            case 7:
                int i13 = SettingsActivity.f15080c2;
                A.i.x(App.getInstance().f14440s, "pref_adult_zone_animate", z6);
                break;
            case 8:
                int i14 = SettingsActivity.f15080c2;
                A.i.x(App.getInstance().f14440s, "pref_adult_zone_always_play_best", z6);
                break;
            case 9:
                int i15 = SettingsActivity.f15080c2;
                A.i.x(App.getInstance().f14440s, "pref_show_time", z6);
                break;
            case 10:
                int i16 = SettingsActivity.f15080c2;
                A.i.x(App.getInstance().f14440s, "pref_hide_unreleased", z6);
                break;
            case 11:
                int i17 = SettingsActivity.f15080c2;
                A.i.x(App.getInstance().f14440s, "pref_show_hindi_dubbed_direct", z6);
                break;
            case 12:
                int i18 = SettingsActivity.f15080c2;
                A.i.x(App.getInstance().f14440s, "pref_classic_search", z6);
                break;
            case 13:
                int i19 = SettingsActivity.f15080c2;
                A.i.x(App.getInstance().f14440s, "pref_show_debrid_links_only", z6);
                break;
            case 14:
                int i20 = SettingsActivity.f15080c2;
                A.i.x(App.getInstance().f14440s, "pref_auto_play_next_ep", z6);
                break;
            case 15:
                int i21 = TraktTvConfigActivity.f15262z;
                A.i.x(App.getInstance().f14440s, "twitter_on", z6);
                break;
            case 16:
                int i22 = TraktTvConfigActivity.f15262z;
                A.i.x(App.getInstance().f14440s, "facebook_on", z6);
                break;
            case 17:
                int i23 = TraktTvConfigActivity.f15262z;
                A.i.x(App.getInstance().f14440s, "tumblr_on", z6);
                break;
            case 18:
                int i24 = TraktTvConfigActivity.f15262z;
                A.i.x(App.getInstance().f14440s, "add_favorites_on", z6);
                break;
            case 19:
                int i25 = TraktTvConfigActivity.f15262z;
                A.i.x(App.getInstance().f14440s, "add_favorites_on_shows", z6);
                break;
            default:
                int i26 = TraktTvConfigActivity.f15262z;
                A.i.x(App.getInstance().f14440s, "sync_watched_list_on", z6);
                break;
        }
    }
}

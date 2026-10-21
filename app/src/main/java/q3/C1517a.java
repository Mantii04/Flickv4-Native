package q3;

import A.i;
import android.view.KeyEvent;
import android.widget.CompoundButton;
import com.google.android.material.chip.Chip;
import flix.com.vision.App;
import flix.com.vision.activities.TraktTvConfigActivity;

/* renamed from: q3.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C1517a implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19578a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ KeyEvent.Callback f19579b;

    public /* synthetic */ C1517a(KeyEvent.Callback callback, int i2) {
        this.f19578a = i2;
        this.f19579b = callback;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z6) {
        KeyEvent.Callback callback = this.f19579b;
        switch (this.f19578a) {
            case 0:
                CompoundButton.OnCheckedChangeListener onCheckedChangeListener = ((Chip) callback).f12570r;
                if (onCheckedChangeListener != null) {
                    onCheckedChangeListener.onCheckedChanged(compoundButton, z6);
                    break;
                }
                break;
            default:
                int i2 = TraktTvConfigActivity.f15262z;
                TraktTvConfigActivity traktTvConfigActivity = (TraktTvConfigActivity) callback;
                traktTvConfigActivity.getClass();
                i.x(App.getInstance().f14440s, "check_me_in", z6);
                if (!z6) {
                    i.x(App.getInstance().f14440s, "sync_watched_list_on", true);
                    traktTvConfigActivity.f15276w.setChecked(true);
                    traktTvConfigActivity.f15269p.setEnabled(true);
                    traktTvConfigActivity.f15269p.setAlpha(1.0f);
                    traktTvConfigActivity.f15265f.setAlpha(0.5f);
                    traktTvConfigActivity.f15267m.setAlpha(0.5f);
                    traktTvConfigActivity.f15266j.setAlpha(0.5f);
                    break;
                } else {
                    traktTvConfigActivity.f15269p.setAlpha(0.5f);
                    traktTvConfigActivity.f15276w.setChecked(false);
                    i.x(App.getInstance().f14440s, "sync_watched_list_on", false);
                    traktTvConfigActivity.f15272s.setEnabled(true);
                    traktTvConfigActivity.f15274u.setEnabled(true);
                    traktTvConfigActivity.f15273t.setEnabled(true);
                    traktTvConfigActivity.f15265f.setEnabled(true);
                    traktTvConfigActivity.f15265f.setAlpha(1.0f);
                    traktTvConfigActivity.f15267m.setEnabled(true);
                    traktTvConfigActivity.f15267m.setAlpha(1.0f);
                    traktTvConfigActivity.f15266j.setEnabled(true);
                    traktTvConfigActivity.f15266j.setAlpha(1.0f);
                    break;
                }
        }
    }
}

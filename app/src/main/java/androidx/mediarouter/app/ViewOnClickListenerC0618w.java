package androidx.mediarouter.app;

import android.support.v4.media.session.PlaybackStateCompat;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.mediarouter.R;

/* renamed from: androidx.mediarouter.app.w, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewOnClickListenerC0618w implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ D f7911b;

    public ViewOnClickListenerC0618w(D d7) {
        this.f7911b = d7;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        PlaybackStateCompat playbackStateCompat;
        int id = view.getId();
        D d7 = this.f7911b;
        if (id == 16908313 || id == 16908314) {
            if (d7.f7654r.isSelected()) {
                d7.f7650p.unselect(id == 16908313 ? 2 : 1);
            }
            d7.dismiss();
            return;
        }
        if (id != R.id.mr_control_playback_ctrl) {
            if (id == R.id.mr_close) {
                d7.dismiss();
                return;
            }
            return;
        }
        if (d7.f7638d0 == null || (playbackStateCompat = d7.f7640f0) == null) {
            return;
        }
        int i2 = 0;
        int i7 = playbackStateCompat.getState() != 3 ? 0 : 1;
        if (i7 != 0 && (d7.f7640f0.getActions() & 514) != 0) {
            d7.f7638d0.getTransportControls().pause();
            i2 = R.string.mr_controller_pause;
        } else if (i7 != 0 && (d7.f7640f0.getActions() & 1) != 0) {
            d7.f7638d0.getTransportControls().stop();
            i2 = R.string.mr_controller_stop;
        } else if (i7 == 0 && (d7.f7640f0.getActions() & 516) != 0) {
            d7.f7638d0.getTransportControls().play();
            i2 = R.string.mr_controller_play;
        }
        AccessibilityManager accessibilityManager = d7.f7669y0;
        if (accessibilityManager == null || !accessibilityManager.isEnabled() || i2 == 0) {
            return;
        }
        AccessibilityEvent obtain = AccessibilityEvent.obtain(16384);
        obtain.setPackageName(d7.f7656s.getPackageName());
        obtain.setClassName(ViewOnClickListenerC0618w.class.getName());
        obtain.getText().add(d7.f7656s.getString(i2));
        accessibilityManager.sendAccessibilityEvent(obtain);
    }
}

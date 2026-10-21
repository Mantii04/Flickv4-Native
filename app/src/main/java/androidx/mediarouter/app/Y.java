package androidx.mediarouter.app;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageButton;
import androidx.mediarouter.R;
import f.AbstractC0876a;
import m1.B0;

/* loaded from: classes.dex */
public abstract class Y extends B0 {

    /* renamed from: u, reason: collision with root package name */
    public f1.U f7751u;

    /* renamed from: v, reason: collision with root package name */
    public final ImageButton f7752v;

    /* renamed from: w, reason: collision with root package name */
    public final MediaRouteVolumeSlider f7753w;

    /* renamed from: x, reason: collision with root package name */
    public final /* synthetic */ m0 f7754x;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Y(m0 m0Var, View view, ImageButton imageButton, MediaRouteVolumeSlider mediaRouteVolumeSlider) {
        super(view);
        int color;
        int color2;
        this.f7754x = m0Var;
        this.f7752v = imageButton;
        this.f7753w = mediaRouteVolumeSlider;
        Context context = m0Var.f7879w;
        int i2 = R.drawable.mr_cast_mute_button;
        int i7 = o0.f7886a;
        Drawable wrap = E.c.wrap(AbstractC0876a.getDrawable(context, i2));
        if (o0.h(context)) {
            E.c.setTint(wrap, A.h.getColor(context, o0.f7886a));
        }
        imageButton.setImageDrawable(wrap);
        Context context2 = m0Var.f7879w;
        if (o0.h(context2)) {
            color = A.h.getColor(context2, R.color.mr_cast_progressbar_progress_and_thumb_light);
            color2 = A.h.getColor(context2, R.color.mr_cast_progressbar_background_light);
        } else {
            color = A.h.getColor(context2, R.color.mr_cast_progressbar_progress_and_thumb_dark);
            color2 = A.h.getColor(context2, R.color.mr_cast_progressbar_background_dark);
        }
        mediaRouteVolumeSlider.setColor(color, color2);
    }

    public final void n(f1.U u6) {
        this.f7751u = u6;
        int volume = u6.getVolume();
        boolean z6 = volume == 0;
        ImageButton imageButton = this.f7752v;
        imageButton.setActivated(z6);
        imageButton.setOnClickListener(new X(this));
        f1.U u7 = this.f7751u;
        MediaRouteVolumeSlider mediaRouteVolumeSlider = this.f7753w;
        mediaRouteVolumeSlider.setTag(u7);
        mediaRouteVolumeSlider.setMax(u6.getVolumeMax());
        mediaRouteVolumeSlider.setProgress(volume);
        mediaRouteVolumeSlider.setOnSeekBarChangeListener(this.f7754x.f7846D);
    }

    public final void o(boolean z6) {
        ImageButton imageButton = this.f7752v;
        if (imageButton.isActivated() == z6) {
            return;
        }
        imageButton.setActivated(z6);
        m0 m0Var = this.f7754x;
        if (z6) {
            m0Var.f7849G.put(this.f7751u.getId(), Integer.valueOf(this.f7753w.getProgress()));
        } else {
            m0Var.f7849G.remove(this.f7751u.getId());
        }
    }
}

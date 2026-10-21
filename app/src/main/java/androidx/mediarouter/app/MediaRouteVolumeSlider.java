package androidx.mediarouter.app;

import android.content.Context;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.util.Log;
import androidx.appcompat.R;

/* loaded from: classes.dex */
class MediaRouteVolumeSlider extends l.Y {

    /* renamed from: e, reason: collision with root package name */
    public final float f7711e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f7712f;

    /* renamed from: j, reason: collision with root package name */
    public Drawable f7713j;

    /* renamed from: m, reason: collision with root package name */
    public int f7714m;

    /* renamed from: n, reason: collision with root package name */
    public int f7715n;

    public MediaRouteVolumeSlider(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.seekBarStyle);
    }

    @Override // l.Y, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int i2 = isEnabled() ? 255 : (int) (this.f7711e * 255.0f);
        Drawable drawable = this.f7713j;
        int i7 = this.f7714m;
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        drawable.setColorFilter(i7, mode);
        this.f7713j.setAlpha(i2);
        Drawable progressDrawable = getProgressDrawable();
        if (progressDrawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) getProgressDrawable();
            Drawable findDrawableByLayerId = layerDrawable.findDrawableByLayerId(android.R.id.progress);
            layerDrawable.findDrawableByLayerId(android.R.id.background).setColorFilter(this.f7715n, mode);
            progressDrawable = findDrawableByLayerId;
        }
        progressDrawable.setColorFilter(this.f7714m, mode);
        progressDrawable.setAlpha(i2);
    }

    public void setColor(int i2) {
        setColor(i2, i2);
    }

    public void setHideThumb(boolean z6) {
        if (this.f7712f == z6) {
            return;
        }
        this.f7712f = z6;
        super.setThumb(z6 ? null : this.f7713j);
    }

    @Override // android.widget.AbsSeekBar
    public void setThumb(Drawable drawable) {
        this.f7713j = drawable;
        if (this.f7712f) {
            drawable = null;
        }
        super.setThumb(drawable);
    }

    public MediaRouteVolumeSlider(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f7711e = o0.c(context);
    }

    public void setColor(int i2, int i7) {
        if (this.f7714m != i2) {
            if (Color.alpha(i2) != 255) {
                Log.e("MediaRouteVolumeSlider", "Volume slider progress and thumb color cannot be translucent: #" + Integer.toHexString(i2));
            }
            this.f7714m = i2;
        }
        if (this.f7715n != i7) {
            if (Color.alpha(i7) != 255) {
                Log.e("MediaRouteVolumeSlider", "Volume slider background color cannot be translucent: #" + Integer.toHexString(i7));
            }
            this.f7715n = i7;
        }
    }
}

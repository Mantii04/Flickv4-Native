package w2;

import G2.t;
import android.graphics.Bitmap;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import n2.InterfaceC1391M;

/* renamed from: w2.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1777a implements InterfaceC1391M {

    /* renamed from: b, reason: collision with root package name */
    public final AnimatedImageDrawable f20671b;

    public C1777a(AnimatedImageDrawable animatedImageDrawable) {
        this.f20671b = animatedImageDrawable;
    }

    @Override // n2.InterfaceC1391M
    public Class<Drawable> getResourceClass() {
        return Drawable.class;
    }

    @Override // n2.InterfaceC1391M
    public int getSize() {
        int intrinsicWidth;
        int intrinsicHeight;
        intrinsicWidth = this.f20671b.getIntrinsicWidth();
        intrinsicHeight = this.f20671b.getIntrinsicHeight();
        return t.getBytesPerPixel(Bitmap.Config.ARGB_8888) * intrinsicHeight * intrinsicWidth * 2;
    }

    @Override // n2.InterfaceC1391M
    public void recycle() {
        this.f20671b.stop();
        this.f20671b.clearAnimationCallbacks();
    }

    @Override // n2.InterfaceC1391M
    public AnimatedImageDrawable get() {
        return this.f20671b;
    }
}

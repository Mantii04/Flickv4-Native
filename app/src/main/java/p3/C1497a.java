package p3;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import y1.AbstractC1872c;

/* renamed from: p3.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1497a extends AbstractC1872c {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C1500d f19476b;

    public C1497a(C1500d c1500d) {
        this.f19476b = c1500d;
    }

    @Override // y1.AbstractC1872c
    public void onAnimationEnd(Drawable drawable) {
        super.onAnimationEnd(drawable);
        ColorStateList colorStateList = this.f19476b.f19500x;
        if (colorStateList != null) {
            E.c.setTintList(drawable, colorStateList);
        }
    }

    @Override // y1.AbstractC1872c
    public void onAnimationStart(Drawable drawable) {
        super.onAnimationStart(drawable);
        C1500d c1500d = this.f19476b;
        ColorStateList colorStateList = c1500d.f19500x;
        if (colorStateList != null) {
            E.c.setTint(drawable, colorStateList.getColorForState(c1500d.f19484B, colorStateList.getDefaultColor()));
        }
    }
}

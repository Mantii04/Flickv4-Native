package y1;

import android.graphics.drawable.Drawable;

/* renamed from: y1.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1873d implements Drawable.Callback {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C1877h f20976b;

    public C1873d(C1877h c1877h) {
        this.f20976b = c1877h;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        this.f20976b.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j7) {
        this.f20976b.scheduleSelf(runnable, j7);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        this.f20976b.unscheduleSelf(runnable);
    }
}

package g;

import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public final class j implements Drawable.Callback {

    /* renamed from: b, reason: collision with root package name */
    public Drawable.Callback f16327b;

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j7) {
        Drawable.Callback callback = this.f16327b;
        if (callback != null) {
            callback.scheduleDrawable(drawable, runnable, j7);
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = this.f16327b;
        if (callback != null) {
            callback.unscheduleDrawable(drawable, runnable);
        }
    }

    public Drawable.Callback unwrap() {
        Drawable.Callback callback = this.f16327b;
        this.f16327b = null;
        return callback;
    }

    public j wrap(Drawable.Callback callback) {
        this.f16327b = callback;
        return this;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
    }
}

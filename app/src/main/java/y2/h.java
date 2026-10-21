package y2;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;

/* loaded from: classes.dex */
public final class h extends D2.c {

    /* renamed from: j, reason: collision with root package name */
    public final Handler f21075j;

    /* renamed from: m, reason: collision with root package name */
    public final int f21076m;

    /* renamed from: n, reason: collision with root package name */
    public final long f21077n;

    /* renamed from: p, reason: collision with root package name */
    public Bitmap f21078p;

    public h(Handler handler, int i2, long j7) {
        this.f21075j = handler;
        this.f21076m = i2;
        this.f21077n = j7;
    }

    @Override // D2.k
    public void onLoadCleared(Drawable drawable) {
        this.f21078p = null;
    }

    @Override // D2.k
    public void onResourceReady(Bitmap bitmap, E2.d dVar) {
        this.f21078p = bitmap;
        Handler handler = this.f21075j;
        handler.sendMessageAtTime(handler.obtainMessage(1, this), this.f21077n);
    }
}

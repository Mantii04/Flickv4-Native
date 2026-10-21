package E1;

import android.content.Intent;

/* loaded from: classes.dex */
public final class j implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final m f955b;

    /* renamed from: e, reason: collision with root package name */
    public final Intent f956e;

    /* renamed from: f, reason: collision with root package name */
    public final int f957f;

    public j(int i2, m mVar, Intent intent) {
        this.f955b = mVar;
        this.f956e = intent;
        this.f957f = i2;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f955b.add(this.f956e, this.f957f);
    }
}

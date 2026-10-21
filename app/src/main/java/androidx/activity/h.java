package androidx.activity;

import d.C0770a;

/* loaded from: classes.dex */
public final class h implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4869b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0770a f4870e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ j f4871f;

    public h(j jVar, int i2, C0770a c0770a) {
        this.f4871f = jVar;
        this.f4869b = i2;
        this.f4870e = c0770a;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f4871f.dispatchResult(this.f4869b, this.f4870e.getValue());
    }
}

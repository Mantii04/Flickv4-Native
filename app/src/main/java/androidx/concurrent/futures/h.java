package androidx.concurrent.futures;

/* loaded from: classes.dex */
public final class h {

    /* renamed from: c, reason: collision with root package name */
    public static final h f5215c = new h();

    /* renamed from: a, reason: collision with root package name */
    public volatile Thread f5216a;

    /* renamed from: b, reason: collision with root package name */
    public volatile h f5217b;

    public h() {
        i.ATOMIC_HELPER.e(this, Thread.currentThread());
    }
}

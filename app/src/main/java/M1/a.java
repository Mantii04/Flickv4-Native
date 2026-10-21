package M1;

import java.util.concurrent.CancellationException;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: c, reason: collision with root package name */
    public static final a f2085c;

    /* renamed from: d, reason: collision with root package name */
    public static final a f2086d;

    /* renamed from: a, reason: collision with root package name */
    public final boolean f2087a;

    /* renamed from: b, reason: collision with root package name */
    public final CancellationException f2088b;

    static {
        if (androidx.work.impl.utils.futures.b.f8316j) {
            f2086d = null;
            f2085c = null;
        } else {
            f2086d = new a(false, null);
            f2085c = new a(true, null);
        }
    }

    public a(boolean z6, CancellationException cancellationException) {
        this.f2087a = z6;
        this.f2088b = cancellationException;
    }
}

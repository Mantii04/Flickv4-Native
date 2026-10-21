package androidx.concurrent.futures;

import java.util.concurrent.CancellationException;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: c, reason: collision with root package name */
    public static final b f5198c;

    /* renamed from: d, reason: collision with root package name */
    public static final b f5199d;

    /* renamed from: a, reason: collision with root package name */
    public final boolean f5200a;

    /* renamed from: b, reason: collision with root package name */
    public final CancellationException f5201b;

    static {
        if (i.GENERATE_CANCELLATION_CAUSES) {
            f5199d = null;
            f5198c = null;
        } else {
            f5199d = new b(false, null);
            f5198c = new b(true, null);
        }
    }

    public b(boolean z6, CancellationException cancellationException) {
        this.f5200a = z6;
        this.f5201b = cancellationException;
    }
}

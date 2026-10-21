package n2;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* renamed from: n2.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1399d extends WeakReference {

    /* renamed from: a, reason: collision with root package name */
    public final l2.m f18940a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f18941b;

    /* renamed from: c, reason: collision with root package name */
    public InterfaceC1391M f18942c;

    public C1399d(l2.m mVar, C1385G c1385g, ReferenceQueue referenceQueue, boolean z6) {
        super(c1385g, referenceQueue);
        this.f18940a = (l2.m) G2.r.checkNotNull(mVar);
        boolean z7 = c1385g.f18891b;
        this.f18942c = (z7 && z6) ? (InterfaceC1391M) G2.r.checkNotNull(c1385g.f18893f) : null;
        this.f18941b = z7;
    }
}

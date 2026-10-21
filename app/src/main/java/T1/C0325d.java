package T1;

import f2.AbstractC0923d;

/* renamed from: T1.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0325d implements I {
    @Override // T1.I
    public void onResult(Throwable th) {
        if (!f2.h.isNetworkException(th)) {
            throw new IllegalStateException("Unable to parse composition", th);
        }
        AbstractC0923d.warning("Unable to load composition.", th);
    }
}

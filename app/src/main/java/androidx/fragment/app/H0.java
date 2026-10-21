package androidx.fragment.app;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class H0 implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ J0 f6121b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ M0 f6122e;

    public H0(M0 m02, J0 j02) {
        this.f6122e = m02;
        this.f6121b = j02;
    }

    @Override // java.lang.Runnable
    public void run() {
        ArrayList arrayList = this.f6122e.f6143b;
        J0 j02 = this.f6121b;
        if (arrayList.contains(j02)) {
            j02.getFinalState().b(j02.getFragment().f6068Q);
        }
    }
}

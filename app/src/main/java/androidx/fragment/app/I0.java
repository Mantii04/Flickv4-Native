package androidx.fragment.app;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class I0 implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ J0 f6125b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ M0 f6126e;

    public I0(M0 m02, J0 j02) {
        this.f6126e = m02;
        this.f6125b = j02;
    }

    @Override // java.lang.Runnable
    public void run() {
        M0 m02 = this.f6126e;
        ArrayList arrayList = m02.f6143b;
        J0 j02 = this.f6125b;
        arrayList.remove(j02);
        m02.f6144c.remove(j02);
    }
}

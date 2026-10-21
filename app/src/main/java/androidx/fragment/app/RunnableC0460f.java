package androidx.fragment.app;

import java.util.ArrayList;

/* renamed from: androidx.fragment.app.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0460f implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f6194b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ L0 f6195e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ C0480s f6196f;

    public RunnableC0460f(C0480s c0480s, ArrayList arrayList, L0 l02) {
        this.f6196f = c0480s;
        this.f6194b = arrayList;
        this.f6195e = l02;
    }

    @Override // java.lang.Runnable
    public void run() {
        ArrayList arrayList = this.f6194b;
        L0 l02 = this.f6195e;
        if (arrayList.contains(l02)) {
            arrayList.remove(l02);
            this.f6196f.getClass();
            l02.getFinalState().b(l02.getFragment().f6068Q);
        }
    }
}

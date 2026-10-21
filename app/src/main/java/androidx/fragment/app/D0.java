package androidx.fragment.app;

import M.AbstractC0181p0;
import android.view.View;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class D0 implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6101b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ArrayList f6102e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ArrayList f6103f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ ArrayList f6104j;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ ArrayList f6105m;

    public D0(int i2, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
        this.f6101b = i2;
        this.f6102e = arrayList;
        this.f6103f = arrayList2;
        this.f6104j = arrayList3;
        this.f6105m = arrayList4;
    }

    @Override // java.lang.Runnable
    public void run() {
        for (int i2 = 0; i2 < this.f6101b; i2++) {
            AbstractC0181p0.setTransitionName((View) this.f6102e.get(i2), (String) this.f6103f.get(i2));
            AbstractC0181p0.setTransitionName((View) this.f6104j.get(i2), (String) this.f6105m.get(i2));
        }
    }
}

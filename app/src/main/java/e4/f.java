package e4;

import android.view.View;

/* loaded from: classes2.dex */
public final class f implements Comparable {

    /* renamed from: b, reason: collision with root package name */
    public final int f13943b;

    /* renamed from: e, reason: collision with root package name */
    public final View f13944e;

    public f(g gVar, int i2, View view) {
        this.f13943b = i2;
        this.f13944e = view;
    }

    @Override // java.lang.Comparable
    public int compareTo(f fVar) {
        return fVar.f13943b - this.f13943b;
    }
}

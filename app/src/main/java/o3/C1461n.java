package o3;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* renamed from: o3.n, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1461n {

    /* renamed from: a, reason: collision with root package name */
    public final float f19119a;

    /* renamed from: b, reason: collision with root package name */
    public final List f19120b;

    /* renamed from: c, reason: collision with root package name */
    public final int f19121c;

    /* renamed from: d, reason: collision with root package name */
    public final int f19122d;

    public C1461n(float f3, ArrayList arrayList, int i2, int i7) {
        this.f19119a = f3;
        this.f19120b = Collections.unmodifiableList(arrayList);
        this.f19121c = i2;
        this.f19122d = i7;
    }

    public final C1460m a() {
        return (C1460m) this.f19120b.get(this.f19121c);
    }

    public final C1460m b() {
        return (C1460m) this.f19120b.get(0);
    }

    public final C1460m c() {
        return (C1460m) this.f19120b.get(this.f19122d);
    }

    public final C1460m d() {
        return (C1460m) A.i.c(1, this.f19120b);
    }
}

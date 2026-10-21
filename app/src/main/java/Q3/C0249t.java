package Q3;

import com.google.common.collect.ImmutableList;

/* renamed from: Q3.t, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0249t extends AbstractC0231a {

    /* renamed from: f, reason: collision with root package name */
    public final ImmutableList f2911f;

    public C0249t(int i2, ImmutableList immutableList) {
        super(immutableList.size(), i2);
        this.f2911f = immutableList;
    }

    @Override // Q3.AbstractC0231a
    public Object get(int i2) {
        return this.f2911f.get(i2);
    }
}

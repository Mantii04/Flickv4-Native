package Z1;

import W1.r;
import g2.C0947a;
import java.util.List;

/* loaded from: classes.dex */
public final class i implements m {

    /* renamed from: a, reason: collision with root package name */
    public final b f4450a;

    /* renamed from: b, reason: collision with root package name */
    public final b f4451b;

    public i(b bVar, b bVar2) {
        this.f4450a = bVar;
        this.f4451b = bVar2;
    }

    @Override // Z1.m
    public W1.f createAnimation() {
        return new r(this.f4450a.createAnimation(), this.f4451b.createAnimation());
    }

    @Override // Z1.m
    public List<C0947a> getKeyframes() {
        throw new UnsupportedOperationException("Cannot call getKeyframes on AnimatableSplitDimensionPathValue.");
    }

    @Override // Z1.m
    public boolean isStatic() {
        return this.f4450a.isStatic() && this.f4451b.isStatic();
    }
}

package Z1;

import W1.o;
import g2.C0947a;
import java.util.List;

/* loaded from: classes.dex */
public final class e implements m {

    /* renamed from: a, reason: collision with root package name */
    public final List f4449a;

    public e(List<C0947a> list) {
        this.f4449a = list;
    }

    @Override // Z1.m
    public W1.f createAnimation() {
        List list = this.f4449a;
        return ((C0947a) list.get(0)).isStatic() ? new o(list) : new W1.n(list);
    }

    @Override // Z1.m
    public List<C0947a> getKeyframes() {
        return this.f4449a;
    }

    @Override // Z1.m
    public boolean isStatic() {
        List list = this.f4449a;
        return list.size() == 1 && ((C0947a) list.get(0)).isStatic();
    }
}

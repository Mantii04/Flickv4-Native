package W1;

import g2.C0947a;
import java.util.List;

/* loaded from: classes.dex */
public final class d implements c {

    /* renamed from: a, reason: collision with root package name */
    public final List f4115a;

    /* renamed from: c, reason: collision with root package name */
    public C0947a f4117c = null;

    /* renamed from: d, reason: collision with root package name */
    public float f4118d = -1.0f;

    /* renamed from: b, reason: collision with root package name */
    public C0947a f4116b = a(0.0f);

    public d(List list) {
        this.f4115a = list;
    }

    public final C0947a a(float f3) {
        List list = this.f4115a;
        C0947a c0947a = (C0947a) A.i.c(1, list);
        if (f3 >= c0947a.getStartProgress()) {
            return c0947a;
        }
        for (int size = list.size() - 2; size >= 1; size--) {
            C0947a c0947a2 = (C0947a) list.get(size);
            if (this.f4116b != c0947a2 && c0947a2.containsProgress(f3)) {
                return c0947a2;
            }
        }
        return (C0947a) list.get(0);
    }

    @Override // W1.c
    public C0947a getCurrentKeyframe() {
        return this.f4116b;
    }

    @Override // W1.c
    public float getEndProgress() {
        return ((C0947a) A.i.c(1, this.f4115a)).getEndProgress();
    }

    @Override // W1.c
    public float getStartDelayProgress() {
        return ((C0947a) this.f4115a.get(0)).getStartProgress();
    }

    @Override // W1.c
    public boolean isCachedValueEnabled(float f3) {
        C0947a c0947a = this.f4117c;
        C0947a c0947a2 = this.f4116b;
        if (c0947a == c0947a2 && this.f4118d == f3) {
            return true;
        }
        this.f4117c = c0947a2;
        this.f4118d = f3;
        return false;
    }

    @Override // W1.c
    public boolean isEmpty() {
        return false;
    }

    @Override // W1.c
    public boolean isValueChanged(float f3) {
        if (this.f4116b.containsProgress(f3)) {
            return !this.f4116b.isStatic();
        }
        this.f4116b = a(f3);
        return true;
    }
}

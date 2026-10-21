package W1;

import g2.C0947a;
import java.util.List;

/* loaded from: classes.dex */
public final class e implements c {

    /* renamed from: a, reason: collision with root package name */
    public final C0947a f4119a;

    /* renamed from: b, reason: collision with root package name */
    public float f4120b = -1.0f;

    public e(List list) {
        this.f4119a = (C0947a) list.get(0);
    }

    @Override // W1.c
    public C0947a getCurrentKeyframe() {
        return this.f4119a;
    }

    @Override // W1.c
    public float getEndProgress() {
        return this.f4119a.getEndProgress();
    }

    @Override // W1.c
    public float getStartDelayProgress() {
        return this.f4119a.getStartProgress();
    }

    @Override // W1.c
    public boolean isCachedValueEnabled(float f3) {
        if (this.f4120b == f3) {
            return true;
        }
        this.f4120b = f3;
        return false;
    }

    @Override // W1.c
    public boolean isEmpty() {
        return false;
    }

    @Override // W1.c
    public boolean isValueChanged(float f3) {
        return !this.f4119a.isStatic();
    }
}

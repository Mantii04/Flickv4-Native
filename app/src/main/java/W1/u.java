package W1;

import g2.C0947a;
import g2.C0948b;
import g2.C0949c;
import java.util.Collections;

/* loaded from: classes.dex */
public final class u extends f {

    /* renamed from: i, reason: collision with root package name */
    public final Object f4160i;

    public u(C0949c c0949c) {
        this(c0949c, null);
    }

    @Override // W1.f
    public final float a() {
        return 1.0f;
    }

    @Override // W1.f
    public Object getValue() {
        C0949c c0949c = this.f4125e;
        float progress = getProgress();
        float progress2 = getProgress();
        float progress3 = getProgress();
        Object obj = this.f4160i;
        return c0949c.getValueInternal(0.0f, 0.0f, obj, obj, progress, progress2, progress3);
    }

    @Override // W1.f
    public void notifyListeners() {
        if (this.f4125e != null) {
            super.notifyListeners();
        }
    }

    @Override // W1.f
    public void setProgress(float f3) {
        this.f4124d = f3;
    }

    public u(C0949c c0949c, Object obj) {
        super(Collections.EMPTY_LIST);
        new C0948b();
        setValueCallback(c0949c);
        this.f4160i = obj;
    }

    @Override // W1.f
    public final Object getValue(C0947a c0947a, float f3) {
        return getValue();
    }
}

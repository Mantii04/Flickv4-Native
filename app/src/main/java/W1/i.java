package W1;

import a2.C0382c;
import g2.C0947a;
import java.util.List;

/* loaded from: classes.dex */
public final class i extends k {

    /* renamed from: i, reason: collision with root package name */
    public final C0382c f4129i;

    public i(List<C0947a> list) {
        super(list);
        C0382c c0382c = (C0382c) list.get(0).f16441b;
        int size = c0382c != null ? c0382c.getSize() : 0;
        this.f4129i = new C0382c(new float[size], new int[size]);
    }

    @Override // W1.f
    public final Object getValue(C0947a c0947a, float f3) {
        C0382c c0382c = (C0382c) c0947a.f16441b;
        C0382c c0382c2 = (C0382c) c0947a.f16442c;
        C0382c c0382c3 = this.f4129i;
        c0382c3.lerp(c0382c, c0382c2, f3);
        return c0382c3;
    }
}

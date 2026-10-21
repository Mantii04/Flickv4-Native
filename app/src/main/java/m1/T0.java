package m1;

/* loaded from: classes.dex */
public final class T0 {

    /* renamed from: a, reason: collision with root package name */
    public final p.q f18336a = new p.q();

    /* renamed from: b, reason: collision with root package name */
    public final p.n f18337b = new p.n();

    public final void a(B0 b02, C1270a0 c1270a0) {
        p.q qVar = this.f18336a;
        S0 s02 = (S0) qVar.get(b02);
        if (s02 == null) {
            s02 = S0.a();
            qVar.put(b02, s02);
        }
        s02.f18334c = c1270a0;
        s02.f18332a |= 8;
    }

    public final C1270a0 b(B0 b02, int i2) {
        S0 s02;
        C1270a0 c1270a0;
        p.q qVar = this.f18336a;
        int indexOfKey = qVar.indexOfKey(b02);
        if (indexOfKey >= 0 && (s02 = (S0) qVar.valueAt(indexOfKey)) != null) {
            int i7 = s02.f18332a;
            if ((i7 & i2) != 0) {
                int i8 = i7 & (~i2);
                s02.f18332a = i8;
                if (i2 == 4) {
                    c1270a0 = s02.f18333b;
                } else {
                    if (i2 != 8) {
                        throw new IllegalArgumentException("Must provide flag PRE or POST");
                    }
                    c1270a0 = s02.f18334c;
                }
                if ((i8 & 12) == 0) {
                    qVar.removeAt(indexOfKey);
                    s02.f18332a = 0;
                    s02.f18333b = null;
                    s02.f18334c = null;
                    S0.f18331d.release(s02);
                }
                return c1270a0;
            }
        }
        return null;
    }

    public final void c(B0 b02) {
        S0 s02 = (S0) this.f18336a.get(b02);
        if (s02 == null) {
            return;
        }
        s02.f18332a &= -2;
    }

    public final void d(B0 b02) {
        p.n nVar = this.f18337b;
        int size = nVar.size() - 1;
        while (true) {
            if (size < 0) {
                break;
            }
            if (b02 == nVar.valueAt(size)) {
                nVar.removeAt(size);
                break;
            }
            size--;
        }
        S0 s02 = (S0) this.f18336a.remove(b02);
        if (s02 != null) {
            s02.f18332a = 0;
            s02.f18333b = null;
            s02.f18334c = null;
            S0.f18331d.release(s02);
        }
    }

    public void onViewDetached(B0 b02) {
        c(b02);
    }
}

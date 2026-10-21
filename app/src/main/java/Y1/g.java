package Y1;

import T1.C0330i;
import p.p;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: b, reason: collision with root package name */
    public static final g f4360b = new g();

    /* renamed from: a, reason: collision with root package name */
    public final p f4361a = new p(20);

    public static g getInstance() {
        return f4360b;
    }

    public C0330i get(String str) {
        if (str == null) {
            return null;
        }
        return (C0330i) this.f4361a.get(str);
    }

    public void put(String str, C0330i c0330i) {
        if (str == null) {
            return;
        }
        this.f4361a.put(str, c0330i);
    }
}

package G2;

import androidx.media3.common.util.Log;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public int f1024a;

    /* renamed from: b, reason: collision with root package name */
    public int f1025b;

    /* renamed from: c, reason: collision with root package name */
    public Object f1026c;

    public void a() {
        int i2 = this.f1024a;
        if (i2 == 2) {
            if (this.f1025b <= 0) {
                throw new IllegalArgumentException();
            }
            p.p pVar = (p.p) this.f1026c;
            if (pVar == null || pVar.maxSize() != this.f1025b) {
                this.f1026c = new p.p(this.f1025b);
                return;
            }
            return;
        }
        if (i2 != 3 && i2 != 1) {
            this.f1026c = null;
            return;
        }
        p.p pVar2 = (p.p) this.f1026c;
        if (pVar2 == null || pVar2.maxSize() != Integer.MAX_VALUE) {
            this.f1026c = new p.p(Log.LOG_LEVEL_OFF);
        }
    }
}

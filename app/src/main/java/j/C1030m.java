package j;

import M.D0;
import M.E0;
import android.view.View;

/* renamed from: j.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1030m extends E0 {

    /* renamed from: a, reason: collision with root package name */
    public boolean f16928a = false;

    /* renamed from: b, reason: collision with root package name */
    public int f16929b = 0;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C1031n f16930c;

    public C1030m(C1031n c1031n) {
        this.f16930c = c1031n;
    }

    @Override // M.D0
    public void onAnimationEnd(View view) {
        int i2 = this.f16929b + 1;
        this.f16929b = i2;
        C1031n c1031n = this.f16930c;
        if (i2 == c1031n.f16931a.size()) {
            D0 d02 = c1031n.f16934d;
            if (d02 != null) {
                d02.onAnimationEnd(null);
            }
            this.f16929b = 0;
            this.f16928a = false;
            c1031n.f16935e = false;
        }
    }

    @Override // M.E0, M.D0
    public void onAnimationStart(View view) {
        if (this.f16928a) {
            return;
        }
        this.f16928a = true;
        D0 d02 = this.f16930c.f16934d;
        if (d02 != null) {
            d02.onAnimationStart(null);
        }
    }
}

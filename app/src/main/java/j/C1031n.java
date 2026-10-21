package j;

import M.C0;
import M.D0;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: j.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1031n {

    /* renamed from: c, reason: collision with root package name */
    public Interpolator f16933c;

    /* renamed from: d, reason: collision with root package name */
    public D0 f16934d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f16935e;

    /* renamed from: b, reason: collision with root package name */
    public long f16932b = -1;

    /* renamed from: f, reason: collision with root package name */
    public final C1030m f16936f = new C1030m(this);

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f16931a = new ArrayList();

    public void cancel() {
        if (this.f16935e) {
            Iterator it = this.f16931a.iterator();
            while (it.hasNext()) {
                ((C0) it.next()).cancel();
            }
            this.f16935e = false;
        }
    }

    public C1031n play(C0 c02) {
        if (!this.f16935e) {
            this.f16931a.add(c02);
        }
        return this;
    }

    public C1031n playSequentially(C0 c02, C0 c03) {
        ArrayList arrayList = this.f16931a;
        arrayList.add(c02);
        c03.setStartDelay(c02.getDuration());
        arrayList.add(c03);
        return this;
    }

    public C1031n setDuration(long j7) {
        if (!this.f16935e) {
            this.f16932b = j7;
        }
        return this;
    }

    public C1031n setInterpolator(Interpolator interpolator) {
        if (!this.f16935e) {
            this.f16933c = interpolator;
        }
        return this;
    }

    public C1031n setListener(D0 d02) {
        if (!this.f16935e) {
            this.f16934d = d02;
        }
        return this;
    }

    public void start() {
        if (this.f16935e) {
            return;
        }
        Iterator it = this.f16931a.iterator();
        while (it.hasNext()) {
            C0 c02 = (C0) it.next();
            long j7 = this.f16932b;
            if (j7 >= 0) {
                c02.setDuration(j7);
            }
            Interpolator interpolator = this.f16933c;
            if (interpolator != null) {
                c02.setInterpolator(interpolator);
            }
            if (this.f16934d != null) {
                c02.setListener(this.f16936f);
            }
            c02.start();
        }
        this.f16935e = true;
    }
}

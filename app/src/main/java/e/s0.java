package e;

import android.os.Build;
import n2.C1390L;
import n2.C1403h;

/* loaded from: classes.dex */
public final class s0 {

    /* renamed from: d, reason: collision with root package name */
    public static s0 f13864d;

    /* renamed from: a, reason: collision with root package name */
    public Object f13865a;

    /* renamed from: b, reason: collision with root package name */
    public Object f13866b;

    /* renamed from: c, reason: collision with root package name */
    public Object f13867c;

    public static void b() {
        if (Build.VERSION.SDK_INT >= 29) {
            throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
        }
    }

    public void a(n2.z zVar, l2.q qVar) {
        H2.i.beginSection("DecodeJob.encode");
        try {
            zVar.getDiskCache().put((l2.m) this.f13865a, new C1403h((l2.s) this.f13866b, (C1390L) this.f13867c, qVar));
        } finally {
            ((C1390L) this.f13867c).a();
            H2.i.endSection();
        }
    }
}

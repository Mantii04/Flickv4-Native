package m4;

import android.graphics.Bitmap;

/* renamed from: m4.v, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1342v {

    /* renamed from: a, reason: collision with root package name */
    public final C1340t f18714a;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1342v(android.content.Context r5) {
        /*
            r4 = this;
            java.lang.StringBuilder r0 = m4.W.f18670a
            java.lang.String r0 = "activity"
            java.lang.Object r0 = r5.getSystemService(r0)
            android.app.ActivityManager r0 = (android.app.ActivityManager) r0
            android.content.pm.ApplicationInfo r5 = r5.getApplicationInfo()
            int r5 = r5.flags
            r1 = 1048576(0x100000, float:1.469368E-39)
            r5 = r5 & r1
            if (r5 == 0) goto L1a
            int r5 = r0.getLargeMemoryClass()
            goto L1e
        L1a:
            int r5 = r0.getMemoryClass()
        L1e:
            r0 = 1048576(0x100000, double:5.180654E-318)
            long r2 = (long) r5
            long r2 = r2 * r0
            r0 = 7
            long r2 = r2 / r0
            int r5 = (int) r2
            r4.<init>(r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: m4.C1342v.<init>(android.content.Context):void");
    }

    public Bitmap get(String str) {
        C1341u c1341u = (C1341u) this.f18714a.get(str);
        if (c1341u != null) {
            return c1341u.f18712a;
        }
        return null;
    }

    public int maxSize() {
        return this.f18714a.maxSize();
    }

    public void set(String str, Bitmap bitmap) {
        if (str == null || bitmap == null) {
            throw new NullPointerException("key == null || bitmap == null");
        }
        StringBuilder sb = W.f18670a;
        int allocationByteCount = bitmap.getAllocationByteCount();
        if (allocationByteCount < 0) {
            throw new IllegalStateException("Negative size: " + bitmap);
        }
        int maxSize = maxSize();
        C1340t c1340t = this.f18714a;
        if (allocationByteCount > maxSize) {
            c1340t.remove(str);
        } else {
            c1340t.put(str, new C1341u(allocationByteCount, bitmap));
        }
    }

    public int size() {
        return this.f18714a.size();
    }

    public C1342v(int i2) {
        this.f18714a = new C1340t(i2);
    }
}

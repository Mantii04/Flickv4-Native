package J;

import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public abstract class o {

    /* renamed from: a, reason: collision with root package name */
    public static final p.p f1417a = new p.p(16);

    /* renamed from: b, reason: collision with root package name */
    public static final ThreadPoolExecutor f1418b;

    /* renamed from: c, reason: collision with root package name */
    public static final Object f1419c;

    /* renamed from: d, reason: collision with root package name */
    public static final p.q f1420d;

    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 10000, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), new u());
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        f1418b = threadPoolExecutor;
        f1419c = new Object();
        f1420d = new p.q();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static J.n a(java.lang.String r8, android.content.Context r9, J.i r10, int r11) {
        /*
            p.p r0 = J.o.f1417a
            java.lang.Object r1 = r0.get(r8)
            android.graphics.Typeface r1 = (android.graphics.Typeface) r1
            if (r1 == 0) goto L10
            J.n r8 = new J.n
            r8.<init>(r1)
            return r8
        L10:
            r1 = 0
            J.p r10 = J.h.a(r9, r1, r10)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L68
            int r2 = r10.getStatusCode()
            r3 = 1
            r4 = -3
            if (r2 == 0) goto L27
            int r2 = r10.getStatusCode()
            if (r2 == r3) goto L25
        L23:
            r3 = r4
            goto L47
        L25:
            r3 = -2
            goto L47
        L27:
            J.q[] r2 = r10.getFonts()
            if (r2 == 0) goto L47
            int r5 = r2.length
            if (r5 != 0) goto L31
            goto L47
        L31:
            int r3 = r2.length
            r5 = 0
            r6 = r5
        L34:
            if (r6 >= r3) goto L46
            r7 = r2[r6]
            int r7 = r7.getResultCode()
            if (r7 == 0) goto L43
            if (r7 >= 0) goto L41
            goto L23
        L41:
            r3 = r7
            goto L47
        L43:
            int r6 = r6 + 1
            goto L34
        L46:
            r3 = r5
        L47:
            if (r3 == 0) goto L4f
            J.n r8 = new J.n
            r8.<init>(r3)
            return r8
        L4f:
            J.q[] r10 = r10.getFonts()
            android.graphics.Typeface r9 = D.i.createFromFontInfo(r9, r1, r10, r11)
            if (r9 == 0) goto L62
            r0.put(r8, r9)
            J.n r8 = new J.n
            r8.<init>(r9)
            return r8
        L62:
            J.n r8 = new J.n
            r8.<init>(r4)
            return r8
        L68:
            J.n r8 = new J.n
            r9 = -1
            r8.<init>(r9)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: J.o.a(java.lang.String, android.content.Context, J.i, int):J.n");
    }
}

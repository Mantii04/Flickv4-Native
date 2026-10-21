package e2;

import e6.A;

/* renamed from: e2.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0853a {

    /* renamed from: a, reason: collision with root package name */
    public final String[] f13933a;

    /* renamed from: b, reason: collision with root package name */
    public final A f13934b;

    public C0853a(String[] strArr, A a7) {
        this.f13933a = strArr;
        this.f13934b = a7;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x003a A[Catch: IOException -> 0x0069, TryCatch #0 {IOException -> 0x0069, blocks: (B:2:0x0000, B:3:0x000a, B:5:0x000d, B:7:0x001e, B:9:0x0026, B:13:0x0042, B:15:0x003a, B:16:0x003d, B:27:0x0047, B:29:0x004a, B:32:0x0059), top: B:1:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static e2.C0853a of(java.lang.String... r12) {
        /*
            int r0 = r12.length     // Catch: java.io.IOException -> L69
            okio.ByteString[] r0 = new okio.ByteString[r0]     // Catch: java.io.IOException -> L69
            e6.l r1 = new e6.l     // Catch: java.io.IOException -> L69
            r1.<init>()     // Catch: java.io.IOException -> L69
            r2 = 0
            r3 = r2
        La:
            int r4 = r12.length     // Catch: java.io.IOException -> L69
            if (r3 >= r4) goto L59
            r4 = r12[r3]     // Catch: java.io.IOException -> L69
            java.lang.String[] r5 = com.airbnb.lottie.parser.moshi.a.f9073m     // Catch: java.io.IOException -> L69
            r6 = 34
            r1.writeByte(r6)     // Catch: java.io.IOException -> L69
            int r7 = r4.length()     // Catch: java.io.IOException -> L69
            r8 = r2
            r9 = r8
        L1c:
            if (r8 >= r7) goto L45
            char r10 = r4.charAt(r8)     // Catch: java.io.IOException -> L69
            r11 = 128(0x80, float:1.794E-43)
            if (r10 >= r11) goto L2b
            r10 = r5[r10]     // Catch: java.io.IOException -> L69
            if (r10 != 0) goto L38
            goto L42
        L2b:
            r11 = 8232(0x2028, float:1.1535E-41)
            if (r10 != r11) goto L32
            java.lang.String r10 = "\\u2028"
            goto L38
        L32:
            r11 = 8233(0x2029, float:1.1537E-41)
            if (r10 != r11) goto L42
            java.lang.String r10 = "\\u2029"
        L38:
            if (r9 >= r8) goto L3d
            r1.writeUtf8(r4, r9, r8)     // Catch: java.io.IOException -> L69
        L3d:
            r1.writeUtf8(r10)     // Catch: java.io.IOException -> L69
            int r9 = r8 + 1
        L42:
            int r8 = r8 + 1
            goto L1c
        L45:
            if (r9 >= r7) goto L4a
            r1.writeUtf8(r4, r9, r7)     // Catch: java.io.IOException -> L69
        L4a:
            r1.writeByte(r6)     // Catch: java.io.IOException -> L69
            r1.readByte()     // Catch: java.io.IOException -> L69
            okio.ByteString r4 = r1.readByteString()     // Catch: java.io.IOException -> L69
            r0[r3] = r4     // Catch: java.io.IOException -> L69
            int r3 = r3 + 1
            goto La
        L59:
            e2.a r1 = new e2.a     // Catch: java.io.IOException -> L69
            java.lang.Object r12 = r12.clone()     // Catch: java.io.IOException -> L69
            java.lang.String[] r12 = (java.lang.String[]) r12     // Catch: java.io.IOException -> L69
            e6.A r0 = e6.A.of(r0)     // Catch: java.io.IOException -> L69
            r1.<init>(r12, r0)     // Catch: java.io.IOException -> L69
            return r1
        L69:
            r12 = move-exception
            java.lang.AssertionError r0 = new java.lang.AssertionError
            r0.<init>(r12)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: e2.C0853a.of(java.lang.String[]):e2.a");
    }
}

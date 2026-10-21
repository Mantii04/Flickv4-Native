package m4;

import java.io.File;
import java.io.IOException;
import okhttp3.Cache;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

/* loaded from: classes2.dex */
public final class x implements InterfaceC1338q {

    /* renamed from: a, reason: collision with root package name */
    public final OkHttpClient f18722a;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public x(android.content.Context r3) {
        /*
            r2 = this;
            java.lang.StringBuilder r0 = m4.W.f18670a
            java.io.File r0 = new java.io.File
            android.content.Context r3 = r3.getApplicationContext()
            java.io.File r3 = r3.getCacheDir()
            java.lang.String r1 = "picasso-cache"
            r0.<init>(r3, r1)
            boolean r3 = r0.exists()
            if (r3 != 0) goto L1a
            r0.mkdirs()
        L1a:
            r2.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: m4.x.<init>(android.content.Context):void");
    }

    public Response load(Request request) throws IOException {
        return this.f18722a.newCall(request).execute();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public x(java.io.File r8) {
        /*
            r7 = this;
            java.lang.StringBuilder r0 = m4.W.f18670a
            r0 = 5242880(0x500000, double:2.590327E-317)
            android.os.StatFs r2 = new android.os.StatFs     // Catch: java.lang.IllegalArgumentException -> L1b
            java.lang.String r3 = r8.getAbsolutePath()     // Catch: java.lang.IllegalArgumentException -> L1b
            r2.<init>(r3)     // Catch: java.lang.IllegalArgumentException -> L1b
            long r3 = r2.getBlockCountLong()     // Catch: java.lang.IllegalArgumentException -> L1b
            long r5 = r2.getBlockSizeLong()     // Catch: java.lang.IllegalArgumentException -> L1b
            long r3 = r3 * r5
            r5 = 50
            long r3 = r3 / r5
            goto L1c
        L1b:
            r3 = r0
        L1c:
            r5 = 52428800(0x3200000, double:2.5903269E-316)
            long r2 = java.lang.Math.min(r3, r5)
            long r0 = java.lang.Math.max(r2, r0)
            r7.<init>(r8, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: m4.x.<init>(java.io.File):void");
    }

    public x(File file, long j7) {
        this(new OkHttpClient.Builder().cache(new Cache(file, j7)).build());
    }

    public x(OkHttpClient okHttpClient) {
        this.f18722a = okHttpClient;
        okHttpClient.cache();
    }
}

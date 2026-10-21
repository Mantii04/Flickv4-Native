package w2;

import android.content.Context;
import android.net.Uri;
import l2.p;
import l2.q;
import l2.r;

/* loaded from: classes.dex */
public final class h implements r {

    /* renamed from: b, reason: collision with root package name */
    public static final p f20678b = p.memory("com.bumptech.glide.load.resource.bitmap.Downsampler.Theme");

    /* renamed from: a, reason: collision with root package name */
    public final Context f20679a;

    public h(Context context) {
        this.f20679a = context.getApplicationContext();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0036  */
    @Override // l2.r
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public n2.InterfaceC1391M decode(android.net.Uri r7, int r8, int r9, l2.q r10) {
        /*
            r6 = this;
            java.lang.String r8 = r7.getAuthority()
            boolean r9 = android.text.TextUtils.isEmpty(r8)
            if (r9 != 0) goto Ld2
            android.content.Context r9 = r6.f20679a
            java.lang.String r0 = r9.getPackageName()
            boolean r0 = r8.equals(r0)
            r1 = 0
            if (r0 == 0) goto L19
        L17:
            r0 = r9
            goto L2a
        L19:
            android.content.Context r0 = r9.createPackageContext(r8, r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L1e
            goto L2a
        L1e:
            r0 = move-exception
            java.lang.String r2 = r9.getPackageName()
            boolean r2 = r8.contains(r2)
            if (r2 == 0) goto Lc6
            goto L17
        L2a:
            java.util.List r2 = r7.getPathSegments()
            int r3 = r2.size()
            r4 = 2
            r5 = 1
            if (r3 != r4) goto L6d
            java.util.List r2 = r7.getPathSegments()
            java.lang.String r3 = r7.getAuthority()
            java.lang.Object r1 = r2.get(r1)
            java.lang.String r1 = (java.lang.String) r1
            java.lang.Object r2 = r2.get(r5)
            java.lang.String r2 = (java.lang.String) r2
            android.content.res.Resources r4 = r0.getResources()
            int r3 = r4.getIdentifier(r2, r1, r3)
            if (r3 != 0) goto L5e
            android.content.res.Resources r3 = android.content.res.Resources.getSystem()
            java.lang.String r4 = "android"
            int r3 = r3.getIdentifier(r2, r1, r4)
        L5e:
            if (r3 == 0) goto L61
            goto L83
        L61:
            java.lang.IllegalArgumentException r8 = new java.lang.IllegalArgumentException
            java.lang.String r9 = "Failed to find resource id for: "
            java.lang.String r7 = b.c.k(r9, r7)
            r8.<init>(r7)
            throw r8
        L6d:
            int r2 = r2.size()
            java.lang.String r3 = "Unrecognized Uri format: "
            if (r2 != r5) goto Lbc
            java.util.List r2 = r7.getPathSegments()
            java.lang.Object r1 = r2.get(r1)     // Catch: java.lang.NumberFormatException -> Lb1
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.NumberFormatException -> Lb1
            int r3 = java.lang.Integer.parseInt(r1)     // Catch: java.lang.NumberFormatException -> Lb1
        L83:
            java.lang.Object r7 = G2.r.checkNotNull(r8)
            java.lang.String r7 = (java.lang.String) r7
            java.lang.String r8 = r9.getPackageName()
            boolean r7 = r7.equals(r8)
            r8 = 0
            if (r7 == 0) goto L9d
            l2.p r7 = w2.h.f20678b
            java.lang.Object r7 = r10.get(r7)
            android.content.res.Resources$Theme r7 = (android.content.res.Resources.Theme) r7
            goto L9e
        L9d:
            r7 = r8
        L9e:
            if (r7 != 0) goto La5
            android.graphics.drawable.Drawable r7 = w2.e.getDrawable(r9, r0, r3)
            goto La9
        La5:
            android.graphics.drawable.Drawable r7 = w2.e.getDrawable(r9, r3, r7)
        La9:
            if (r7 == 0) goto Lb0
            w2.g r8 = new w2.g
            r8.<init>(r7)
        Lb0:
            return r8
        Lb1:
            r8 = move-exception
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            java.lang.String r7 = b.c.k(r3, r7)
            r9.<init>(r7, r8)
            throw r9
        Lbc:
            java.lang.IllegalArgumentException r8 = new java.lang.IllegalArgumentException
            java.lang.String r7 = b.c.k(r3, r7)
            r8.<init>(r7)
            throw r8
        Lc6:
            java.lang.IllegalArgumentException r8 = new java.lang.IllegalArgumentException
            java.lang.String r9 = "Failed to obtain context or unrecognized Uri format for: "
            java.lang.String r7 = b.c.k(r9, r7)
            r8.<init>(r7, r0)
            throw r8
        Ld2:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            java.lang.String r10 = "Package name for "
            r9.<init>(r10)
            r9.append(r7)
            java.lang.String r7 = " is null or empty"
            r9.append(r7)
            java.lang.String r7 = r9.toString()
            r8.<init>(r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: w2.h.decode(android.net.Uri, int, int, l2.q):n2.M");
    }

    @Override // l2.r
    public boolean handles(Uri uri, q qVar) {
        String scheme = uri.getScheme();
        return scheme != null && scheme.equals("android.resource");
    }
}

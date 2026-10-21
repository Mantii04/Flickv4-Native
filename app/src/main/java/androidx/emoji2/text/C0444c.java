package androidx.emoji2.text;

import android.os.Build;

/* renamed from: androidx.emoji2.text.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0444c {

    /* renamed from: a, reason: collision with root package name */
    public final AbstractC0445d f5985a;

    public C0444c(AbstractC0445d abstractC0445d) {
        this.f5985a = abstractC0445d == null ? Build.VERSION.SDK_INT >= 28 ? new C0447f() : new C0446e() : abstractC0445d;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.emoji2.text.k create(android.content.Context r9) {
        /*
            r8 = this;
            android.content.pm.PackageManager r0 = r9.getPackageManager()
            java.lang.String r1 = "Package manager required to locate emoji font provider"
            L.h.checkNotNull(r0, r1)
            android.content.Intent r1 = new android.content.Intent
            java.lang.String r2 = "androidx.content.action.LOAD_EMOJI_FONT"
            r1.<init>(r2)
            androidx.emoji2.text.d r2 = r8.f5985a
            r3 = 0
            java.util.List r1 = r2.queryIntentContentProviders(r0, r1, r3)
            java.util.Iterator r1 = r1.iterator()
        L1b:
            boolean r4 = r1.hasNext()
            r5 = 0
            if (r4 == 0) goto L39
            java.lang.Object r4 = r1.next()
            android.content.pm.ResolveInfo r4 = (android.content.pm.ResolveInfo) r4
            android.content.pm.ProviderInfo r4 = r2.getProviderInfo(r4)
            if (r4 == 0) goto L1b
            android.content.pm.ApplicationInfo r6 = r4.applicationInfo
            if (r6 == 0) goto L1b
            int r6 = r6.flags
            r7 = 1
            r6 = r6 & r7
            if (r6 != r7) goto L1b
            goto L3a
        L39:
            r4 = r5
        L3a:
            if (r4 != 0) goto L3e
        L3c:
            r2 = r5
            goto L6d
        L3e:
            java.lang.String r1 = r4.authority     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L66
            java.lang.String r4 = r4.packageName     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L66
            android.content.pm.Signature[] r0 = r2.getSigningSignatures(r0, r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L66
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L66
            r2.<init>()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L66
            int r6 = r0.length     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L66
        L4c:
            if (r3 >= r6) goto L5a
            r7 = r0[r3]     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L66
            byte[] r7 = r7.toByteArray()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L66
            r2.add(r7)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L66
            int r3 = r3 + 1
            goto L4c
        L5a:
            java.util.List r0 = java.util.Collections.singletonList(r2)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L66
            J.i r2 = new J.i     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L66
            java.lang.String r3 = "emojicompat-emoji-font"
            r2.<init>(r1, r4, r3, r0)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L66
            goto L6d
        L66:
            r0 = move-exception
            java.lang.String r1 = "emoji2.text.DefaultEmojiConfig"
            android.util.Log.wtf(r1, r0)
            goto L3c
        L6d:
            if (r2 != 0) goto L70
            goto L75
        L70:
            androidx.emoji2.text.z r5 = new androidx.emoji2.text.z
            r5.<init>(r9, r2)
        L75:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.emoji2.text.C0444c.create(android.content.Context):androidx.emoji2.text.k");
    }
}

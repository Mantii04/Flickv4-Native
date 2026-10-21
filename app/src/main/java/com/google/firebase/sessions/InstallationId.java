package com.google.firebase.sessions;

import kotlin.jvm.internal.g;

/* loaded from: classes2.dex */
public final class InstallationId {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "InstallationId";
    private final String authToken;
    private final String fid;

    public static final class Companion {
        public /* synthetic */ Companion(g gVar) {
            this();
        }

        /* JADX WARN: Can't wrap try/catch for region: R(11:0|1|(2:3|(8:5|6|7|(1:(1:(6:11|12|13|14|15|16)(2:19|20))(2:21|22))(3:30|31|(2:33|28))|23|24|25|26))|38|6|7|(0)(0)|23|24|25|26) */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x0087, code lost:
        
            if (r10 != r1) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x0046, code lost:
        
            r10 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x006a, code lost:
        
            android.util.Log.w(com.google.firebase.sessions.InstallationId.TAG, "Error getting authentication token.", r10);
            r10 = r9;
            r9 = "";
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x0034, code lost:
        
            r10 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x008e, code lost:
        
            android.util.Log.w(com.google.firebase.sessions.InstallationId.TAG, "Error getting Firebase installation id .", r10);
            r9 = r9;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:30:0x0048  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0028  */
        /* JADX WARN: Type inference failed for: r9v13, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r9v16 */
        /* JADX WARN: Type inference failed for: r9v17 */
        /* JADX WARN: Type inference failed for: r9v3 */
        /* JADX WARN: Type inference failed for: r9v4, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r9v5, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r9v8 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object create(com.google.firebase.installations.FirebaseInstallationsApi r9, y5.InterfaceC1944c r10) {
            /*
                r8 = this;
                boolean r0 = r10 instanceof com.google.firebase.sessions.InstallationId$Companion$create$1
                if (r0 == 0) goto L13
                r0 = r10
                com.google.firebase.sessions.InstallationId$Companion$create$1 r0 = (com.google.firebase.sessions.InstallationId$Companion$create$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                com.google.firebase.sessions.InstallationId$Companion$create$1 r0 = new com.google.firebase.sessions.InstallationId$Companion$create$1
                r0.<init>(r8, r10)
            L18:
                java.lang.Object r10 = r0.result
                java.lang.Object r1 = z5.AbstractC2008a.getCOROUTINE_SUSPENDED()
                int r2 = r0.label
                java.lang.String r3 = ""
                java.lang.String r4 = "InstallationId"
                r5 = 2
                r6 = 1
                if (r2 == 0) goto L48
                if (r2 == r6) goto L3e
                if (r2 != r5) goto L36
                java.lang.Object r9 = r0.L$0
                java.lang.String r9 = (java.lang.String) r9
                kotlin.b.throwOnFailure(r10)     // Catch: java.lang.Exception -> L34
                goto L8a
            L34:
                r10 = move-exception
                goto L8e
            L36:
                java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
                r9.<init>(r10)
                throw r9
            L3e:
                java.lang.Object r9 = r0.L$0
                com.google.firebase.installations.FirebaseInstallationsApi r9 = (com.google.firebase.installations.FirebaseInstallationsApi) r9
                kotlin.b.throwOnFailure(r10)     // Catch: java.lang.Exception -> L46
                goto L60
            L46:
                r10 = move-exception
                goto L6a
            L48:
                kotlin.b.throwOnFailure(r10)
                r10 = 0
                com.google.android.gms.tasks.Task r10 = r9.getToken(r10)     // Catch: java.lang.Exception -> L46
                java.lang.String r2 = "firebaseInstallations.getToken(false)"
                kotlin.jvm.internal.j.checkNotNullExpressionValue(r10, r2)     // Catch: java.lang.Exception -> L46
                r0.L$0 = r9     // Catch: java.lang.Exception -> L46
                r0.label = r6     // Catch: java.lang.Exception -> L46
                java.lang.Object r10 = b6.c.await(r10, r0)     // Catch: java.lang.Exception -> L46
                if (r10 != r1) goto L60
                goto L89
            L60:
                com.google.firebase.installations.InstallationTokenResult r10 = (com.google.firebase.installations.InstallationTokenResult) r10     // Catch: java.lang.Exception -> L46
                java.lang.String r10 = r10.getToken()     // Catch: java.lang.Exception -> L46
                r7 = r10
                r10 = r9
                r9 = r7
                goto L71
            L6a:
                java.lang.String r2 = "Error getting authentication token."
                android.util.Log.w(r4, r2, r10)
                r10 = r9
                r9 = r3
            L71:
                java.lang.String r2 = "try {\n          firebase…e.\n          \"\"\n        }"
                kotlin.jvm.internal.j.checkNotNullExpressionValue(r9, r2)
                com.google.android.gms.tasks.Task r10 = r10.getId()     // Catch: java.lang.Exception -> L34
                java.lang.String r2 = "firebaseInstallations.id"
                kotlin.jvm.internal.j.checkNotNullExpressionValue(r10, r2)     // Catch: java.lang.Exception -> L34
                r0.L$0 = r9     // Catch: java.lang.Exception -> L34
                r0.label = r5     // Catch: java.lang.Exception -> L34
                java.lang.Object r10 = b6.c.await(r10, r0)     // Catch: java.lang.Exception -> L34
                if (r10 != r1) goto L8a
            L89:
                return r1
            L8a:
                java.lang.String r10 = (java.lang.String) r10     // Catch: java.lang.Exception -> L34
                r3 = r10
                goto L93
            L8e:
                java.lang.String r0 = "Error getting Firebase installation id ."
                android.util.Log.w(r4, r0, r10)
            L93:
                com.google.firebase.sessions.InstallationId r10 = new com.google.firebase.sessions.InstallationId
                java.lang.String r0 = "fid"
                kotlin.jvm.internal.j.checkNotNullExpressionValue(r3, r0)
                r0 = 0
                r10.<init>(r3, r9, r0)
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.sessions.InstallationId.Companion.create(com.google.firebase.installations.FirebaseInstallationsApi, y5.c):java.lang.Object");
        }

        private Companion() {
        }
    }

    public /* synthetic */ InstallationId(String str, String str2, g gVar) {
        this(str, str2);
    }

    public final String getAuthToken() {
        return this.authToken;
    }

    public final String getFid() {
        return this.fid;
    }

    private InstallationId(String str, String str2) {
        this.fid = str;
        this.authToken = str2;
    }
}

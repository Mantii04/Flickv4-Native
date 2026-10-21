package I1;

import android.content.Context;

/* loaded from: classes.dex */
public final class p {

    /* renamed from: a, reason: collision with root package name */
    public final h f1259a;

    /* renamed from: b, reason: collision with root package name */
    public final c f1260b;

    /* renamed from: c, reason: collision with root package name */
    public final h f1261c;

    /* renamed from: d, reason: collision with root package name */
    public final h f1262d;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public p(Context context, N1.c taskExecutor) {
        this(context, taskExecutor, null, null, null, null, 60, null);
        kotlin.jvm.internal.j.checkNotNullParameter(context, "context");
        kotlin.jvm.internal.j.checkNotNullParameter(taskExecutor, "taskExecutor");
    }

    public final h getBatteryChargingTracker() {
        return this.f1259a;
    }

    public final c getBatteryNotLowTracker() {
        return this.f1260b;
    }

    public final h getNetworkStateTracker() {
        return this.f1261c;
    }

    public final h getStorageNotLowTracker() {
        return this.f1262d;
    }

    public p(Context context, N1.c taskExecutor, h batteryChargingTracker, c batteryNotLowTracker, h networkStateTracker, h storageNotLowTracker) {
        kotlin.jvm.internal.j.checkNotNullParameter(context, "context");
        kotlin.jvm.internal.j.checkNotNullParameter(taskExecutor, "taskExecutor");
        kotlin.jvm.internal.j.checkNotNullParameter(batteryChargingTracker, "batteryChargingTracker");
        kotlin.jvm.internal.j.checkNotNullParameter(batteryNotLowTracker, "batteryNotLowTracker");
        kotlin.jvm.internal.j.checkNotNullParameter(networkStateTracker, "networkStateTracker");
        kotlin.jvm.internal.j.checkNotNullParameter(storageNotLowTracker, "storageNotLowTracker");
        this.f1259a = batteryChargingTracker;
        this.f1260b = batteryNotLowTracker;
        this.f1261c = networkStateTracker;
        this.f1262d = storageNotLowTracker;
    }

    /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
        	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
        	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
        */
    public /* synthetic */ p(android.content.Context r8, N1.c r9, I1.h r10, I1.c r11, I1.h r12, I1.h r13, int r14, kotlin.jvm.internal.g r15) {
        /*
            r7 = this;
            r0 = r14 & 4
            java.lang.String r1 = "context.applicationContext"
            if (r0 == 0) goto L14
            I1.a r0 = new I1.a
            android.content.Context r3 = r8.getApplicationContext()
            kotlin.jvm.internal.j.checkNotNullExpressionValue(r3, r1)
            r0.<init>(r3, r9)
            r3 = r0
            goto L15
        L14:
            r3 = r10
        L15:
            r0 = r14 & 8
            if (r0 == 0) goto L27
            I1.c r0 = new I1.c
            android.content.Context r4 = r8.getApplicationContext()
            kotlin.jvm.internal.j.checkNotNullExpressionValue(r4, r1)
            r0.<init>(r4, r9)
            r4 = r0
            goto L28
        L27:
            r4 = r11
        L28:
            r0 = r14 & 16
            if (r0 == 0) goto L39
            android.content.Context r0 = r8.getApplicationContext()
            kotlin.jvm.internal.j.checkNotNullExpressionValue(r0, r1)
            I1.h r0 = I1.l.NetworkStateTracker(r0, r9)
            r5 = r0
            goto L3a
        L39:
            r5 = r12
        L3a:
            r0 = r14 & 32
            if (r0 == 0) goto L4f
            I1.n r0 = new I1.n
            android.content.Context r6 = r8.getApplicationContext()
            kotlin.jvm.internal.j.checkNotNullExpressionValue(r6, r1)
            r0.<init>(r6, r9)
            r6 = r0
            r1 = r8
            r2 = r9
            r0 = r7
            goto L53
        L4f:
            r6 = r13
            r0 = r7
            r1 = r8
            r2 = r9
        L53:
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: I1.p.<init>(android.content.Context, N1.c, I1.h, I1.c, I1.h, I1.h, int, kotlin.jvm.internal.g):void");
    }
}

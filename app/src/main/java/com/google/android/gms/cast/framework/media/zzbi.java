package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.common.api.Status;
import java.util.Iterator;

/* loaded from: classes.dex */
final class zzbi implements com.google.android.gms.cast.internal.zzas {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzbk f10275a;

    public zzbi(zzbk zzbkVar) {
        this.f10275a = zzbkVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0041 A[LOOP:0: B:16:0x003b->B:18:0x0041, LOOP_END] */
    @Override // com.google.android.gms.cast.internal.zzas
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(java.lang.String r13, long r14, int r16, java.lang.Object r17, long r18, long r20) {
        /*
            r12 = this;
            com.google.android.gms.cast.framework.media.zzbk r1 = r12.f10275a
            com.google.android.gms.cast.framework.media.zzbl r0 = new com.google.android.gms.cast.framework.media.zzbl     // Catch: java.lang.IllegalStateException -> L26
            com.google.android.gms.common.api.Status r2 = new com.google.android.gms.common.api.Status     // Catch: java.lang.IllegalStateException -> L26
            r7 = r16
            r2.<init>(r7)     // Catch: java.lang.IllegalStateException -> L19
            r3 = r17
            boolean r4 = r3 instanceof com.google.android.gms.cast.internal.zzap
            r5 = 1
            if (r5 == r4) goto L13
            r3 = 0
        L13:
            if (r3 == 0) goto L1b
            r4 = r3
            com.google.android.gms.cast.internal.zzap r4 = (com.google.android.gms.cast.internal.zzap) r4     // Catch: java.lang.IllegalStateException -> L19
            goto L1b
        L19:
            r0 = move-exception
            goto L29
        L1b:
            if (r3 == 0) goto L1f
            com.google.android.gms.cast.internal.zzap r3 = (com.google.android.gms.cast.internal.zzap) r3     // Catch: java.lang.IllegalStateException -> L19
        L1f:
            r0.<init>(r2)     // Catch: java.lang.IllegalStateException -> L19
            r1.setResult(r0)     // Catch: java.lang.IllegalStateException -> L19
            goto L33
        L26:
            r0 = move-exception
            r7 = r16
        L29:
            com.google.android.gms.cast.internal.Logger r2 = com.google.android.gms.cast.framework.media.RemoteMediaClient.f10029l
            r3 = 0
            java.lang.Object[] r3 = new java.lang.Object[r3]
            java.lang.String r4 = "Result already set when calling onRequestCompleted"
            r2.e(r0, r4, r3)
        L33:
            com.google.android.gms.cast.framework.media.RemoteMediaClient r0 = r1.f10279c
            java.util.concurrent.CopyOnWriteArrayList r0 = r0.f10038i
            java.util.Iterator r0 = r0.iterator()
        L3b:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L54
            java.lang.Object r1 = r0.next()
            r3 = r1
            com.google.android.gms.cast.framework.media.RemoteMediaClient$Callback r3 = (com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback) r3
            r4 = r13
            r5 = r14
            r8 = r18
            r10 = r20
            r3.zza(r4, r5, r7, r8, r10)
            r7 = r16
            goto L3b
        L54:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.zzbi.zza(java.lang.String, long, int, java.lang.Object, long, long):void");
    }

    @Override // com.google.android.gms.cast.internal.zzas
    public final void zzb(String str, long j7, long j8, long j9) {
        zzbk zzbkVar = this.f10275a;
        try {
            zzbkVar.setResult(new zzbj(new Status(2103)));
        } catch (IllegalStateException e3) {
            RemoteMediaClient.f10029l.e(e3, "Result already set when calling onRequestReplaced", new Object[0]);
        }
        Iterator it = zzbkVar.f10279c.f10038i.iterator();
        while (it.hasNext()) {
            ((RemoteMediaClient.Callback) it.next()).zza(str, j7, 2103, j8, j9);
        }
    }
}

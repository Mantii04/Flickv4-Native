package com.google.firebase.sessions.settings;

import A5.d;
import H5.p;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import org.json.JSONObject;
import u5.C1711j;
import y5.InterfaceC1944c;

@d(c = "com.google.firebase.sessions.settings.RemoteSettings$updateSettings$2$1", f = "RemoteSettings.kt", l = {125, 128, 131, 133, 134, 136}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class RemoteSettings$updateSettings$2$1 extends SuspendLambda implements p {
    /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ RemoteSettings this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteSettings$updateSettings$2$1(RemoteSettings remoteSettings, InterfaceC1944c interfaceC1944c) {
        super(2, interfaceC1944c);
        this.this$0 = remoteSettings;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final InterfaceC1944c create(Object obj, InterfaceC1944c interfaceC1944c) {
        RemoteSettings$updateSettings$2$1 remoteSettings$updateSettings$2$1 = new RemoteSettings$updateSettings$2$1(this.this$0, interfaceC1944c);
        remoteSettings$updateSettings$2$1.L$0 = obj;
        return remoteSettings$updateSettings$2$1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0175, code lost:
    
        if (r14.updateSessionCacheDuration(r0, r13) == r4) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0153, code lost:
    
        if (r14.updateSessionCacheDuration(r0, r13) == r4) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0133, code lost:
    
        if (r14.updateSamplingRate(r1, r13) == r4) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0112, code lost:
    
        if (r14.updateSessionRestartTimeout(r2, r13) == r4) goto L66;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0195 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0196 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            Method dump skipped, instructions count: 426
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.sessions.settings.RemoteSettings$updateSettings$2$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // H5.p
    public final Object invoke(JSONObject jSONObject, InterfaceC1944c interfaceC1944c) {
        return ((RemoteSettings$updateSettings$2$1) create(jSONObject, interfaceC1944c)).invokeSuspend(C1711j.f20329a);
    }
}

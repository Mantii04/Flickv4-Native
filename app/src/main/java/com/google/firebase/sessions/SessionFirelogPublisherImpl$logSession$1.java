package com.google.firebase.sessions;

import A5.d;
import H5.p;
import R5.I;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import u5.C1711j;
import y5.InterfaceC1944c;

@d(c = "com.google.firebase.sessions.SessionFirelogPublisherImpl$logSession$1", f = "SessionFirelogPublisher.kt", l = {63, 64, 70}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class SessionFirelogPublisherImpl$logSession$1 extends SuspendLambda implements p {
    final /* synthetic */ SessionDetails $sessionDetails;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    int label;
    final /* synthetic */ SessionFirelogPublisherImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SessionFirelogPublisherImpl$logSession$1(SessionFirelogPublisherImpl sessionFirelogPublisherImpl, SessionDetails sessionDetails, InterfaceC1944c interfaceC1944c) {
        super(2, interfaceC1944c);
        this.this$0 = sessionFirelogPublisherImpl;
        this.$sessionDetails = sessionDetails;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final InterfaceC1944c create(Object obj, InterfaceC1944c interfaceC1944c) {
        return new SessionFirelogPublisherImpl$logSession$1(this.this$0, this.$sessionDetails, interfaceC1944c);
    }

    @Override // H5.p
    public final Object invoke(I i2, InterfaceC1944c interfaceC1944c) {
        return ((SessionFirelogPublisherImpl$logSession$1) create(i2, interfaceC1944c)).invokeSuspend(C1711j.f20329a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0069, code lost:
    
        if (r9 == r0) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0050, code lost:
    
        if (r9 == r0) goto L23;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.Object r0 = z5.AbstractC2008a.getCOROUTINE_SUSPENDED()
            int r1 = r8.label
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L45
            if (r1 == r4) goto L41
            if (r1 == r3) goto L3d
            if (r1 != r2) goto L35
            java.lang.Object r0 = r8.L$5
            com.google.firebase.sessions.settings.SessionsSettings r0 = (com.google.firebase.sessions.settings.SessionsSettings) r0
            java.lang.Object r1 = r8.L$4
            com.google.firebase.sessions.SessionDetails r1 = (com.google.firebase.sessions.SessionDetails) r1
            java.lang.Object r2 = r8.L$3
            com.google.firebase.FirebaseApp r2 = (com.google.firebase.FirebaseApp) r2
            java.lang.Object r3 = r8.L$2
            com.google.firebase.sessions.SessionEvents r3 = (com.google.firebase.sessions.SessionEvents) r3
            java.lang.Object r4 = r8.L$1
            com.google.firebase.sessions.SessionFirelogPublisherImpl r4 = (com.google.firebase.sessions.SessionFirelogPublisherImpl) r4
            java.lang.Object r5 = r8.L$0
            com.google.firebase.sessions.InstallationId r5 = (com.google.firebase.sessions.InstallationId) r5
            kotlin.b.throwOnFailure(r9)
            r7 = r3
            r3 = r0
            r0 = r7
            r7 = r2
            r2 = r1
            r1 = r7
        L32:
            r7 = r4
            goto L9d
        L35:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L3d:
            kotlin.b.throwOnFailure(r9)
            goto L6c
        L41:
            kotlin.b.throwOnFailure(r9)
            goto L53
        L45:
            kotlin.b.throwOnFailure(r9)
            com.google.firebase.sessions.SessionFirelogPublisherImpl r9 = r8.this$0
            r8.label = r4
            java.lang.Object r9 = com.google.firebase.sessions.SessionFirelogPublisherImpl.access$shouldLogSession(r9, r8)
            if (r9 != r0) goto L53
            goto L95
        L53:
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 == 0) goto Lb0
            com.google.firebase.sessions.InstallationId$Companion r9 = com.google.firebase.sessions.InstallationId.Companion
            com.google.firebase.sessions.SessionFirelogPublisherImpl r1 = r8.this$0
            com.google.firebase.installations.FirebaseInstallationsApi r1 = com.google.firebase.sessions.SessionFirelogPublisherImpl.access$getFirebaseInstallations$p(r1)
            r8.label = r3
            java.lang.Object r9 = r9.create(r1, r8)
            if (r9 != r0) goto L6c
            goto L95
        L6c:
            r5 = r9
            com.google.firebase.sessions.InstallationId r5 = (com.google.firebase.sessions.InstallationId) r5
            com.google.firebase.sessions.SessionFirelogPublisherImpl r4 = r8.this$0
            com.google.firebase.sessions.SessionEvents r3 = com.google.firebase.sessions.SessionEvents.INSTANCE
            com.google.firebase.FirebaseApp r9 = com.google.firebase.sessions.SessionFirelogPublisherImpl.access$getFirebaseApp$p(r4)
            com.google.firebase.sessions.SessionDetails r1 = r8.$sessionDetails
            com.google.firebase.sessions.SessionFirelogPublisherImpl r6 = r8.this$0
            com.google.firebase.sessions.settings.SessionsSettings r6 = com.google.firebase.sessions.SessionFirelogPublisherImpl.access$getSessionSettings$p(r6)
            com.google.firebase.sessions.api.FirebaseSessionsDependencies r7 = com.google.firebase.sessions.api.FirebaseSessionsDependencies.INSTANCE
            r8.L$0 = r5
            r8.L$1 = r4
            r8.L$2 = r3
            r8.L$3 = r9
            r8.L$4 = r1
            r8.L$5 = r6
            r8.label = r2
            java.lang.Object r2 = r7.getRegisteredSubscribers$com_google_firebase_firebase_sessions(r8)
            if (r2 != r0) goto L96
        L95:
            return r0
        L96:
            r0 = r1
            r1 = r9
            r9 = r2
            r2 = r0
            r0 = r3
            r3 = r6
            goto L32
        L9d:
            r4 = r9
            java.util.Map r4 = (java.util.Map) r4
            r9 = r5
            java.lang.String r5 = r9.getFid()
            java.lang.String r6 = r9.getAuthToken()
            com.google.firebase.sessions.SessionEvent r9 = r0.buildSession(r1, r2, r3, r4, r5, r6)
            com.google.firebase.sessions.SessionFirelogPublisherImpl.access$attemptLoggingSessionEvent(r7, r9)
        Lb0:
            u5.j r9 = u5.C1711j.f20329a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.sessions.SessionFirelogPublisherImpl$logSession$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

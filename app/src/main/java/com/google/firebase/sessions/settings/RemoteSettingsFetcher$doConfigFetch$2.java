package com.google.firebase.sessions.settings;

import A5.d;
import H5.p;
import R5.I;
import java.util.Map;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import u5.C1711j;
import y5.InterfaceC1944c;

@d(c = "com.google.firebase.sessions.settings.RemoteSettingsFetcher$doConfigFetch$2", f = "RemoteSettingsFetcher.kt", l = {68, 70, 73}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class RemoteSettingsFetcher$doConfigFetch$2 extends SuspendLambda implements p {
    final /* synthetic */ Map<String, String> $headerOptions;
    final /* synthetic */ p $onFailure;
    final /* synthetic */ p $onSuccess;
    int label;
    final /* synthetic */ RemoteSettingsFetcher this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteSettingsFetcher$doConfigFetch$2(RemoteSettingsFetcher remoteSettingsFetcher, Map<String, String> map, p pVar, p pVar2, InterfaceC1944c interfaceC1944c) {
        super(2, interfaceC1944c);
        this.this$0 = remoteSettingsFetcher;
        this.$headerOptions = map;
        this.$onSuccess = pVar;
        this.$onFailure = pVar2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final InterfaceC1944c create(Object obj, InterfaceC1944c interfaceC1944c) {
        return new RemoteSettingsFetcher$doConfigFetch$2(this.this$0, this.$headerOptions, this.$onSuccess, this.$onFailure, interfaceC1944c);
    }

    @Override // H5.p
    public final Object invoke(I i2, InterfaceC1944c interfaceC1944c) {
        return ((RemoteSettingsFetcher$doConfigFetch$2) create(i2, interfaceC1944c)).invokeSuspend(C1711j.f20329a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00cb, code lost:
    
        if (r8.invoke(r1, r7) == r0) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00e0, code lost:
    
        if (r1.invoke(r3, r7) != r0) goto L37;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = z5.AbstractC2008a.getCOROUTINE_SUSPENDED()
            int r1 = r7.label
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L26
            if (r1 == r4) goto L1e
            if (r1 == r3) goto L1e
            if (r1 != r2) goto L16
            kotlin.b.throwOnFailure(r8)
            goto Le3
        L16:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L1e:
            kotlin.b.throwOnFailure(r8)     // Catch: java.lang.Exception -> L23
            goto Le3
        L23:
            r8 = move-exception
            goto Lce
        L26:
            kotlin.b.throwOnFailure(r8)
            com.google.firebase.sessions.settings.RemoteSettingsFetcher r8 = r7.this$0     // Catch: java.lang.Exception -> L23
            java.net.URL r8 = com.google.firebase.sessions.settings.RemoteSettingsFetcher.access$settingsUrl(r8)     // Catch: java.lang.Exception -> L23
            java.net.URLConnection r8 = r8.openConnection()     // Catch: java.lang.Exception -> L23
            java.lang.String r1 = "null cannot be cast to non-null type javax.net.ssl.HttpsURLConnection"
            kotlin.jvm.internal.j.checkNotNull(r8, r1)     // Catch: java.lang.Exception -> L23
            javax.net.ssl.HttpsURLConnection r8 = (javax.net.ssl.HttpsURLConnection) r8     // Catch: java.lang.Exception -> L23
            java.lang.String r1 = "GET"
            r8.setRequestMethod(r1)     // Catch: java.lang.Exception -> L23
            java.lang.String r1 = "Accept"
            java.lang.String r5 = "application/json"
            r8.setRequestProperty(r1, r5)     // Catch: java.lang.Exception -> L23
            java.util.Map<java.lang.String, java.lang.String> r1 = r7.$headerOptions     // Catch: java.lang.Exception -> L23
            java.util.Set r1 = r1.entrySet()     // Catch: java.lang.Exception -> L23
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Exception -> L23
        L50:
            boolean r5 = r1.hasNext()     // Catch: java.lang.Exception -> L23
            if (r5 == 0) goto L6c
            java.lang.Object r5 = r1.next()     // Catch: java.lang.Exception -> L23
            java.util.Map$Entry r5 = (java.util.Map.Entry) r5     // Catch: java.lang.Exception -> L23
            java.lang.Object r6 = r5.getKey()     // Catch: java.lang.Exception -> L23
            java.lang.String r6 = (java.lang.String) r6     // Catch: java.lang.Exception -> L23
            java.lang.Object r5 = r5.getValue()     // Catch: java.lang.Exception -> L23
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.Exception -> L23
            r8.setRequestProperty(r6, r5)     // Catch: java.lang.Exception -> L23
            goto L50
        L6c:
            int r1 = r8.getResponseCode()     // Catch: java.lang.Exception -> L23
            r5 = 200(0xc8, float:2.8E-43)
            if (r1 != r5) goto Lb2
            java.io.InputStream r8 = r8.getInputStream()     // Catch: java.lang.Exception -> L23
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.lang.Exception -> L23
            java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch: java.lang.Exception -> L23
            r3.<init>(r8)     // Catch: java.lang.Exception -> L23
            r1.<init>(r3)     // Catch: java.lang.Exception -> L23
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L23
            r3.<init>()     // Catch: java.lang.Exception -> L23
            kotlin.jvm.internal.Ref$ObjectRef r5 = new kotlin.jvm.internal.Ref$ObjectRef     // Catch: java.lang.Exception -> L23
            r5.<init>()     // Catch: java.lang.Exception -> L23
        L8c:
            java.lang.String r6 = r1.readLine()     // Catch: java.lang.Exception -> L23
            r5.f17447b = r6     // Catch: java.lang.Exception -> L23
            if (r6 == 0) goto L98
            r3.append(r6)     // Catch: java.lang.Exception -> L23
            goto L8c
        L98:
            r1.close()     // Catch: java.lang.Exception -> L23
            r8.close()     // Catch: java.lang.Exception -> L23
            org.json.JSONObject r8 = new org.json.JSONObject     // Catch: java.lang.Exception -> L23
            java.lang.String r1 = r3.toString()     // Catch: java.lang.Exception -> L23
            r8.<init>(r1)     // Catch: java.lang.Exception -> L23
            H5.p r1 = r7.$onSuccess     // Catch: java.lang.Exception -> L23
            r7.label = r4     // Catch: java.lang.Exception -> L23
            java.lang.Object r8 = r1.invoke(r8, r7)     // Catch: java.lang.Exception -> L23
            if (r8 != r0) goto Le3
            goto Le2
        Lb2:
            H5.p r8 = r7.$onFailure     // Catch: java.lang.Exception -> L23
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L23
            r4.<init>()     // Catch: java.lang.Exception -> L23
            java.lang.String r5 = "Bad response code: "
            r4.append(r5)     // Catch: java.lang.Exception -> L23
            r4.append(r1)     // Catch: java.lang.Exception -> L23
            java.lang.String r1 = r4.toString()     // Catch: java.lang.Exception -> L23
            r7.label = r3     // Catch: java.lang.Exception -> L23
            java.lang.Object r8 = r8.invoke(r1, r7)     // Catch: java.lang.Exception -> L23
            if (r8 != r0) goto Le3
            goto Le2
        Lce:
            H5.p r1 = r7.$onFailure
            java.lang.String r3 = r8.getMessage()
            if (r3 != 0) goto Lda
            java.lang.String r3 = r8.toString()
        Lda:
            r7.label = r2
            java.lang.Object r8 = r1.invoke(r3, r7)
            if (r8 != r0) goto Le3
        Le2:
            return r0
        Le3:
            u5.j r8 = u5.C1711j.f20329a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.sessions.settings.RemoteSettingsFetcher$doConfigFetch$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

package Z2;

import S2.E;
import a3.r;
import b3.InterfaceC0650a;
import com.google.firebase.crashlytics.internal.CrashlyticsNativeComponentDeferredProxy;
import com.google.firebase.crashlytics.internal.model.StaticSessionData;
import com.google.firebase.inject.Deferred;
import com.google.firebase.inject.Provider;

/* loaded from: classes.dex */
public final /* synthetic */ class k implements InterfaceC0650a, Deferred.DeferredHandler {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f4486b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f4487e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f4488f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f4489j;

    public /* synthetic */ k(m mVar, Iterable iterable, E e3, long j7) {
        this.f4487e = mVar;
        this.f4488f = iterable;
        this.f4489j = e3;
        this.f4486b = j7;
    }

    @Override // b3.InterfaceC0650a
    public Object execute() {
        m mVar = (m) this.f4487e;
        r rVar = (r) mVar.f4495c;
        rVar.recordFailure((Iterable) this.f4488f);
        rVar.recordNextCallTime((E) this.f4489j, mVar.f4499g.getTime() + this.f4486b);
        return null;
    }

    @Override // com.google.firebase.inject.Deferred.DeferredHandler
    public void handle(Provider provider) {
        CrashlyticsNativeComponentDeferredProxy.lambda$prepareNativeSession$1((String) this.f4487e, (String) this.f4488f, this.f4486b, (StaticSessionData) this.f4489j, provider);
    }

    public /* synthetic */ k(String str, String str2, long j7, StaticSessionData staticSessionData) {
        this.f4487e = str;
        this.f4488f = str2;
        this.f4486b = j7;
        this.f4489j = staticSessionData;
    }
}

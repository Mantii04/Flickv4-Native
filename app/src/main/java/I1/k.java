package I1;

import B1.t;
import android.content.Context;
import android.net.ConnectivityManager;

/* loaded from: classes.dex */
public final class k extends h {

    /* renamed from: f, reason: collision with root package name */
    public final ConnectivityManager f1254f;

    /* renamed from: g, reason: collision with root package name */
    public final j f1255g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(Context context, N1.c taskExecutor) {
        super(context, taskExecutor);
        kotlin.jvm.internal.j.checkNotNullParameter(context, "context");
        kotlin.jvm.internal.j.checkNotNullParameter(taskExecutor, "taskExecutor");
        Object systemService = getAppContext().getSystemService("connectivity");
        kotlin.jvm.internal.j.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        this.f1254f = (ConnectivityManager) systemService;
        this.f1255g = new j(this);
    }

    @Override // I1.h
    public void startTracking() {
        String str;
        String str2;
        String str3;
        try {
            t tVar = t.get();
            str3 = l.f1256a;
            tVar.debug(str3, "Registering network callback");
            L1.o.registerDefaultNetworkCallbackCompat(this.f1254f, this.f1255g);
        } catch (IllegalArgumentException e3) {
            t tVar2 = t.get();
            str2 = l.f1256a;
            tVar2.error(str2, "Received exception while registering network callback", e3);
        } catch (SecurityException e7) {
            t tVar3 = t.get();
            str = l.f1256a;
            tVar3.error(str, "Received exception while registering network callback", e7);
        }
    }

    @Override // I1.h
    public void stopTracking() {
        String str;
        String str2;
        String str3;
        try {
            t tVar = t.get();
            str3 = l.f1256a;
            tVar.debug(str3, "Unregistering network callback");
            L1.m.unregisterNetworkCallbackCompat(this.f1254f, this.f1255g);
        } catch (IllegalArgumentException e3) {
            t tVar2 = t.get();
            str2 = l.f1256a;
            tVar2.error(str2, "Received exception while unregistering network callback", e3);
        } catch (SecurityException e7) {
            t tVar3 = t.get();
            str = l.f1256a;
            tVar3.error(str, "Received exception while unregistering network callback", e7);
        }
    }

    @Override // I1.h
    public G1.b getInitialState() {
        return l.getActiveNetworkState(this.f1254f);
    }
}

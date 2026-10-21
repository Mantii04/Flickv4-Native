package I1;

import B1.t;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;

/* loaded from: classes.dex */
public final class m extends f {

    /* renamed from: g, reason: collision with root package name */
    public final ConnectivityManager f1257g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(Context context, N1.c taskExecutor) {
        super(context, taskExecutor);
        kotlin.jvm.internal.j.checkNotNullParameter(context, "context");
        kotlin.jvm.internal.j.checkNotNullParameter(taskExecutor, "taskExecutor");
        Object systemService = getAppContext().getSystemService("connectivity");
        kotlin.jvm.internal.j.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        this.f1257g = (ConnectivityManager) systemService;
    }

    @Override // I1.f
    public IntentFilter getIntentFilter() {
        return new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
    }

    @Override // I1.f
    public void onBroadcastReceive(Intent intent) {
        String str;
        kotlin.jvm.internal.j.checkNotNullParameter(intent, "intent");
        if (kotlin.jvm.internal.j.areEqual(intent.getAction(), "android.net.conn.CONNECTIVITY_CHANGE")) {
            t tVar = t.get();
            str = l.f1256a;
            tVar.debug(str, "Network broadcast received");
            setState(l.getActiveNetworkState(this.f1257g));
        }
    }

    @Override // I1.h
    public G1.b getInitialState() {
        return l.getActiveNetworkState(this.f1257g);
    }
}

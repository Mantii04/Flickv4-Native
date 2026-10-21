package I1;

import B1.t;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

/* loaded from: classes.dex */
public abstract class f extends h {

    /* renamed from: f, reason: collision with root package name */
    public final e f1245f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(Context context, N1.c taskExecutor) {
        super(context, taskExecutor);
        kotlin.jvm.internal.j.checkNotNullParameter(context, "context");
        kotlin.jvm.internal.j.checkNotNullParameter(taskExecutor, "taskExecutor");
        this.f1245f = new e(this);
    }

    public abstract IntentFilter getIntentFilter();

    public abstract void onBroadcastReceive(Intent intent);

    @Override // I1.h
    public void startTracking() {
        String str;
        t tVar = t.get();
        str = g.f1246a;
        tVar.debug(str, getClass().getSimpleName().concat(": registering receiver"));
        getAppContext().registerReceiver(this.f1245f, getIntentFilter());
    }

    @Override // I1.h
    public void stopTracking() {
        String str;
        t tVar = t.get();
        str = g.f1246a;
        tVar.debug(str, getClass().getSimpleName().concat(": unregistering receiver"));
        getAppContext().unregisterReceiver(this.f1245f);
    }
}

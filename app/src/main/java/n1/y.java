package n1;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* loaded from: classes.dex */
public final class y implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ z f18865a;

    public y(z zVar) {
        this.f18865a = zVar;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName name, IBinder service) {
        kotlin.jvm.internal.j.checkNotNullParameter(name, "name");
        kotlin.jvm.internal.j.checkNotNullParameter(service, "service");
        InterfaceC1374m asInterface = AbstractBinderC1373l.asInterface(service);
        z zVar = this.f18865a;
        zVar.setService(asInterface);
        zVar.getExecutor().execute(zVar.getSetUpRunnable());
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName name) {
        kotlin.jvm.internal.j.checkNotNullParameter(name, "name");
        z zVar = this.f18865a;
        zVar.getExecutor().execute(zVar.getRemoveObserverRunnable());
        zVar.setService(null);
    }
}

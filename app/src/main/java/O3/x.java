package O3;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* loaded from: classes2.dex */
public final class x implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ y f2423a;

    public x(y yVar) {
        this.f2423a = yVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f2423a.b(iBinder);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        y yVar = this.f2423a;
        yVar.f2426c = null;
        yVar.h();
    }
}

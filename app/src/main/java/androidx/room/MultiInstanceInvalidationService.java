package androidx.room;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.j;
import n1.BinderC1357A;
import n1.InterfaceC1371j;
import n1.RemoteCallbackListC1358B;

/* loaded from: classes.dex */
public final class MultiInstanceInvalidationService extends Service {

    /* renamed from: b, reason: collision with root package name */
    public int f8107b;

    /* renamed from: e, reason: collision with root package name */
    public final LinkedHashMap f8108e = new LinkedHashMap();

    /* renamed from: f, reason: collision with root package name */
    public final RemoteCallbackListC1358B f8109f = new RemoteCallbackListC1358B(this);

    /* renamed from: j, reason: collision with root package name */
    public final BinderC1357A f8110j = new BinderC1357A(this);

    public final RemoteCallbackList<InterfaceC1371j> getCallbackList$room_runtime_release() {
        return this.f8109f;
    }

    public final Map<Integer, String> getClientNames$room_runtime_release() {
        return this.f8108e;
    }

    public final int getMaxClientId$room_runtime_release() {
        return this.f8107b;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        j.checkNotNullParameter(intent, "intent");
        return this.f8110j;
    }

    public final void setMaxClientId$room_runtime_release(int i2) {
        this.f8107b = i2;
    }
}

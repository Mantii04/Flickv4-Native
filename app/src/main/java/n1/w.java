package n1;

import android.os.RemoteException;
import android.util.Log;
import java.util.Set;

/* loaded from: classes.dex */
public final class w extends r {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ z f18863b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(z zVar, String[] strArr) {
        super(strArr);
        this.f18863b = zVar;
    }

    @Override // n1.r
    public boolean isRemote$room_runtime_release() {
        return true;
    }

    @Override // n1.r
    public void onInvalidated(Set<String> tables) {
        kotlin.jvm.internal.j.checkNotNullParameter(tables, "tables");
        z zVar = this.f18863b;
        if (zVar.getStopped().get()) {
            return;
        }
        try {
            InterfaceC1374m service = zVar.getService();
            if (service != null) {
                int clientId = zVar.getClientId();
                Object[] array = tables.toArray(new String[0]);
                kotlin.jvm.internal.j.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                service.broadcastInvalidation(clientId, (String[]) array);
            }
        } catch (RemoteException e3) {
            Log.w("ROOM", "Cannot broadcast invalidation", e3);
        }
    }
}

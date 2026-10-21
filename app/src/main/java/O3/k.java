package O3;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes2.dex */
public abstract class k extends Binder implements l {
    public static l a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.youtube.player.internal.IServiceBroker");
        if (queryLocalInterface != null && (queryLocalInterface instanceof l)) {
            return (l) queryLocalInterface;
        }
        C0211j c0211j = new C0211j();
        c0211j.f2407a = iBinder;
        return c0211j;
    }
}

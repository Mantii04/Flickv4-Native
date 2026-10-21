package O3;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;

/* renamed from: O3.h, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractBinderC0209h extends Binder implements InterfaceC0210i {
    public static InterfaceC0210i a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
        if (queryLocalInterface != null && (queryLocalInterface instanceof InterfaceC0210i)) {
            return (InterfaceC0210i) queryLocalInterface;
        }
        C0208g c0208g = new C0208g();
        c0208g.f2406a = iBinder;
        return c0208g;
    }
}

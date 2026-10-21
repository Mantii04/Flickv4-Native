package O3;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes2.dex */
public abstract class D extends Binder implements E {
    public D() {
        attachInterface(this, "com.google.android.youtube.player.internal.dynamic.IObjectWrapper");
    }

    public static E a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.youtube.player.internal.dynamic.IObjectWrapper");
        if (queryLocalInterface != null && (queryLocalInterface instanceof E)) {
            return (E) queryLocalInterface;
        }
        C c7 = new C();
        c7.f2402a = iBinder;
        return c7;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i7) throws RemoteException {
        if (i2 != 1598968902) {
            return super.onTransact(i2, parcel, parcel2, i7);
        }
        parcel2.writeString("com.google.android.youtube.player.internal.dynamic.IObjectWrapper");
        return true;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }
}

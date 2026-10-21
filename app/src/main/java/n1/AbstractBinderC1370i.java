package n1;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* renamed from: n1.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractBinderC1370i extends Binder implements InterfaceC1371j {
    public AbstractBinderC1370i() {
        attachInterface(this, "androidx.room.IMultiInstanceInvalidationCallback");
    }

    public static InterfaceC1371j asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("androidx.room.IMultiInstanceInvalidationCallback");
        if (queryLocalInterface != null && (queryLocalInterface instanceof InterfaceC1371j)) {
            return (InterfaceC1371j) queryLocalInterface;
        }
        C1369h c1369h = new C1369h();
        c1369h.f18833a = iBinder;
        return c1369h;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i7) throws RemoteException {
        if (i2 >= 1 && i2 <= 16777215) {
            parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationCallback");
        }
        if (i2 == 1598968902) {
            parcel2.writeString("androidx.room.IMultiInstanceInvalidationCallback");
            return true;
        }
        if (i2 != 1) {
            return super.onTransact(i2, parcel, parcel2, i7);
        }
        ((x) this).onInvalidation(parcel.createStringArray());
        return true;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }
}

package n1;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* renamed from: n1.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractBinderC1373l extends Binder implements InterfaceC1374m {
    public AbstractBinderC1373l() {
        attachInterface(this, "androidx.room.IMultiInstanceInvalidationService");
    }

    public static InterfaceC1374m asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("androidx.room.IMultiInstanceInvalidationService");
        if (queryLocalInterface != null && (queryLocalInterface instanceof InterfaceC1374m)) {
            return (InterfaceC1374m) queryLocalInterface;
        }
        C1372k c1372k = new C1372k();
        c1372k.f18834a = iBinder;
        return c1372k;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i7) throws RemoteException {
        if (i2 >= 1 && i2 <= 16777215) {
            parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
        }
        if (i2 == 1598968902) {
            parcel2.writeString("androidx.room.IMultiInstanceInvalidationService");
            return true;
        }
        if (i2 == 1) {
            int registerCallback = ((BinderC1357A) this).registerCallback(AbstractBinderC1370i.asInterface(parcel.readStrongBinder()), parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(registerCallback);
        } else if (i2 == 2) {
            ((BinderC1357A) this).unregisterCallback(AbstractBinderC1370i.asInterface(parcel.readStrongBinder()), parcel.readInt());
            parcel2.writeNoException();
        } else {
            if (i2 != 3) {
                return super.onTransact(i2, parcel, parcel2, i7);
            }
            ((BinderC1357A) this).broadcastInvalidation(parcel.readInt(), parcel.createStringArray());
        }
        return true;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }
}

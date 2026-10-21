package O3;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* renamed from: O3.e, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractBinderC0206e extends Binder implements InterfaceC0207f {
    public AbstractBinderC0206e() {
        attachInterface(this, "com.google.android.youtube.player.internal.IConnectionCallbacks");
    }

    @Override // android.os.Binder
    public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i7) throws RemoteException {
        if (i2 != 1) {
            if (i2 != 1598968902) {
                return super.onTransact(i2, parcel, parcel2, i7);
            }
            parcel2.writeString("com.google.android.youtube.player.internal.IConnectionCallbacks");
            return true;
        }
        parcel.enforceInterface("com.google.android.youtube.player.internal.IConnectionCallbacks");
        ((w) this).a(parcel.readString(), parcel.readStrongBinder());
        parcel2.writeNoException();
        return true;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }
}

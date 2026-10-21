package n1;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* renamed from: n1.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1372k implements InterfaceC1374m {

    /* renamed from: a, reason: collision with root package name */
    public IBinder f18834a;

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f18834a;
    }

    @Override // n1.InterfaceC1374m
    public void broadcastInvalidation(int i2, String[] strArr) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationService");
            obtain.writeInt(i2);
            obtain.writeStringArray(strArr);
            this.f18834a.transact(3, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // n1.InterfaceC1374m
    public int registerCallback(InterfaceC1371j interfaceC1371j, String str) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationService");
            obtain.writeStrongInterface(interfaceC1371j);
            obtain.writeString(str);
            this.f18834a.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readInt();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}

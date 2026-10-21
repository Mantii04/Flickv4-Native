package n1;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* renamed from: n1.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1369h implements InterfaceC1371j {

    /* renamed from: a, reason: collision with root package name */
    public IBinder f18833a;

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f18833a;
    }

    @Override // n1.InterfaceC1371j
    public void onInvalidation(String[] strArr) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationCallback");
            obtain.writeStringArray(strArr);
            this.f18833a.transact(1, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }
}

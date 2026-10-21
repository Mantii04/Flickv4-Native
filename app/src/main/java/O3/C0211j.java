package O3;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* renamed from: O3.j, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0211j implements l {

    /* renamed from: a, reason: collision with root package name */
    public IBinder f2407a;

    public final void a(InterfaceC0207f interfaceC0207f, int i2, String str, String str2, String str3, Bundle bundle) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.youtube.player.internal.IServiceBroker");
            obtain.writeStrongBinder(interfaceC0207f != null ? interfaceC0207f.asBinder() : null);
            obtain.writeInt(i2);
            obtain.writeString(str);
            obtain.writeString(str2);
            obtain.writeString(str3);
            if (bundle != null) {
                obtain.writeInt(1);
                bundle.writeToParcel(obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            this.f2407a.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            obtain2.recycle();
            obtain.recycle();
        } catch (Throwable th) {
            obtain2.recycle();
            obtain.recycle();
            throw th;
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f2407a;
    }
}

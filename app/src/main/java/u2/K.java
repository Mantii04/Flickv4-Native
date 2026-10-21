package u2;

import android.os.Build;
import android.os.ParcelFileDescriptor;
import java.io.IOException;
import n2.InterfaceC1391M;

/* loaded from: classes.dex */
public final class K implements l2.r {

    /* renamed from: a, reason: collision with root package name */
    public final C1696x f20266a;

    public K(C1696x c1696x) {
        this.f20266a = c1696x;
    }

    @Override // l2.r
    public InterfaceC1391M decode(ParcelFileDescriptor parcelFileDescriptor, int i2, int i7, l2.q qVar) throws IOException {
        return this.f20266a.decode(parcelFileDescriptor, i2, i7, qVar);
    }

    @Override // l2.r
    public boolean handles(ParcelFileDescriptor parcelFileDescriptor, l2.q qVar) {
        String str = Build.MANUFACTURER;
        return (!("HUAWEI".equalsIgnoreCase(str) || "HONOR".equalsIgnoreCase(str)) || parcelFileDescriptor.getStatSize() <= 536870912) && this.f20266a.handles(parcelFileDescriptor);
    }
}

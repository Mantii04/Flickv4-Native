package S0;

import P0.y;
import P3.v;
import android.os.Bundle;
import android.os.Parcel;
import androidx.media3.common.util.BundleCollectionUtil;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class a {
    public c decode(long j7, byte[] bArr, int i2, int i7) {
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(bArr, i2, i7);
        obtain.setDataPosition(0);
        Bundle readBundle = obtain.readBundle(Bundle.class.getClassLoader());
        obtain.recycle();
        return new c(BundleCollectionUtil.fromBundleList(new y(21), (ArrayList) v.checkNotNull(readBundle.getParcelableArrayList("c"))), j7, readBundle.getLong("d"));
    }
}

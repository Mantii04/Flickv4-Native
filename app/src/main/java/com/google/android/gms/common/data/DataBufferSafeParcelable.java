package com.google.android.gms.common.data;

import android.os.Parcel;
import androidx.media3.datasource.DataSchemeDataSource;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@KeepForSdk
/* loaded from: classes.dex */
public class DataBufferSafeParcelable<T extends SafeParcelable> extends AbstractDataBuffer<T> {
    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    @KeepForSdk
    public T get(int i2) {
        DataHolder dataHolder = (DataHolder) Preconditions.checkNotNull(null);
        byte[] byteArray = dataHolder.getByteArray(DataSchemeDataSource.SCHEME_DATA, i2, dataHolder.getWindowIndex(i2));
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(byteArray, 0, byteArray.length);
        obtain.setDataPosition(0);
        throw null;
    }
}

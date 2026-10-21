package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class p0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public q0 createFromParcel(Parcel parcel) {
        return new q0(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public q0[] newArray(int i2) {
        return new q0[i2];
    }
}

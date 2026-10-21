package androidx.activity.result;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class k implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public m createFromParcel(Parcel inParcel) {
        kotlin.jvm.internal.j.checkNotNullParameter(inParcel, "inParcel");
        return new m(inParcel);
    }

    @Override // android.os.Parcelable.Creator
    public m[] newArray(int i2) {
        return new m[i2];
    }
}

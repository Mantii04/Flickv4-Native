package S;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class s implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public t createFromParcel(Parcel parcel) {
        t tVar = new t(parcel);
        tVar.f3243b = parcel.readInt();
        return tVar;
    }

    @Override // android.os.Parcelable.Creator
    public t[] newArray(int i2) {
        return new t[i2];
    }
}

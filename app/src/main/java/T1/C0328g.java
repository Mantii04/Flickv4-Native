package T1;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: T1.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0328g implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public C0329h createFromParcel(Parcel parcel) {
        C0329h c0329h = new C0329h(parcel);
        c0329h.f3598b = parcel.readString();
        c0329h.f3600f = parcel.readFloat();
        c0329h.f3601j = parcel.readInt() == 1;
        c0329h.f3602m = parcel.readString();
        c0329h.f3603n = parcel.readInt();
        c0329h.f3604p = parcel.readInt();
        return c0329h;
    }

    @Override // android.os.Parcelable.Creator
    public C0329h[] newArray(int i2) {
        return new C0329h[i2];
    }
}

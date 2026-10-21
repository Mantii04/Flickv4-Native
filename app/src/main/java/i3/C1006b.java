package i3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Locale;

/* renamed from: i3.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1006b implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public C1007c createFromParcel(Parcel parcel) {
        C1007c c1007c = new C1007c();
        c1007c.f16696r = 255;
        c1007c.f16698t = -2;
        c1007c.f16699u = -2;
        c1007c.f16700v = -2;
        c1007c.f16677C = Boolean.TRUE;
        c1007c.f16688b = parcel.readInt();
        c1007c.f16689e = (Integer) parcel.readSerializable();
        c1007c.f16690f = (Integer) parcel.readSerializable();
        c1007c.f16691j = (Integer) parcel.readSerializable();
        c1007c.f16692m = (Integer) parcel.readSerializable();
        c1007c.f16693n = (Integer) parcel.readSerializable();
        c1007c.f16694p = (Integer) parcel.readSerializable();
        c1007c.f16695q = (Integer) parcel.readSerializable();
        c1007c.f16696r = parcel.readInt();
        c1007c.f16697s = parcel.readString();
        c1007c.f16698t = parcel.readInt();
        c1007c.f16699u = parcel.readInt();
        c1007c.f16700v = parcel.readInt();
        c1007c.f16702x = parcel.readString();
        c1007c.f16703y = parcel.readString();
        c1007c.f16704z = parcel.readInt();
        c1007c.f16676B = (Integer) parcel.readSerializable();
        c1007c.f16678D = (Integer) parcel.readSerializable();
        c1007c.f16679E = (Integer) parcel.readSerializable();
        c1007c.f16680F = (Integer) parcel.readSerializable();
        c1007c.f16681G = (Integer) parcel.readSerializable();
        c1007c.f16682H = (Integer) parcel.readSerializable();
        c1007c.f16683I = (Integer) parcel.readSerializable();
        c1007c.f16686L = (Integer) parcel.readSerializable();
        c1007c.f16684J = (Integer) parcel.readSerializable();
        c1007c.f16685K = (Integer) parcel.readSerializable();
        c1007c.f16677C = (Boolean) parcel.readSerializable();
        c1007c.f16701w = (Locale) parcel.readSerializable();
        c1007c.f16687M = (Boolean) parcel.readSerializable();
        return c1007c;
    }

    @Override // android.os.Parcelable.Creator
    public C1007c[] newArray(int i2) {
        return new C1007c[i2];
    }
}

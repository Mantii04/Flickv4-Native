package l;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class o2 extends V.c {
    public static final Parcelable.Creator<o2> CREATOR = new n2();

    /* renamed from: f, reason: collision with root package name */
    public int f17962f;

    /* renamed from: j, reason: collision with root package name */
    public boolean f17963j;

    public o2(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f17962f = parcel.readInt();
        this.f17963j = parcel.readInt() != 0;
    }

    @Override // V.c, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeInt(this.f17962f);
        parcel.writeInt(this.f17963j ? 1 : 0);
    }

    public o2(Parcelable parcelable) {
        super(parcelable);
    }
}

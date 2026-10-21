package H3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.sidesheet.SideSheetBehavior;

/* loaded from: classes2.dex */
public final class h extends V.c {
    public static final Parcelable.Creator<h> CREATOR = new g();

    /* renamed from: f, reason: collision with root package name */
    public final int f1210f;

    public h(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f1210f = parcel.readInt();
    }

    @Override // V.c, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeInt(this.f1210f);
    }

    public h(Parcelable parcelable, SideSheetBehavior<?> sideSheetBehavior) {
        super(parcelable);
        this.f1210f = sideSheetBehavior.f12797q;
    }
}

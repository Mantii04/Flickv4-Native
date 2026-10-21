package l3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* loaded from: classes2.dex */
public final class i extends V.c {
    public static final Parcelable.Creator<i> CREATOR = new h();

    /* renamed from: f, reason: collision with root package name */
    public final int f18140f;

    /* renamed from: j, reason: collision with root package name */
    public final int f18141j;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f18142m;

    /* renamed from: n, reason: collision with root package name */
    public final boolean f18143n;

    /* renamed from: p, reason: collision with root package name */
    public final boolean f18144p;

    public i(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f18140f = parcel.readInt();
        this.f18141j = parcel.readInt();
        this.f18142m = parcel.readInt() == 1;
        this.f18143n = parcel.readInt() == 1;
        this.f18144p = parcel.readInt() == 1;
    }

    @Override // V.c, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeInt(this.f18140f);
        parcel.writeInt(this.f18141j);
        parcel.writeInt(this.f18142m ? 1 : 0);
        parcel.writeInt(this.f18143n ? 1 : 0);
        parcel.writeInt(this.f18144p ? 1 : 0);
    }

    public i(Parcelable parcelable, BottomSheetBehavior<?> bottomSheetBehavior) {
        super(parcelable);
        this.f18140f = bottomSheetBehavior.f12478U;
        this.f18141j = bottomSheetBehavior.f12500m;
        this.f18142m = bottomSheetBehavior.f12489e;
        this.f18143n = bottomSheetBehavior.f12475R;
        this.f18144p = bottomSheetBehavior.f12476S;
    }
}

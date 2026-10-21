package m1;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class L0 implements Parcelable {
    public static final Parcelable.Creator<L0> CREATOR = new K0();

    /* renamed from: b, reason: collision with root package name */
    public int f18298b;

    /* renamed from: e, reason: collision with root package name */
    public int f18299e;

    /* renamed from: f, reason: collision with root package name */
    public int[] f18300f;

    /* renamed from: j, reason: collision with root package name */
    public boolean f18301j;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "FullSpanItem{mPosition=" + this.f18298b + ", mGapDir=" + this.f18299e + ", mHasUnwantedGapAfter=" + this.f18301j + ", mGapPerSpan=" + Arrays.toString(this.f18300f) + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f18298b);
        parcel.writeInt(this.f18299e);
        parcel.writeInt(this.f18301j ? 1 : 0);
        int[] iArr = this.f18300f;
        if (iArr == null || iArr.length <= 0) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(iArr.length);
            parcel.writeIntArray(this.f18300f);
        }
    }
}

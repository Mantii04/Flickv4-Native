package y;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;

/* renamed from: y.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1865i extends V.c {
    public static final Parcelable.Creator<C1865i> CREATOR = new C1864h();

    /* renamed from: f, reason: collision with root package name */
    public SparseArray f20954f;

    public C1865i(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        int readInt = parcel.readInt();
        int[] iArr = new int[readInt];
        parcel.readIntArray(iArr);
        Parcelable[] readParcelableArray = parcel.readParcelableArray(classLoader);
        this.f20954f = new SparseArray(readInt);
        for (int i2 = 0; i2 < readInt; i2++) {
            this.f20954f.append(iArr[i2], readParcelableArray[i2]);
        }
    }

    @Override // V.c, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        SparseArray sparseArray = this.f20954f;
        int size = sparseArray != null ? sparseArray.size() : 0;
        parcel.writeInt(size);
        int[] iArr = new int[size];
        Parcelable[] parcelableArr = new Parcelable[size];
        for (int i7 = 0; i7 < size; i7++) {
            iArr[i7] = this.f20954f.keyAt(i7);
            parcelableArr[i7] = (Parcelable) this.f20954f.valueAt(i7);
        }
        parcel.writeIntArray(iArr);
        parcel.writeParcelableArray(parcelableArr, i2);
    }

    public C1865i(Parcelable parcelable) {
        super(parcelable);
    }
}

package l;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class T1 extends V.c {
    public static final Parcelable.Creator<T1> CREATOR = new S1();

    /* renamed from: f, reason: collision with root package name */
    public boolean f17770f;

    public T1(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f17770f = ((Boolean) parcel.readValue(null)).booleanValue();
    }

    public String toString() {
        return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.f17770f + "}";
    }

    @Override // V.c, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeValue(Boolean.valueOf(this.f17770f));
    }
}

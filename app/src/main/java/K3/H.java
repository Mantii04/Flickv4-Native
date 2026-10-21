package K3;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

/* loaded from: classes2.dex */
public final class H extends V.c {
    public static final Parcelable.Creator<H> CREATOR = new G();

    /* renamed from: f, reason: collision with root package name */
    public CharSequence f1658f;

    /* renamed from: j, reason: collision with root package name */
    public boolean f1659j;

    public H(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f1658f = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f1659j = parcel.readInt() == 1;
    }

    public String toString() {
        return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.f1658f) + "}";
    }

    @Override // V.c, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        TextUtils.writeToParcel(this.f1658f, parcel, i2);
        parcel.writeInt(this.f1659j ? 1 : 0);
    }
}

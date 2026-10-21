package A3;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes2.dex */
public final class j extends V.c {
    public static final Parcelable.Creator<j> CREATOR = new i();

    /* renamed from: f, reason: collision with root package name */
    public Bundle f32f;

    public j(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f32f = parcel.readBundle(classLoader);
    }

    @Override // V.c, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeBundle(this.f32f);
    }

    public j(Parcelable parcelable) {
        super(parcelable);
    }
}

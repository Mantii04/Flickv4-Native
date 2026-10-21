package l;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;

/* renamed from: l.m0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1164m0 extends View.BaseSavedState {
    public static final Parcelable.Creator<C1164m0> CREATOR = new C1161l0();

    /* renamed from: b, reason: collision with root package name */
    public boolean f17949b;

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeByte(this.f17949b ? (byte) 1 : (byte) 0);
    }
}

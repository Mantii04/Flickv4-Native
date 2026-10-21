package v1;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;

/* renamed from: v1.p, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1757p extends View.BaseSavedState {
    public static final Parcelable.Creator<C1757p> CREATOR = new C1756o();

    /* renamed from: b, reason: collision with root package name */
    public final boolean f20622b;

    public C1757p(Parcelable parcelable, boolean z6) {
        super(parcelable);
        this.f20622b = z6;
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeByte(this.f20622b ? (byte) 1 : (byte) 0);
    }

    public C1757p(Parcel parcel) {
        super(parcel);
        this.f20622b = parcel.readByte() != 0;
    }
}

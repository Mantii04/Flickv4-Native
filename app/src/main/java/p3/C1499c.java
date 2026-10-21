package p3;

import A.i;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;

/* renamed from: p3.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1499c extends View.BaseSavedState {
    public static final Parcelable.Creator<C1499c> CREATOR = new C1498b();

    /* renamed from: b, reason: collision with root package name */
    public int f19477b;

    public String toString() {
        StringBuilder sb = new StringBuilder("MaterialCheckBox.SavedState{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" CheckedState=");
        int i2 = this.f19477b;
        return i.o(sb, i2 != 1 ? i2 != 2 ? "unchecked" : "indeterminate" : "checked", "}");
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeValue(Integer.valueOf(this.f19477b));
    }
}

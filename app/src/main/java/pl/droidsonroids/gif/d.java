package pl.droidsonroids.gif;

import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;

/* loaded from: classes2.dex */
public final class d extends View.BaseSavedState {
    public static final Parcelable.Creator<d> CREATOR = new n6.c();

    /* renamed from: b, reason: collision with root package name */
    public final long[][] f19541b;

    public d(Parcelable parcelable, Drawable... drawableArr) {
        super(parcelable);
        this.f19541b = new long[drawableArr.length][];
        for (int i2 = 0; i2 < drawableArr.length; i2++) {
            Drawable drawable = drawableArr[i2];
            if (drawable instanceof c) {
                this.f19541b[i2] = ((c) drawable).f19530p.i();
            } else {
                this.f19541b[i2] = null;
            }
        }
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        long[][] jArr = this.f19541b;
        parcel.writeInt(jArr.length);
        for (long[] jArr2 : jArr) {
            parcel.writeLongArray(jArr2);
        }
    }

    public d(Parcel parcel) {
        super(parcel);
        this.f19541b = new long[parcel.readInt()][];
        int i2 = 0;
        while (true) {
            long[][] jArr = this.f19541b;
            if (i2 >= jArr.length) {
                return;
            }
            jArr[i2] = parcel.createLongArray();
            i2++;
        }
    }
}

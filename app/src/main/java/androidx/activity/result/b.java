package androidx.activity.result;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* renamed from: b, reason: collision with root package name */
    public final int f4901b;

    /* renamed from: e, reason: collision with root package name */
    public final Intent f4902e;

    public b(int i2, Intent intent) {
        this.f4901b = i2;
        this.f4902e = intent;
    }

    public static String resultCodeToString(int i2) {
        return i2 != -1 ? i2 != 0 ? String.valueOf(i2) : "RESULT_CANCELED" : "RESULT_OK";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Intent getData() {
        return this.f4902e;
    }

    public int getResultCode() {
        return this.f4901b;
    }

    public String toString() {
        return "ActivityResult{resultCode=" + resultCodeToString(this.f4901b) + ", data=" + this.f4902e + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f4901b);
        Intent intent = this.f4902e;
        parcel.writeInt(intent == null ? 0 : 1);
        if (intent != null) {
            intent.writeToParcel(parcel, i2);
        }
    }

    public b(Parcel parcel) {
        this.f4901b = parcel.readInt();
        this.f4902e = parcel.readInt() == 0 ? null : (Intent) Intent.CREATOR.createFromParcel(parcel);
    }
}

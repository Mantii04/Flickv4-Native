package androidx.versionedparcelable;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import z1.C1979a;
import z1.C1982d;
import z1.InterfaceC1983e;

@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public class ParcelImpl implements Parcelable {
    public static final Parcelable.Creator<ParcelImpl> CREATOR = new C1979a();

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC1983e f8246b;

    public ParcelImpl(InterfaceC1983e interfaceC1983e) {
        this.f8246b = interfaceC1983e;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public <T extends InterfaceC1983e> T getVersionedParcel() {
        return (T) this.f8246b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        new C1982d(parcel).writeVersionedParcelable(this.f8246b);
    }

    public ParcelImpl(Parcel parcel) {
        this.f8246b = new C1982d(parcel).readVersionedParcelable();
    }
}

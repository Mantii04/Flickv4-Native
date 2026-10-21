package com.google.android.gms.cast.framework.media;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.ObjectWrapper;

@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes.dex */
public class CastMediaOptions extends AbstractSafeParcelable {

    /* renamed from: b, reason: collision with root package name */
    public final String f9932b;

    /* renamed from: e, reason: collision with root package name */
    public final String f9933e;

    /* renamed from: f, reason: collision with root package name */
    public final zzd f9934f;

    /* renamed from: j, reason: collision with root package name */
    public final NotificationOptions f9935j;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f9936m;

    /* renamed from: n, reason: collision with root package name */
    public final boolean f9937n;

    /* renamed from: p, reason: collision with root package name */
    public static final Logger f9931p = new Logger("CastMediaOptions");
    public static final Parcelable.Creator<CastMediaOptions> CREATOR = new zza();

    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public String f9938a;

        /* renamed from: b, reason: collision with root package name */
        public NotificationOptions f9939b = new NotificationOptions.Builder().build();

        /* renamed from: c, reason: collision with root package name */
        public boolean f9940c = true;

        public CastMediaOptions build() {
            return new CastMediaOptions("com.google.android.gms.cast.framework.media.MediaIntentReceiver", this.f9938a, null, this.f9939b, false, this.f9940c);
        }

        public Builder setExpandedControllerActivityClassName(String str) {
            this.f9938a = str;
            return this;
        }

        public Builder setMediaSessionEnabled(boolean z6) {
            this.f9940c = z6;
            return this;
        }

        public Builder setNotificationOptions(NotificationOptions notificationOptions) {
            this.f9939b = notificationOptions;
            return this;
        }
    }

    public CastMediaOptions(String str, String str2, IBinder iBinder, NotificationOptions notificationOptions, boolean z6, boolean z7) {
        zzd zzbVar;
        this.f9932b = str;
        this.f9933e = str2;
        if (iBinder == null) {
            zzbVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.media.IImagePicker");
            zzbVar = queryLocalInterface instanceof zzd ? (zzd) queryLocalInterface : new zzb(iBinder, "com.google.android.gms.cast.framework.media.IImagePicker");
        }
        this.f9934f = zzbVar;
        this.f9935j = notificationOptions;
        this.f9936m = z6;
        this.f9937n = z7;
    }

    public String getExpandedControllerActivityClassName() {
        return this.f9933e;
    }

    public ImagePicker getImagePicker() {
        zzd zzdVar = this.f9934f;
        if (zzdVar == null) {
            return null;
        }
        try {
            return (ImagePicker) ObjectWrapper.unwrap(zzdVar.zzg());
        } catch (RemoteException e3) {
            f9931p.d(e3, "Unable to call %s on %s.", "getWrappedClientObject", "zzd");
            return null;
        }
    }

    public String getMediaIntentReceiverClassName() {
        return this.f9932b;
    }

    public boolean getMediaSessionEnabled() {
        return this.f9937n;
    }

    public NotificationOptions getNotificationOptions() {
        return this.f9935j;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, getMediaIntentReceiverClassName(), false);
        SafeParcelWriter.writeString(parcel, 3, getExpandedControllerActivityClassName(), false);
        zzd zzdVar = this.f9934f;
        SafeParcelWriter.writeIBinder(parcel, 4, zzdVar == null ? null : zzdVar.asBinder(), false);
        SafeParcelWriter.writeParcelable(parcel, 5, getNotificationOptions(), i2, false);
        SafeParcelWriter.writeBoolean(parcel, 6, this.f9936m);
        SafeParcelWriter.writeBoolean(parcel, 7, getMediaSessionEnabled());
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @ShowFirstParty
    public final boolean zza() {
        return this.f9936m;
    }
}

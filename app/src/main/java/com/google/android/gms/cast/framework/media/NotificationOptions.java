package com.google.android.gms.cast.framework.media;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.exoplayer.Renderer;
import com.google.android.gms.cast.framework.media.internal.ResourceProvider;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.cast.zzfq;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes.dex */
public class NotificationOptions extends AbstractSafeParcelable {

    /* renamed from: A, reason: collision with root package name */
    public final int f9978A;

    /* renamed from: B, reason: collision with root package name */
    public final int f9979B;

    /* renamed from: C, reason: collision with root package name */
    public final int f9980C;

    /* renamed from: D, reason: collision with root package name */
    public final int f9981D;

    /* renamed from: E, reason: collision with root package name */
    public final int f9982E;

    /* renamed from: F, reason: collision with root package name */
    public final int f9983F;

    /* renamed from: G, reason: collision with root package name */
    public final int f9984G;

    /* renamed from: H, reason: collision with root package name */
    public final int f9985H;

    /* renamed from: I, reason: collision with root package name */
    public final int f9986I;

    /* renamed from: J, reason: collision with root package name */
    public final int f9987J;

    /* renamed from: K, reason: collision with root package name */
    public final int f9988K;

    /* renamed from: L, reason: collision with root package name */
    public final int f9989L;

    /* renamed from: M, reason: collision with root package name */
    public final int f9990M;

    /* renamed from: N, reason: collision with root package name */
    public final int f9991N;

    /* renamed from: O, reason: collision with root package name */
    public final zzg f9992O;

    /* renamed from: P, reason: collision with root package name */
    public final boolean f9993P;

    /* renamed from: Q, reason: collision with root package name */
    public final boolean f9994Q;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f9995b;

    /* renamed from: e, reason: collision with root package name */
    public final int[] f9996e;

    /* renamed from: f, reason: collision with root package name */
    public final long f9997f;

    /* renamed from: j, reason: collision with root package name */
    public final String f9998j;

    /* renamed from: m, reason: collision with root package name */
    public final int f9999m;

    /* renamed from: n, reason: collision with root package name */
    public final int f10000n;

    /* renamed from: p, reason: collision with root package name */
    public final int f10001p;

    /* renamed from: q, reason: collision with root package name */
    public final int f10002q;

    /* renamed from: r, reason: collision with root package name */
    public final int f10003r;

    /* renamed from: s, reason: collision with root package name */
    public final int f10004s;

    /* renamed from: t, reason: collision with root package name */
    public final int f10005t;

    /* renamed from: u, reason: collision with root package name */
    public final int f10006u;

    /* renamed from: v, reason: collision with root package name */
    public final int f10007v;

    /* renamed from: w, reason: collision with root package name */
    public final int f10008w;

    /* renamed from: x, reason: collision with root package name */
    public final int f10009x;

    /* renamed from: y, reason: collision with root package name */
    public final int f10010y;

    /* renamed from: z, reason: collision with root package name */
    public final int f10011z;

    /* renamed from: R, reason: collision with root package name */
    public static final zzfq f9976R = zzfq.zzk(MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK, MediaIntentReceiver.ACTION_STOP_CASTING);

    /* renamed from: S, reason: collision with root package name */
    public static final int[] f9977S = {0, 1};
    public static final Parcelable.Creator<NotificationOptions> CREATOR = new zzaa();

    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public String f10012a;

        /* renamed from: b, reason: collision with root package name */
        public final zzfq f10013b = NotificationOptions.f9976R;

        /* renamed from: c, reason: collision with root package name */
        public final int[] f10014c = NotificationOptions.f9977S;

        /* renamed from: d, reason: collision with root package name */
        public final int f10015d = a("smallIconDrawableResId");

        /* renamed from: e, reason: collision with root package name */
        public final int f10016e = a("stopLiveStreamDrawableResId");

        /* renamed from: f, reason: collision with root package name */
        public final int f10017f = a("pauseDrawableResId");

        /* renamed from: g, reason: collision with root package name */
        public final int f10018g = a("playDrawableResId");

        /* renamed from: h, reason: collision with root package name */
        public final int f10019h = a("skipNextDrawableResId");

        /* renamed from: i, reason: collision with root package name */
        public final int f10020i = a("skipPrevDrawableResId");

        /* renamed from: j, reason: collision with root package name */
        public final int f10021j = a("forwardDrawableResId");

        /* renamed from: k, reason: collision with root package name */
        public final int f10022k = a("forward10DrawableResId");

        /* renamed from: l, reason: collision with root package name */
        public final int f10023l = a("forward30DrawableResId");

        /* renamed from: m, reason: collision with root package name */
        public final int f10024m = a("rewindDrawableResId");

        /* renamed from: n, reason: collision with root package name */
        public final int f10025n = a("rewind10DrawableResId");

        /* renamed from: o, reason: collision with root package name */
        public final int f10026o = a("rewind30DrawableResId");

        /* renamed from: p, reason: collision with root package name */
        public final int f10027p = a("disconnectDrawableResId");

        /* renamed from: q, reason: collision with root package name */
        public final long f10028q = Renderer.DEFAULT_DURATION_TO_PROGRESS_US;

        public static int a(String str) {
            Integer num;
            try {
                Map map = ResourceProvider.f10047a;
                num = (Integer) ResourceProvider.class.getMethod("findResourceByName", String.class).invoke(null, str);
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            }
            if (num == null) {
                return 0;
            }
            return num.intValue();
        }

        public NotificationOptions build() {
            return new NotificationOptions(this.f10013b, this.f10014c, this.f10028q, this.f10012a, this.f10015d, this.f10016e, this.f10017f, this.f10018g, this.f10019h, this.f10020i, this.f10021j, this.f10022k, this.f10023l, this.f10024m, this.f10025n, this.f10026o, this.f10027p, a("notificationImageSizeDimenResId"), a("castingToDeviceStringResId"), a("stopLiveStreamStringResId"), a("pauseStringResId"), a("playStringResId"), a("skipNextStringResId"), a("skipPrevStringResId"), a("forwardStringResId"), a("forward10StringResId"), a("forward30StringResId"), a("rewindStringResId"), a("rewind10StringResId"), a("rewind30StringResId"), a("disconnectStringResId"), null, false, false);
        }

        public Builder setTargetActivityClassName(String str) {
            this.f10012a = str;
            return this;
        }
    }

    @SafeParcelable.Constructor
    public NotificationOptions(@SafeParcelable.Param List list, @SafeParcelable.Param int[] iArr, @SafeParcelable.Param long j7, @SafeParcelable.Param String str, @SafeParcelable.Param int i2, @SafeParcelable.Param int i7, @SafeParcelable.Param int i8, @SafeParcelable.Param int i9, @SafeParcelable.Param int i10, @SafeParcelable.Param int i11, @SafeParcelable.Param int i12, @SafeParcelable.Param int i13, @SafeParcelable.Param int i14, @SafeParcelable.Param int i15, @SafeParcelable.Param int i16, @SafeParcelable.Param int i17, @SafeParcelable.Param int i18, @SafeParcelable.Param int i19, @SafeParcelable.Param int i20, @SafeParcelable.Param int i21, @SafeParcelable.Param int i22, @SafeParcelable.Param int i23, @SafeParcelable.Param int i24, @SafeParcelable.Param int i25, @SafeParcelable.Param int i26, @SafeParcelable.Param int i27, @SafeParcelable.Param int i28, @SafeParcelable.Param int i29, @SafeParcelable.Param int i30, @SafeParcelable.Param int i31, @SafeParcelable.Param int i32, @SafeParcelable.Param IBinder iBinder, @SafeParcelable.Param boolean z6, @SafeParcelable.Param boolean z7) {
        zzg zzeVar;
        this.f9995b = new ArrayList(list);
        this.f9996e = Arrays.copyOf(iArr, iArr.length);
        this.f9997f = j7;
        this.f9998j = str;
        this.f9999m = i2;
        this.f10000n = i7;
        this.f10001p = i8;
        this.f10002q = i9;
        this.f10003r = i10;
        this.f10004s = i11;
        this.f10005t = i12;
        this.f10006u = i13;
        this.f10007v = i14;
        this.f10008w = i15;
        this.f10009x = i16;
        this.f10010y = i17;
        this.f10011z = i18;
        this.f9978A = i19;
        this.f9979B = i20;
        this.f9980C = i21;
        this.f9981D = i22;
        this.f9982E = i23;
        this.f9983F = i24;
        this.f9984G = i25;
        this.f9985H = i26;
        this.f9986I = i27;
        this.f9987J = i28;
        this.f9988K = i29;
        this.f9989L = i30;
        this.f9990M = i31;
        this.f9991N = i32;
        this.f9993P = z6;
        this.f9994Q = z7;
        if (iBinder == null) {
            zzeVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.media.INotificationActionsProvider");
            zzeVar = queryLocalInterface instanceof zzg ? (zzg) queryLocalInterface : new zze(iBinder, "com.google.android.gms.cast.framework.media.INotificationActionsProvider");
        }
        this.f9992O = zzeVar;
    }

    public List<String> getActions() {
        return this.f9995b;
    }

    public int getCastingToDeviceStringResId() {
        return this.f9979B;
    }

    public int[] getCompatActionIndices() {
        int[] iArr = this.f9996e;
        return Arrays.copyOf(iArr, iArr.length);
    }

    public int getDisconnectDrawableResId() {
        return this.f10011z;
    }

    public int getForward10DrawableResId() {
        return this.f10006u;
    }

    public int getForward30DrawableResId() {
        return this.f10007v;
    }

    public int getForwardDrawableResId() {
        return this.f10005t;
    }

    public int getPauseDrawableResId() {
        return this.f10001p;
    }

    public int getPlayDrawableResId() {
        return this.f10002q;
    }

    public int getRewind10DrawableResId() {
        return this.f10009x;
    }

    public int getRewind30DrawableResId() {
        return this.f10010y;
    }

    public int getRewindDrawableResId() {
        return this.f10008w;
    }

    public int getSkipNextDrawableResId() {
        return this.f10003r;
    }

    public int getSkipPrevDrawableResId() {
        return this.f10004s;
    }

    public long getSkipStepMs() {
        return this.f9997f;
    }

    public int getSmallIconDrawableResId() {
        return this.f9999m;
    }

    public int getStopLiveStreamDrawableResId() {
        return this.f10000n;
    }

    public int getStopLiveStreamTitleResId() {
        return this.f9980C;
    }

    public String getTargetActivityClassName() {
        return this.f9998j;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeStringList(parcel, 2, getActions(), false);
        SafeParcelWriter.writeIntArray(parcel, 3, getCompatActionIndices(), false);
        SafeParcelWriter.writeLong(parcel, 4, getSkipStepMs());
        SafeParcelWriter.writeString(parcel, 5, getTargetActivityClassName(), false);
        SafeParcelWriter.writeInt(parcel, 6, getSmallIconDrawableResId());
        SafeParcelWriter.writeInt(parcel, 7, getStopLiveStreamDrawableResId());
        SafeParcelWriter.writeInt(parcel, 8, getPauseDrawableResId());
        SafeParcelWriter.writeInt(parcel, 9, getPlayDrawableResId());
        SafeParcelWriter.writeInt(parcel, 10, getSkipNextDrawableResId());
        SafeParcelWriter.writeInt(parcel, 11, getSkipPrevDrawableResId());
        SafeParcelWriter.writeInt(parcel, 12, getForwardDrawableResId());
        SafeParcelWriter.writeInt(parcel, 13, getForward10DrawableResId());
        SafeParcelWriter.writeInt(parcel, 14, getForward30DrawableResId());
        SafeParcelWriter.writeInt(parcel, 15, getRewindDrawableResId());
        SafeParcelWriter.writeInt(parcel, 16, getRewind10DrawableResId());
        SafeParcelWriter.writeInt(parcel, 17, getRewind30DrawableResId());
        SafeParcelWriter.writeInt(parcel, 18, getDisconnectDrawableResId());
        SafeParcelWriter.writeInt(parcel, 19, this.f9978A);
        SafeParcelWriter.writeInt(parcel, 20, getCastingToDeviceStringResId());
        SafeParcelWriter.writeInt(parcel, 21, getStopLiveStreamTitleResId());
        SafeParcelWriter.writeInt(parcel, 22, this.f9981D);
        SafeParcelWriter.writeInt(parcel, 23, this.f9982E);
        SafeParcelWriter.writeInt(parcel, 24, this.f9983F);
        SafeParcelWriter.writeInt(parcel, 25, this.f9984G);
        SafeParcelWriter.writeInt(parcel, 26, this.f9985H);
        SafeParcelWriter.writeInt(parcel, 27, this.f9986I);
        SafeParcelWriter.writeInt(parcel, 28, this.f9987J);
        SafeParcelWriter.writeInt(parcel, 29, this.f9988K);
        SafeParcelWriter.writeInt(parcel, 30, this.f9989L);
        SafeParcelWriter.writeInt(parcel, 31, this.f9990M);
        SafeParcelWriter.writeInt(parcel, 32, this.f9991N);
        zzg zzgVar = this.f9992O;
        SafeParcelWriter.writeIBinder(parcel, 33, zzgVar == null ? null : zzgVar.asBinder(), false);
        SafeParcelWriter.writeBoolean(parcel, 34, this.f9993P);
        SafeParcelWriter.writeBoolean(parcel, 35, this.f9994Q);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final int zza() {
        return this.f9991N;
    }

    public final int zzb() {
        return this.f9986I;
    }

    public final int zzc() {
        return this.f9987J;
    }

    public final int zzd() {
        return this.f9985H;
    }

    public final int zze() {
        return this.f9978A;
    }

    public final int zzf() {
        return this.f9981D;
    }

    public final int zzg() {
        return this.f9982E;
    }

    public final int zzh() {
        return this.f9989L;
    }

    public final int zzi() {
        return this.f9990M;
    }

    public final int zzj() {
        return this.f9988K;
    }

    public final int zzk() {
        return this.f9983F;
    }

    public final int zzl() {
        return this.f9984G;
    }

    public final zzg zzm() {
        return this.f9992O;
    }

    public final boolean zzo() {
        return this.f9994Q;
    }

    public final boolean zzp() {
        return this.f9993P;
    }
}

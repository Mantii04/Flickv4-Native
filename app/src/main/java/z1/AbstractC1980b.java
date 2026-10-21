package z1;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.versionedparcelable.ParcelImpl;

/* renamed from: z1.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1980b {
    public static <T extends InterfaceC1983e> T fromParcelable(Parcelable parcelable) {
        if (parcelable instanceof ParcelImpl) {
            return (T) ((ParcelImpl) parcelable).getVersionedParcel();
        }
        throw new IllegalArgumentException("Invalid parcel");
    }

    public static <T extends InterfaceC1983e> T getVersionedParcelable(Bundle bundle, String str) {
        try {
            Bundle bundle2 = (Bundle) bundle.getParcelable(str);
            if (bundle2 == null) {
                return null;
            }
            bundle2.setClassLoader(AbstractC1980b.class.getClassLoader());
            return (T) fromParcelable(bundle2.getParcelable(CmcdData.OBJECT_TYPE_AUDIO_ONLY));
        } catch (RuntimeException unused) {
            return null;
        }
    }

    public static void putVersionedParcelable(Bundle bundle, String str, InterfaceC1983e interfaceC1983e) {
        if (interfaceC1983e == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable(CmcdData.OBJECT_TYPE_AUDIO_ONLY, toParcelable(interfaceC1983e));
        bundle.putParcelable(str, bundle2);
    }

    public static Parcelable toParcelable(InterfaceC1983e interfaceC1983e) {
        return new ParcelImpl(interfaceC1983e);
    }
}

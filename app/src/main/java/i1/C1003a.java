package i1;

import android.os.ext.SdkExtensions;
import androidx.media3.common.PlaybackException;

/* renamed from: i1.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1003a {

    /* renamed from: a, reason: collision with root package name */
    public static final C1003a f16658a = new C1003a();

    public final int getAdServicesVersion() {
        int extensionVersion;
        extensionVersion = SdkExtensions.getExtensionVersion(PlaybackException.CUSTOM_ERROR_CODE_BASE);
        return extensionVersion;
    }
}

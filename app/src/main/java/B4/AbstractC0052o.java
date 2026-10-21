package B4;

import android.app.NotificationChannel;
import android.app.PictureInPictureParams;
import android.media.AudioFocusRequest;

/* renamed from: B4.o, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC0052o {
    public static /* synthetic */ NotificationChannel b(int i2, String str, String str2) {
        return new NotificationChannel(str, str2, i2);
    }

    public static /* synthetic */ PictureInPictureParams.Builder c() {
        return new PictureInPictureParams.Builder();
    }

    public static /* synthetic */ AudioFocusRequest.Builder g(int i2) {
        return new AudioFocusRequest.Builder(i2);
    }

    public static /* bridge */ /* synthetic */ AudioFocusRequest l(Object obj) {
        return (AudioFocusRequest) obj;
    }

    public static /* synthetic */ void p() {
    }
}

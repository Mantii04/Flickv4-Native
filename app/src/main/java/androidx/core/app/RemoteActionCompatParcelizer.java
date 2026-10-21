package androidx.core.app;

import android.app.PendingIntent;
import androidx.core.graphics.drawable.IconCompat;
import z1.AbstractC1981c;

/* loaded from: classes.dex */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(AbstractC1981c abstractC1981c) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        remoteActionCompat.f5536a = (IconCompat) abstractC1981c.readVersionedParcelable(remoteActionCompat.f5536a, 1);
        remoteActionCompat.f5537b = abstractC1981c.readCharSequence(remoteActionCompat.f5537b, 2);
        remoteActionCompat.f5538c = abstractC1981c.readCharSequence(remoteActionCompat.f5538c, 3);
        remoteActionCompat.f5539d = (PendingIntent) abstractC1981c.readParcelable(remoteActionCompat.f5539d, 4);
        remoteActionCompat.f5540e = abstractC1981c.readBoolean(remoteActionCompat.f5540e, 5);
        remoteActionCompat.f5541f = abstractC1981c.readBoolean(remoteActionCompat.f5541f, 6);
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, AbstractC1981c abstractC1981c) {
        abstractC1981c.setSerializationFlags(false, false);
        abstractC1981c.writeVersionedParcelable(remoteActionCompat.f5536a, 1);
        abstractC1981c.writeCharSequence(remoteActionCompat.f5537b, 2);
        abstractC1981c.writeCharSequence(remoteActionCompat.f5538c, 3);
        abstractC1981c.writeParcelable(remoteActionCompat.f5539d, 4);
        abstractC1981c.writeBoolean(remoteActionCompat.f5540e, 5);
        abstractC1981c.writeBoolean(remoteActionCompat.f5541f, 6);
    }
}

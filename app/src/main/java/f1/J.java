package f1;

import android.os.Messenger;

/* loaded from: classes.dex */
public abstract class J {
    public static boolean isValidRemoteMessenger(Messenger messenger) {
        if (messenger != null) {
            try {
                if (messenger.getBinder() != null) {
                    return true;
                }
            } catch (NullPointerException unused) {
            }
        }
        return false;
    }
}

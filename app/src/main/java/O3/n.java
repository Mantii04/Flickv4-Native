package O3;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes2.dex */
public abstract class n extends Binder implements o {
    public static o a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.youtube.player.internal.IYouTubeService");
        if (queryLocalInterface != null && (queryLocalInterface instanceof o)) {
            return (o) queryLocalInterface;
        }
        m mVar = new m();
        mVar.f2408a = iBinder;
        return mVar;
    }
}

package O3;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.youtube.player.YouTubeInitializationResult;

/* loaded from: classes2.dex */
public final class v extends u {

    /* renamed from: b, reason: collision with root package name */
    public final YouTubeInitializationResult f2419b;

    /* renamed from: c, reason: collision with root package name */
    public final IBinder f2420c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ y f2421d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(y yVar, String str, IBinder iBinder) {
        super(yVar, Boolean.TRUE);
        this.f2421d = yVar;
        YouTubeInitializationResult youTubeInitializationResult = YouTubeInitializationResult.f12993f;
        try {
            youTubeInitializationResult = YouTubeInitializationResult.valueOf(str);
        } catch (IllegalArgumentException | NullPointerException unused) {
        }
        this.f2419b = youTubeInitializationResult;
        this.f2420c = iBinder;
    }

    @Override // O3.u
    public final /* synthetic */ void a(Object obj) {
        IBinder iBinder = this.f2420c;
        if (((Boolean) obj) != null) {
            int[] iArr = s.f2416a;
            YouTubeInitializationResult youTubeInitializationResult = this.f2419b;
            int i2 = iArr[youTubeInitializationResult.ordinal()];
            y yVar = this.f2421d;
            if (i2 != 1) {
                yVar.a(youTubeInitializationResult);
                return;
            }
            try {
                if (yVar.b().equals(iBinder.getInterfaceDescriptor())) {
                    yVar.f2426c = yVar.a(iBinder);
                    if (yVar.f2426c != null) {
                        yVar.g();
                        return;
                    }
                }
            } catch (RemoteException unused) {
            }
            yVar.k();
            yVar.a(YouTubeInitializationResult.f12992e);
        }
    }
}

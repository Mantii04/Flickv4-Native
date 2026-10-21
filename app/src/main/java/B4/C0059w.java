package B4;

import android.util.Log;
import flix.com.vision.activities.LinksActivity;
import flix.com.vision.activities.MainActivity;
import flix.com.vision.activities.player.SimpleVideoPlayer;
import flix.com.vision.models.VideoSource;
import io.reactivex.functions.Consumer;

/* renamed from: B4.w, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0059w implements Consumer {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f284b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ VideoSource f285e;

    public /* synthetic */ C0059w(int i2, VideoSource videoSource) {
        this.f284b = i2;
        this.f285e = videoSource;
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        VideoSource videoSource = this.f285e;
        Throwable th = (Throwable) obj;
        switch (this.f284b) {
            case 0:
                boolean z6 = SimpleVideoPlayer.f15629Q0;
                Log.d(MainActivity.class.toString(), videoSource.label, th);
                break;
            default:
                int i2 = LinksActivity.f14702b0;
                Log.d(MainActivity.class.toString(), videoSource.label, th);
                break;
        }
    }
}

package A4;

import android.util.Log;
import flix.com.vision.App;
import flix.com.vision.activities.MainActivity;
import flix.com.vision.activities.leanback.CastMoviesActivityLeanBack;
import flix.com.vision.activities.leanback.SlideshowActivity;
import flix.com.vision.activities.player.SimpleVideoPlayer;
import flix.com.vision.activities.player.WebPlayerActivity;
import flix.com.vision.activities.player.WebPlayerActivitySuper;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final /* synthetic */ class c implements Consumer {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f58b;

    public /* synthetic */ c(int i2) {
        this.f58b = i2;
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        switch (this.f58b) {
            case 0:
                int i2 = CastMoviesActivityLeanBack.f15414H;
                break;
            case 1:
                int i7 = CastMoviesActivityLeanBack.f15414H;
                Log.d("", "");
                break;
            case 2:
                int i8 = SlideshowActivity.f15502v;
                break;
            case 3:
                boolean z6 = SimpleVideoPlayer.f15629Q0;
                Log.e("Trakt", "Failed to remove check-in");
                break;
            case 4:
                boolean z7 = SimpleVideoPlayer.f15629Q0;
                Log.e("Trakt", "Movie sync failed", (Throwable) obj);
                break;
            case 5:
                boolean z8 = SimpleVideoPlayer.f15629Q0;
                Log.e("Trakt", "Pause scrobble failed", (Throwable) obj);
                break;
            case 6:
                boolean z9 = SimpleVideoPlayer.f15629Q0;
                break;
            case 7:
                boolean z10 = SimpleVideoPlayer.f15629Q0;
                Log.e("IntroDB", "Failed to fetch timestamps: " + ((Throwable) obj).getMessage());
                break;
            case 8:
                boolean z11 = SimpleVideoPlayer.f15629Q0;
                Log.e("Trakt", "Failed to remove check-in");
                break;
            case 9:
                int i9 = WebPlayerActivity.f15715O;
                Log.e("Trakt", "Check-in failed", (Throwable) obj);
                break;
            case 10:
                int i10 = WebPlayerActivitySuper.f15747N;
                Log.e("Trakt", "Check-in failed", (Throwable) obj);
                break;
            case 11:
                Log.e("TraktAPI", "Failed to sync episode history", (Throwable) obj);
                break;
            case 12:
                Log.e("Trakt", "Collection sync failed", (Throwable) obj);
                break;
            case 13:
                Log.e("Trakt", "Collection sync failed", (Throwable) obj);
                break;
            case 14:
                Log.e("Trakt", "Failed to sync watched status", (Throwable) obj);
                break;
            case 15:
                Log.e("RapidMovies", "Error fetching release page: " + ((Throwable) obj).getMessage());
                break;
            case 16:
                Log.d(MainActivity.class.toString(), "", (Throwable) obj);
                break;
            case 17:
                Log.d(MainActivity.class.toString(), "", (Throwable) obj);
                break;
            case 18:
                Log.d(MainActivity.class.toString(), "", (Throwable) obj);
                break;
            case 19:
                Log.d(MainActivity.class.toString(), "", (Throwable) obj);
                break;
            case 20:
                Log.d(MainActivity.class.toString(), "", (Throwable) obj);
                break;
            case 21:
                Log.d(MainActivity.class.toString(), "", (Throwable) obj);
                break;
            case 22:
                break;
            case 23:
                ((Throwable) obj).printStackTrace();
                break;
            case 24:
                ((Throwable) obj).printStackTrace();
                break;
            case 25:
                ((Throwable) obj).printStackTrace();
                break;
            case 26:
                ((Throwable) obj).printStackTrace();
                break;
            case 27:
                ((Throwable) obj).printStackTrace();
                break;
            case 28:
                ((Throwable) obj).printStackTrace();
                break;
            default:
                ArrayList arrayList = App.f14430z;
                break;
        }
    }
}

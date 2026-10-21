package y4;

import android.content.res.AssetFileDescriptor;
import android.media.MediaPlayer;
import com.loopj.android.http.AsyncHttpClient;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.SplashScreenActivity;
import java.io.IOException;

/* loaded from: classes2.dex */
public final /* synthetic */ class g1 implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21231b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SplashScreenActivity f21232e;

    public /* synthetic */ g1(SplashScreenActivity splashScreenActivity, int i2) {
        this.f21231b = i2;
        this.f21232e = splashScreenActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        final SplashScreenActivity splashScreenActivity = this.f21232e;
        switch (this.f21231b) {
            case 0:
                int i2 = SplashScreenActivity.f15230j;
                splashScreenActivity.b();
                if (App.f14424I) {
                    try {
                        AssetFileDescriptor openRawResourceFd = splashScreenActivity.getResources().openRawResourceFd(R.raw.flix_sound);
                        if (openRawResourceFd != null) {
                            try {
                                MediaPlayer mediaPlayer = new MediaPlayer();
                                splashScreenActivity.f15233f = mediaPlayer;
                                mediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: y4.h1
                                    @Override // android.media.MediaPlayer.OnCompletionListener
                                    public final void onCompletion(MediaPlayer mediaPlayer2) {
                                        int i7 = SplashScreenActivity.f15230j;
                                        SplashScreenActivity.this.b();
                                    }
                                });
                                splashScreenActivity.f15233f.setDataSource(openRawResourceFd.getFileDescriptor(), openRawResourceFd.getStartOffset(), openRawResourceFd.getLength());
                                splashScreenActivity.f15233f.setLooping(false);
                                splashScreenActivity.f15233f.prepare();
                                splashScreenActivity.f15233f.seekTo(AsyncHttpClient.DEFAULT_RETRY_SLEEP_TIME_MILLIS);
                                splashScreenActivity.f15233f.setVolume(0.4f, 0.4f);
                                splashScreenActivity.f15233f.start();
                            } finally {
                            }
                        } else if (openRawResourceFd == null) {
                            return;
                        }
                        openRawResourceFd.close();
                        return;
                    } catch (IOException e3) {
                        e3.printStackTrace();
                        return;
                    } catch (Exception unused) {
                        return;
                    }
                }
                return;
            case 1:
                splashScreenActivity.f15232e.setVisibility(0);
                return;
            default:
                int i7 = SplashScreenActivity.f15230j;
                splashScreenActivity.a();
                return;
        }
    }
}

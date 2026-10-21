package B4;

import android.app.FragmentManager;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.LinearLayout;
import android.widget.TextClock;
import android.widget.TextView;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.upstream.CmcdData;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.player.SimpleVideoPlayer;
import flix.com.vision.bvp.BetterVideoPlayer;
import flix.com.vision.models.VideoSource;
import flix.com.vision.subtitles.OpenSubtitles;
import h5.AbstractC0995i;

/* renamed from: B4.s, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class RunnableC0055s implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f276b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SimpleVideoPlayer f277e;

    public /* synthetic */ RunnableC0055s(SimpleVideoPlayer simpleVideoPlayer, int i2) {
        this.f276b = i2;
        this.f277e = simpleVideoPlayer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = 0;
        SimpleVideoPlayer simpleVideoPlayer = this.f277e;
        switch (this.f276b) {
            case 0:
                BetterVideoPlayer betterVideoPlayer = simpleVideoPlayer.f15630A;
                if (betterVideoPlayer != null) {
                    betterVideoPlayer.setResizeMode(0);
                    break;
                }
                break;
            case 1:
                boolean z6 = SimpleVideoPlayer.f15629Q0;
                simpleVideoPlayer.getClass();
                if (App.getInstance().f14440s.getBoolean("pref_sub_auto_dl", false)) {
                    simpleVideoPlayer.f15631A0 = false;
                    simpleVideoPlayer.k(false);
                }
                try {
                    App.getInstance().f14440s.edit().putInt(simpleVideoPlayer.f15646I.getMovieId() + OpenSubtitles.Params.Key.SEASON + simpleVideoPlayer.f15681g0 + OpenSubtitles.Params.Key.EPISODE + simpleVideoPlayer.f15681g0, simpleVideoPlayer.f15682h0 - 1).apply();
                    String str = simpleVideoPlayer.f15646I.getMovieId() + CmcdData.STREAMING_FORMAT_SS + simpleVideoPlayer.f15681g0 + "e" + simpleVideoPlayer.f15681g0 + "title";
                    App.getInstance().f14440s.edit().putString(str, "Episode " + simpleVideoPlayer.f15682h0).apply();
                    break;
                } catch (Exception unused) {
                    return;
                }
            case 2:
                if (simpleVideoPlayer.f15663R && !simpleVideoPlayer.f15706v0 && !simpleVideoPlayer.f15697r.isEmpty()) {
                    VideoSource videoSource = (VideoSource) simpleVideoPlayer.f15697r.get(0);
                    simpleVideoPlayer.f15706v0 = true;
                    simpleVideoPlayer.p();
                    simpleVideoPlayer.playLink(videoSource.streamUrl, false);
                    Log.d("AutoPlay", "Fallback: Picking best available link.");
                    break;
                }
                break;
            case 3:
                if (simpleVideoPlayer.f15663R && !simpleVideoPlayer.f15706v0) {
                    simpleVideoPlayer.p();
                    simpleVideoPlayer.f15663R = false;
                    AbstractC0995i.makeToast(simpleVideoPlayer, "No links found for the next episode", true);
                    break;
                }
                break;
            case 4:
                if (!simpleVideoPlayer.f15684j && !simpleVideoPlayer.f15647I0) {
                    simpleVideoPlayer.f15647I0 = true;
                    simpleVideoPlayer.f15677e = false;
                    LinearLayout linearLayout = (LinearLayout) simpleVideoPlayer.findViewById(R.id.rated_layout);
                    View findViewById = simpleVideoPlayer.findViewById(R.id.rated_red_line);
                    TextView textView = (TextView) simpleVideoPlayer.findViewById(R.id.rated_text_view);
                    if (linearLayout != null && findViewById != null && textView != null) {
                        linearLayout.setVisibility(0);
                        linearLayout.setAlpha(1.0f);
                        findViewById.setPivotY(0.0f);
                        findViewById.setScaleY(0.0f);
                        textView.setAlpha(0.0f);
                        textView.setTranslationX(-50.0f);
                        findViewById.animate().scaleY(1.0f).setDuration(800L).setInterpolator(new DecelerateInterpolator()).withEndAction(new A3.d(textView, 3)).start();
                        new Handler().postDelayed(new RunnableC0061y(textView, findViewById, linearLayout, i2), Renderer.DEFAULT_DURATION_TO_PROGRESS_US);
                        break;
                    }
                }
                break;
            case 5:
                if (simpleVideoPlayer.f15710x0 == null) {
                    if (simpleVideoPlayer.f15711y != null) {
                        simpleVideoPlayer.I();
                        simpleVideoPlayer.playLink(simpleVideoPlayer.f15711y, true);
                        break;
                    }
                } else {
                    simpleVideoPlayer.g(simpleVideoPlayer.f15711y);
                    break;
                }
                break;
            case 6:
                if (simpleVideoPlayer.f15710x0 == null) {
                    simpleVideoPlayer.i();
                    break;
                }
                break;
            case 7:
                boolean z7 = SimpleVideoPlayer.f15629Q0;
                simpleVideoPlayer.p();
                AbstractC0995i.makeToast(simpleVideoPlayer, "Error downloading subtitle", true);
                break;
            case 8:
                if (simpleVideoPlayer.f15630A.isPlaying() || !simpleVideoPlayer.f15630A.isPrepared()) {
                    simpleVideoPlayer.f15652L.animate().alpha(0.0f).setDuration(400L).setListener(new G(simpleVideoPlayer));
                    TextClock textClock = simpleVideoPlayer.f15690n;
                    if (textClock != null && simpleVideoPlayer.f15688m) {
                        textClock.animate().alpha(0.0f).setDuration(400L).setListener(new H(simpleVideoPlayer));
                        break;
                    }
                }
                break;
            case 9:
                if (simpleVideoPlayer.f15689m0 > 5000) {
                    FragmentManager fragmentManager = simpleVideoPlayer.getFragmentManager();
                    Q4.d newInstance = Q4.d.newInstance(simpleVideoPlayer, true);
                    newInstance.setTitle("Resume Playback");
                    newInstance.setMessage("Do you want to resume or start over ?");
                    newInstance.setButton1("Resume", new ViewOnClickListenerC0054q(simpleVideoPlayer, 18));
                    newInstance.setButton2("Start Over", new ViewOnClickListenerC0054q(simpleVideoPlayer, 19));
                    try {
                        newInstance.show(fragmentManager, "");
                        break;
                    } catch (Exception e3) {
                        e3.printStackTrace();
                        return;
                    }
                }
                break;
            case 10:
                simpleVideoPlayer.f15650K.setVisibility(8);
                simpleVideoPlayer.f15650K.setImageResource(R.drawable.bvp_action_pause);
                break;
            case 11:
                simpleVideoPlayer.f15650K.setVisibility(8);
                simpleVideoPlayer.f15650K.setImageResource(R.drawable.bvp_action_pause);
                break;
            default:
                simpleVideoPlayer.f15650K.setVisibility(8);
                simpleVideoPlayer.f15650K.setImageResource(R.drawable.bvp_action_pause);
                break;
        }
    }
}

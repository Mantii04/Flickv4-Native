package B4;

import android.os.CountDownTimer;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.media3.exoplayer.upstream.CmcdData;
import flix.com.vision.activities.player.SimpleVideoPlayer;

/* loaded from: classes2.dex */
public final class A extends CountDownTimer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TextView f219a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ProgressBar f220b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SimpleVideoPlayer f221c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public A(SimpleVideoPlayer simpleVideoPlayer, TextView textView, ProgressBar progressBar) {
        super(20000L, 100L);
        this.f221c = simpleVideoPlayer;
        this.f219a = textView;
        this.f220b = progressBar;
    }

    @Override // android.os.CountDownTimer
    public void onFinish() {
        SimpleVideoPlayer simpleVideoPlayer = this.f221c;
        simpleVideoPlayer.q();
        boolean z6 = simpleVideoPlayer.f15663R;
        if (z6 || z6) {
            return;
        }
        simpleVideoPlayer.h();
        int i2 = simpleVideoPlayer.f15682h0;
        simpleVideoPlayer.f15682h0 = i2 + 1;
        simpleVideoPlayer.x(i2);
    }

    @Override // android.os.CountDownTimer
    public void onTick(long j7) {
        int ceil = (int) Math.ceil(j7 / 1000.0d);
        TextView textView = this.f219a;
        if (textView != null) {
            textView.setText("Next Episode in " + ceil + CmcdData.STREAMING_FORMAT_SS);
        }
        ProgressBar progressBar = this.f220b;
        if (progressBar != null) {
            progressBar.setProgress((int) ((j7 / 20000.0f) * 100.0f));
        }
    }
}

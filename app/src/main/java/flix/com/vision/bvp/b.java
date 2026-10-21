package flix.com.vision.bvp;

import R4.e;
import flix.com.vision.R;
import flix.com.vision.events.SystemEvent$ACTION;
import org.greenrobot.eventbus.EventBus;

/* loaded from: classes2.dex */
public final class b extends c {

    /* renamed from: n, reason: collision with root package name */
    public float f15968n = -1.0f;

    /* renamed from: p, reason: collision with root package name */
    public float f15969p = -1.0f;

    /* renamed from: q, reason: collision with root package name */
    public int f15970q;

    /* renamed from: r, reason: collision with root package name */
    public int f15971r;

    /* renamed from: s, reason: collision with root package name */
    public final /* synthetic */ BetterVideoPlayer2 f15972s;

    public b(BetterVideoPlayer2 betterVideoPlayer2) {
        this.f15972s = betterVideoPlayer2;
    }

    @Override // flix.com.vision.bvp.c
    public void onAfterMove() {
        float f3 = this.f15969p;
        BetterVideoPlayer2 betterVideoPlayer2 = this.f15972s;
        if (f3 >= 0.0f && betterVideoPlayer2.f15932b0) {
            betterVideoPlayer2.seekTo((int) f3);
            if (betterVideoPlayer2.f15915I) {
                betterVideoPlayer2.f15954y.start();
            }
        }
        betterVideoPlayer2.f15935e.setVisibility(8);
    }

    @Override // flix.com.vision.bvp.c
    public void onBeforeMove(OnSwipeTouchListener$Direction onSwipeTouchListener$Direction) {
        BetterVideoPlayer2 betterVideoPlayer2 = this.f15972s;
        if (betterVideoPlayer2.f15932b0) {
            if (onSwipeTouchListener$Direction == OnSwipeTouchListener$Direction.f15956b || onSwipeTouchListener$Direction == OnSwipeTouchListener$Direction.f15957e) {
                betterVideoPlayer2.f15915I = betterVideoPlayer2.isPlaying();
                betterVideoPlayer2.f15954y.pause();
                betterVideoPlayer2.f15935e.setVisibility(0);
            } else {
                this.f15971r = betterVideoPlayer2.f15944n.getStreamMaxVolume(3);
                this.f15970q = betterVideoPlayer2.f15944n.getStreamVolume(3);
                betterVideoPlayer2.f15935e.setVisibility(0);
            }
        }
    }

    @Override // flix.com.vision.bvp.c
    public void onClick() {
        this.f15972s.toggleControls();
        e eVar = new e();
        eVar.f3129a = SystemEvent$ACTION.f15992b;
        EventBus.getDefault().post(eVar);
    }

    @Override // flix.com.vision.bvp.c
    public void onMove(OnSwipeTouchListener$Direction onSwipeTouchListener$Direction, float f3) {
        BetterVideoPlayer2 betterVideoPlayer2 = this.f15972s;
        if (betterVideoPlayer2.f15932b0) {
            OnSwipeTouchListener$Direction onSwipeTouchListener$Direction2 = OnSwipeTouchListener$Direction.f15956b;
            if (onSwipeTouchListener$Direction != onSwipeTouchListener$Direction2 && onSwipeTouchListener$Direction != OnSwipeTouchListener$Direction.f15957e) {
                this.f15969p = -1.0f;
                if (this.f15974e < betterVideoPlayer2.f15916J / 2) {
                    betterVideoPlayer2.getClass();
                }
                int i2 = this.f15971r;
                float f7 = (i2 * f3) / (betterVideoPlayer2.f15917K / 2.0f);
                if (onSwipeTouchListener$Direction == OnSwipeTouchListener$Direction.f15959j) {
                    f7 = -f7;
                }
                int i7 = this.f15970q + ((int) f7);
                if (i7 < 0) {
                    i2 = 0;
                } else if (i7 <= i2) {
                    i2 = i7;
                }
                betterVideoPlayer2.f15935e.setText(String.format(betterVideoPlayer2.getResources().getString(R.string.volume), Integer.valueOf(i2)));
                betterVideoPlayer2.f15944n.setStreamVolume(3, i2, 0);
                return;
            }
            if (betterVideoPlayer2.f15954y.getDuration() <= 60) {
                this.f15968n = (betterVideoPlayer2.f15954y.getDuration() * f3) / betterVideoPlayer2.f15916J;
            } else {
                this.f15968n = (f3 * 60000.0f) / betterVideoPlayer2.f15916J;
            }
            if (onSwipeTouchListener$Direction == onSwipeTouchListener$Direction2) {
                this.f15968n *= -1.0f;
            }
            float currentPosition = betterVideoPlayer2.f15954y.getCurrentPosition() + this.f15968n;
            this.f15969p = currentPosition;
            if (currentPosition < 0.0f) {
                this.f15969p = 0.0f;
            } else if (currentPosition > betterVideoPlayer2.f15954y.getDuration()) {
                this.f15969p = betterVideoPlayer2.f15954y.getDuration();
            }
            this.f15968n = this.f15969p - betterVideoPlayer2.f15954y.getCurrentPosition();
            StringBuilder sb = new StringBuilder();
            sb.append(M4.c.getDurationString((long) this.f15969p, false));
            sb.append(" [");
            sb.append(onSwipeTouchListener$Direction == onSwipeTouchListener$Direction2 ? "-" : "+");
            sb.append(M4.c.getDurationString((long) Math.abs(this.f15968n), false));
            sb.append("]");
            betterVideoPlayer2.f15935e.setText(sb.toString());
        }
    }
}

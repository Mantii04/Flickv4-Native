package flix.com.vision.bvp;

import R4.e;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import flix.com.vision.R;
import flix.com.vision.events.SystemEvent$ACTION;
import h1.AbstractC0963d;
import org.greenrobot.eventbus.EventBus;

/* loaded from: classes2.dex */
public final class a extends c {

    /* renamed from: n, reason: collision with root package name */
    public float f15961n = -1.0f;

    /* renamed from: p, reason: collision with root package name */
    public float f15962p = -1.0f;

    /* renamed from: q, reason: collision with root package name */
    public int f15963q;

    /* renamed from: r, reason: collision with root package name */
    public int f15964r;

    /* renamed from: s, reason: collision with root package name */
    public int f15965s;

    /* renamed from: t, reason: collision with root package name */
    public int f15966t;

    /* renamed from: u, reason: collision with root package name */
    public final /* synthetic */ BetterVideoPlayer f15967u;

    public a(BetterVideoPlayer betterVideoPlayer) {
        this.f15967u = betterVideoPlayer;
    }

    @Override // flix.com.vision.bvp.c
    public void onAfterMove() {
        float f3 = this.f15962p;
        BetterVideoPlayer betterVideoPlayer = this.f15967u;
        if (f3 >= 0.0f && betterVideoPlayer.f15874b0) {
            betterVideoPlayer.seekTo((int) f3);
            if (betterVideoPlayer.f15857I) {
                betterVideoPlayer.f15906z.play();
            }
        }
        betterVideoPlayer.f15877e.setVisibility(8);
    }

    @Override // flix.com.vision.bvp.c
    public void onBeforeMove(OnSwipeTouchListener$Direction onSwipeTouchListener$Direction) {
        BetterVideoPlayer betterVideoPlayer = this.f15967u;
        if (betterVideoPlayer.f15874b0) {
            if (onSwipeTouchListener$Direction == OnSwipeTouchListener$Direction.f15956b || onSwipeTouchListener$Direction == OnSwipeTouchListener$Direction.f15957e) {
                betterVideoPlayer.f15857I = betterVideoPlayer.isPlaying();
                betterVideoPlayer.f15906z.pause();
                betterVideoPlayer.f15877e.setVisibility(0);
                return;
            }
            this.f15966t = 100;
            Window window = betterVideoPlayer.f15901u;
            if (window != null) {
                this.f15965s = (int) (window.getAttributes().screenBrightness * 100.0f);
            }
            this.f15964r = betterVideoPlayer.f15890n.getStreamMaxVolume(3);
            this.f15963q = betterVideoPlayer.f15890n.getStreamVolume(3);
            betterVideoPlayer.f15877e.setVisibility(0);
        }
    }

    @Override // flix.com.vision.bvp.c
    public void onClick() {
        BetterVideoPlayer betterVideoPlayer = this.f15967u;
        betterVideoPlayer.toggleControls();
        if (betterVideoPlayer.f15891n0) {
            e eVar = new e();
            eVar.f3129a = SystemEvent$ACTION.f15992b;
            EventBus.getDefault().post(eVar);
        }
    }

    @Override // flix.com.vision.bvp.c
    public void onMove(OnSwipeTouchListener$Direction onSwipeTouchListener$Direction, float f3) {
        BetterVideoPlayer betterVideoPlayer = this.f15967u;
        if (betterVideoPlayer.f15874b0) {
            OnSwipeTouchListener$Direction onSwipeTouchListener$Direction2 = OnSwipeTouchListener$Direction.f15956b;
            if (onSwipeTouchListener$Direction == onSwipeTouchListener$Direction2 || onSwipeTouchListener$Direction == OnSwipeTouchListener$Direction.f15957e) {
                if (betterVideoPlayer.f15906z.getDuration() <= 60) {
                    this.f15961n = (betterVideoPlayer.f15906z.getDuration() * f3) / betterVideoPlayer.f15858J;
                } else {
                    this.f15961n = (f3 * 60000.0f) / betterVideoPlayer.f15858J;
                }
                if (onSwipeTouchListener$Direction == onSwipeTouchListener$Direction2) {
                    this.f15961n *= -1.0f;
                }
                float currentPosition = betterVideoPlayer.f15906z.getCurrentPosition() + this.f15961n;
                this.f15962p = currentPosition;
                if (currentPosition < 0.0f) {
                    this.f15962p = 0.0f;
                } else if (currentPosition > betterVideoPlayer.f15906z.getDuration()) {
                    this.f15962p = betterVideoPlayer.f15906z.getDuration();
                }
                this.f15961n = this.f15962p - betterVideoPlayer.f15906z.getCurrentPosition();
                StringBuilder sb = new StringBuilder();
                sb.append(M4.c.getDurationString((long) this.f15962p, false));
                sb.append(" [");
                sb.append(onSwipeTouchListener$Direction == onSwipeTouchListener$Direction2 ? "-" : "+");
                sb.append(M4.c.getDurationString((long) Math.abs(this.f15961n), false));
                sb.append("]");
                betterVideoPlayer.f15877e.setText(sb.toString());
                return;
            }
            this.f15962p = -1.0f;
            int screenWidth = M4.c.getScreenWidth(betterVideoPlayer.f15900t) / 2;
            float f7 = this.f15974e;
            float f8 = screenWidth;
            OnSwipeTouchListener$Direction onSwipeTouchListener$Direction3 = OnSwipeTouchListener$Direction.f15959j;
            if (f7 > f8) {
                if (f7 >= betterVideoPlayer.f15858J / 2) {
                    int i2 = this.f15964r;
                    float f9 = (i2 * f3) / (betterVideoPlayer.f15859K / 2.0f);
                    if (onSwipeTouchListener$Direction == onSwipeTouchListener$Direction3) {
                        f9 = -f9;
                    }
                    int i7 = this.f15963q + ((int) f9);
                    if (i7 < 0) {
                        i2 = 0;
                    } else if (i7 <= i2) {
                        i2 = i7;
                    }
                    betterVideoPlayer.f15877e.setText(String.format(betterVideoPlayer.getResources().getString(R.string.volume), Integer.valueOf(i2)));
                    betterVideoPlayer.f15890n.setStreamVolume(3, i2, 0);
                    return;
                }
                return;
            }
            if (f7 >= betterVideoPlayer.f15858J / 2 || betterVideoPlayer.f15901u == null) {
                return;
            }
            int i8 = this.f15966t;
            float f10 = (i8 * f3) / (betterVideoPlayer.f15859K / 2.0f);
            if (onSwipeTouchListener$Direction == onSwipeTouchListener$Direction3) {
                f10 = -f10;
            }
            int i9 = this.f15965s + ((int) f10);
            if (i9 < 0) {
                i8 = 0;
            } else if (i9 <= i8) {
                i8 = i9;
            }
            betterVideoPlayer.f15877e.setText(String.format(betterVideoPlayer.getResources().getString(R.string.brightness), Integer.valueOf(i8)));
            WindowManager.LayoutParams attributes = betterVideoPlayer.f15901u.getAttributes();
            attributes.screenBrightness = i8 / 100.0f;
            betterVideoPlayer.f15901u.setAttributes(attributes);
            AbstractC0963d.getDefaultSharedPreferences(betterVideoPlayer.getContext()).edit().putInt("BETTER_VIDEO_PLAYER_BRIGHTNESS", i8).apply();
        }
    }

    @Override // flix.com.vision.bvp.c, android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        this.f15967u.f15883i0.onTouchEvent(motionEvent);
        return super.onTouch(view, motionEvent);
    }
}

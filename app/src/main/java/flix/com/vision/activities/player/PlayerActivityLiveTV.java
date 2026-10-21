package flix.com.vision.activities.player;

import B4.AbstractC0050m;
import B4.RunnableC0044g;
import B4.RunnableC0047j;
import B4.RunnableC0048k;
import B4.RunnableC0049l;
import C4.C0096u;
import K4.b;
import R4.e;
import T4.j;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.RelativeLayout;
import android.widget.Toast;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cz.msebera.android.httpclient.HttpStatus;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.base.a;
import flix.com.vision.bvp.BetterVideoPlayer;
import flix.com.vision.models.ChannelTv;
import flix.com.vision.models.PlayerEvent;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes2.dex */
public class PlayerActivityLiveTV extends a implements b {

    /* renamed from: B, reason: collision with root package name */
    public static final /* synthetic */ int f15608B = 0;

    /* renamed from: b, reason: collision with root package name */
    public C0096u f15610b;

    /* renamed from: f, reason: collision with root package name */
    public RelativeLayout f15612f;

    /* renamed from: j, reason: collision with root package name */
    public RecyclerView f15613j;

    /* renamed from: m, reason: collision with root package name */
    public Animation f15614m;

    /* renamed from: n, reason: collision with root package name */
    public Animation f15615n;

    /* renamed from: p, reason: collision with root package name */
    public Animation f15616p;

    /* renamed from: q, reason: collision with root package name */
    public Animation f15617q;

    /* renamed from: r, reason: collision with root package name */
    public Animation f15618r;

    /* renamed from: t, reason: collision with root package name */
    public View f15620t;

    /* renamed from: u, reason: collision with root package name */
    public BetterVideoPlayer f15621u;

    /* renamed from: y, reason: collision with root package name */
    public Animation f15625y;

    /* renamed from: z, reason: collision with root package name */
    public RunnableC0044g f15626z;

    /* renamed from: e, reason: collision with root package name */
    public final int f15611e = 1919;

    /* renamed from: s, reason: collision with root package name */
    public int f15619s = 0;

    /* renamed from: v, reason: collision with root package name */
    public final j f15622v = new j();

    /* renamed from: w, reason: collision with root package name */
    public final Handler f15623w = new Handler();

    /* renamed from: x, reason: collision with root package name */
    public String f15624x = "-1";

    /* renamed from: A, reason: collision with root package name */
    public boolean f15609A = false;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class RESULT_EVENT_PLAYER_CTIVITY_LIVE {

        /* renamed from: b, reason: collision with root package name */
        public static final RESULT_EVENT_PLAYER_CTIVITY_LIVE f15627b;

        /* renamed from: e, reason: collision with root package name */
        public static final /* synthetic */ RESULT_EVENT_PLAYER_CTIVITY_LIVE[] f15628e;

        /* JADX INFO: Fake field, exist only in values array */
        RESULT_EVENT_PLAYER_CTIVITY_LIVE EF2;

        static {
            RESULT_EVENT_PLAYER_CTIVITY_LIVE result_event_player_ctivity_live = new RESULT_EVENT_PLAYER_CTIVITY_LIVE("SHOW", 0);
            RESULT_EVENT_PLAYER_CTIVITY_LIVE result_event_player_ctivity_live2 = new RESULT_EVENT_PLAYER_CTIVITY_LIVE("HIDE", 1);
            f15627b = result_event_player_ctivity_live2;
            f15628e = new RESULT_EVENT_PLAYER_CTIVITY_LIVE[]{result_event_player_ctivity_live, result_event_player_ctivity_live2};
        }

        public static RESULT_EVENT_PLAYER_CTIVITY_LIVE valueOf(String str) {
            return (RESULT_EVENT_PLAYER_CTIVITY_LIVE) Enum.valueOf(RESULT_EVENT_PLAYER_CTIVITY_LIVE.class, str);
        }

        public static RESULT_EVENT_PLAYER_CTIVITY_LIVE[] values() {
            return (RESULT_EVENT_PLAYER_CTIVITY_LIVE[]) f15628e.clone();
        }
    }

    public final void e() {
        this.f15612f.setVisibility(0);
        this.f15612f.startAnimation(this.f15615n);
        this.f15613j.requestFocus();
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i7, Intent intent) {
        super.onActivityResult(i2, i7, intent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f15612f.getVisibility() == 0) {
            this.f15612f.startAnimation(this.f15616p);
            this.f15612f.setVisibility(8);
        } else {
            if (this.f15621u.isControlsShown()) {
                this.f15621u.hideControls();
                return;
            }
            this.f15621u.showControls();
            try {
                this.f15621u.stop();
                this.f15621u.release();
            } catch (Exception unused) {
            }
            super.onBackPressed();
            finish();
        }
    }

    @Override // K4.b
    public void onBuffering(int i2) {
    }

    @Override // K4.b
    public void onCompletion(BetterVideoPlayer betterVideoPlayer) {
        if (this.f15619s >= App.getInstance().f14435m.size()) {
            return;
        }
        String str = ((ChannelTv) App.getInstance().f14435m.get(this.f15619s)).url;
        betterVideoPlayer.reset();
        betterVideoPlayer.setSource(Uri.parse(str));
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_exo_media);
        String stringExtra = getIntent().getStringExtra("type");
        this.f15624x = stringExtra;
        if (stringExtra == null) {
            this.f15624x = "1";
        }
        this.f15609A = (App.getInstance().f14440s.getInt("player_index", 0) == 0 || this.f15624x.equalsIgnoreCase("3")) ? false : true;
        Toast.makeText(getApplicationContext(), "", 0);
        EventBus.getDefault().register(this);
        this.f15613j = (RecyclerView) findViewById(R.id.listview);
        BetterVideoPlayer betterVideoPlayer = (BetterVideoPlayer) findViewById(R.id.video_view);
        this.f15621u = betterVideoPlayer;
        betterVideoPlayer.setAutoPlay(true);
        this.f15621u.setHideControlsOnPlay(true);
        this.f15621u.setHideControlsDuration(5000);
        this.f15621u.setCallback(this);
        this.f15621u.enableSwipeGestures(getWindow());
        this.f15621u.setTVMode(true);
        this.f15621u.getToolbar().inflateMenu(R.menu.menu_live_tv);
        this.f15621u.getToolbar().getMenu();
        this.f15621u.getToolbar().setOnMenuItemClickListener(new A0.a(this, 3));
        if (App.f14424I) {
            this.f15621u.getToolbar().setVisibility(8);
        }
        this.f15613j.setLayoutManager(new LinearLayoutManager(this));
        C0096u c0096u = new C0096u(getBaseContext(), App.getInstance().f14435m, this, this.f15611e, HttpStatus.SC_OK);
        this.f15610b = c0096u;
        this.f15613j.setAdapter(c0096u);
        this.f15610b.notifyDataSetChanged();
        this.f15612f = (RelativeLayout) findViewById(R.id.channels_rel);
        View decorView = getWindow().getDecorView();
        this.f15620t = decorView;
        decorView.setSystemUiVisibility(AnalyticsListener.EVENT_PLAYER_RELEASED);
        this.f15625y = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.slide_down);
        this.f15614m = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.slide_up);
        this.f15618r = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.slide_down2);
        this.f15617q = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.slide_up2);
        this.f15615n = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.slide_left);
        this.f15616p = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.slide_right);
        int intExtra = getIntent().getIntExtra("actual_index", 0);
        this.f15619s = intExtra;
        if (intExtra < 0 || intExtra >= App.getInstance().f14435m.size()) {
            this.f15619s = 0;
        }
        ChannelTv channelTv = (ChannelTv) getIntent().getParcelableExtra("channel");
        if (channelTv != null) {
            playChannel(channelTv, false);
        } else {
            playChannel((ChannelTv) App.getInstance().f14435m.get(this.f15619s), false);
        }
        this.f15625y = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.slide_down);
    }

    @Override // flix.com.vision.activities.base.a, e.AbstractActivityC0842v, androidx.fragment.app.H, android.app.Activity
    public void onDestroy() {
        if (this.f15609A) {
            super.onDestroy();
        } else {
            super.onDestroy();
        }
    }

    @Override // K4.b
    public void onError(BetterVideoPlayer betterVideoPlayer, Exception exc) {
        if (App.getInstance().f14435m.size() == 0) {
            return;
        }
        if (this.f15619s >= App.getInstance().f14435m.size() || this.f15619s < 0) {
            this.f15619s = 0;
        }
        playChannel((ChannelTv) App.getInstance().f14435m.get(this.f15619s), false);
    }

    @Override // e.AbstractActivityC0842v, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (this.f15612f.getVisibility() != 0) {
            this.f15621u.showControls();
            this.f15621u.getToolbar().requestFocus();
        }
        int directionPressed = this.f15622v.getDirectionPressed(keyEvent);
        if (directionPressed != 2) {
            if (directionPressed == 4) {
                if (this.f15612f.getVisibility() == 0) {
                    return false;
                }
                this.f15621u.toggleControls();
                return true;
            }
            if (directionPressed == 5) {
                try {
                    if (this.f15621u.isPlaying()) {
                        this.f15621u.pause();
                    } else if (this.f15621u.isPrepared()) {
                        this.f15621u.start();
                    }
                    this.f15621u.showControls();
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
                return true;
            }
            if (directionPressed == 10) {
                if (this.f15612f.getVisibility() == 0) {
                    this.f15612f.startAnimation(this.f15616p);
                    this.f15612f.setVisibility(8);
                    return true;
                }
                if (this.f15621u.isControlsShown()) {
                    this.f15621u.hideControls();
                    return true;
                }
                this.f15621u.showControls();
                try {
                    this.f15621u.stop();
                    this.f15621u.release();
                } catch (Exception unused) {
                }
                super.onBackPressed();
                finish();
                return true;
            }
            if (directionPressed == 11) {
                if (this.f15612f.getVisibility() == 0) {
                    this.f15612f.startAnimation(this.f15616p);
                    this.f15612f.setVisibility(8);
                } else {
                    try {
                        this.f15613j.scrollToPosition(this.f15619s);
                    } catch (Exception e7) {
                        e7.printStackTrace();
                    }
                    e();
                }
                return true;
            }
        } else if (this.f15612f.getVisibility() == 0) {
            this.f15612f.startAnimation(this.f15616p);
            this.f15612f.setVisibility(8);
        } else if (this.f15612f.getVisibility() == 8) {
            e();
        }
        return false;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent() {
        if (this.f15621u.isControlsShown()) {
            this.f15621u.hideControls();
        }
    }

    @Override // K4.b
    public void onPaused(BetterVideoPlayer betterVideoPlayer) {
        try {
            RunnableC0044g runnableC0044g = this.f15626z;
            if (runnableC0044g != null) {
                this.f15623w.removeCallbacks(runnableC0044g);
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        new Handler().postDelayed(new RunnableC0047j(this, betterVideoPlayer), ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
    }

    @Override // K4.b
    public void onPrepared(BetterVideoPlayer betterVideoPlayer) {
        try {
            betterVideoPlayer.getToolbar().setTitle(((ChannelTv) App.getInstance().f14435m.get(this.f15619s)).label);
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        try {
            ((ChannelTv) App.getInstance().f14435m.get(this.f15619s)).has_played = true;
        } catch (Exception e7) {
            e7.printStackTrace();
        }
        new Handler().postDelayed(new RunnableC0048k(betterVideoPlayer), 200L);
    }

    @Override // K4.b
    public void onPreparing() {
    }

    @Override // K4.b
    public void onStarted(BetterVideoPlayer betterVideoPlayer) {
    }

    @Override // K4.b
    public void onToggleControls(boolean z6) {
        if (z6) {
            RunnableC0044g runnableC0044g = this.f15626z;
            Handler handler = this.f15623w;
            if (runnableC0044g != null) {
                handler.removeCallbacks(runnableC0044g);
            }
            RunnableC0044g runnableC0044g2 = new RunnableC0044g(0);
            this.f15626z = runnableC0044g2;
            handler.postDelayed(runnableC0044g2, 5000L);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z6) {
        super.onWindowFocusChanged(z6);
        if (z6) {
            this.f15620t.setSystemUiVisibility(5894);
        }
    }

    public void playChannel(ChannelTv channelTv, boolean z6) {
        if (channelTv != null) {
            this.f15621u.getToolbar().setTitle(channelTv.label);
        }
        if (!z6) {
            this.f15619s = App.getInstance().f14435m.indexOf(channelTv);
        }
        try {
            this.f15621u.reset();
            this.f15621u.setSource(Uri.parse(channelTv.url));
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        if (z6) {
            return;
        }
        new Handler().postDelayed(new RunnableC0049l(this, channelTv), 4000L);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(e eVar) {
        if (eVar.f3129a.ordinal() == 0 && this.f15612f.getVisibility() == 0) {
            this.f15612f.startAnimation(this.f15616p);
            this.f15612f.setVisibility(8);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(PlayerEvent playerEvent) {
        int i2 = AbstractC0050m.f272a[playerEvent.action.ordinal()];
    }
}

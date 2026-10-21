package flix.com.vision.tv;

import A4.q;
import B4.RunnableC0041d;
import B4.ViewOnClickListenerC0038a;
import C4.C0096u;
import Q4.d;
import R4.e;
import T4.j;
import T4.o;
import android.app.FragmentManager;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.Toast;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tuyenmonkey.mkloader.MKLoader;
import cz.msebera.android.httpclient.HttpHeaders;
import cz.msebera.android.httpclient.HttpStatus;
import f5.AbstractC0925A;
import f5.m;
import f5.v;
import f5.z;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.bvp.BetterVideoPlayer;
import flix.com.vision.models.ChannelTv;
import flix.com.vision.models.PlayerEvent;
import flix.com.vision.models.StreamUrl;
import java.util.ArrayList;
import java.util.HashMap;
import m4.D;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes2.dex */
public class PlayerActivityLiveExternal extends flix.com.vision.activities.base.a implements K4.b {

    /* renamed from: J, reason: collision with root package name */
    public static final /* synthetic */ int f16226J = 0;

    /* renamed from: C, reason: collision with root package name */
    public MKLoader f16229C;

    /* renamed from: G, reason: collision with root package name */
    public b f16233G;

    /* renamed from: H, reason: collision with root package name */
    public ChannelTv f16234H;

    /* renamed from: b, reason: collision with root package name */
    public C0096u f16236b;

    /* renamed from: e, reason: collision with root package name */
    public ImageView f16237e;

    /* renamed from: f, reason: collision with root package name */
    public Toast f16238f;

    /* renamed from: m, reason: collision with root package name */
    public RelativeLayout f16240m;

    /* renamed from: n, reason: collision with root package name */
    public RecyclerView f16241n;

    /* renamed from: p, reason: collision with root package name */
    public Animation f16242p;

    /* renamed from: q, reason: collision with root package name */
    public Animation f16243q;

    /* renamed from: r, reason: collision with root package name */
    public Animation f16244r;

    /* renamed from: s, reason: collision with root package name */
    public Animation f16245s;

    /* renamed from: t, reason: collision with root package name */
    public Animation f16246t;

    /* renamed from: u, reason: collision with root package name */
    public Animation f16247u;

    /* renamed from: v, reason: collision with root package name */
    public ArrayList f16248v;

    /* renamed from: x, reason: collision with root package name */
    public View f16250x;

    /* renamed from: y, reason: collision with root package name */
    public BetterVideoPlayer f16251y;

    /* renamed from: j, reason: collision with root package name */
    public final int f16239j = 1919;

    /* renamed from: w, reason: collision with root package name */
    public int f16249w = 0;

    /* renamed from: z, reason: collision with root package name */
    public final j f16252z = new j();

    /* renamed from: A, reason: collision with root package name */
    public final Handler f16227A = new Handler();

    /* renamed from: B, reason: collision with root package name */
    public boolean f16228B = false;

    /* renamed from: D, reason: collision with root package name */
    public boolean f16230D = true;

    /* renamed from: E, reason: collision with root package name */
    public boolean f16231E = false;

    /* renamed from: F, reason: collision with root package name */
    public int f16232F = 0;

    /* renamed from: I, reason: collision with root package name */
    public boolean f16235I = false;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class RESULT_EVENT_PLAYER_CTIVITY_LIVE {

        /* renamed from: b, reason: collision with root package name */
        public static final RESULT_EVENT_PLAYER_CTIVITY_LIVE f16253b;

        /* renamed from: e, reason: collision with root package name */
        public static final /* synthetic */ RESULT_EVENT_PLAYER_CTIVITY_LIVE[] f16254e;

        /* JADX INFO: Fake field, exist only in values array */
        RESULT_EVENT_PLAYER_CTIVITY_LIVE EF2;

        static {
            RESULT_EVENT_PLAYER_CTIVITY_LIVE result_event_player_ctivity_live = new RESULT_EVENT_PLAYER_CTIVITY_LIVE("SHOW", 0);
            RESULT_EVENT_PLAYER_CTIVITY_LIVE result_event_player_ctivity_live2 = new RESULT_EVENT_PLAYER_CTIVITY_LIVE("HIDE", 1);
            f16253b = result_event_player_ctivity_live2;
            f16254e = new RESULT_EVENT_PLAYER_CTIVITY_LIVE[]{result_event_player_ctivity_live, result_event_player_ctivity_live2};
        }

        public static RESULT_EVENT_PLAYER_CTIVITY_LIVE valueOf(String str) {
            return (RESULT_EVENT_PLAYER_CTIVITY_LIVE) Enum.valueOf(RESULT_EVENT_PLAYER_CTIVITY_LIVE.class, str);
        }

        public static RESULT_EVENT_PLAYER_CTIVITY_LIVE[] values() {
            return (RESULT_EVENT_PLAYER_CTIVITY_LIVE[]) f16254e.clone();
        }
    }

    public final void f() {
        FragmentManager fragmentManager = getFragmentManager();
        d newInstance = d.newInstance(this, true);
        newInstance.setTitle("Exit");
        newInstance.setMessage("Do you really want to stop playback and exit ?");
        newInstance.setButton1("CANCEL", new q(4));
        newInstance.setButton2("YES", new ViewOnClickListenerC0038a(this, 8));
        try {
            newInstance.show(fragmentManager, "");
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i7, Intent intent) {
        super.onActivityResult(i2, i7, intent);
        if (i2 == 3344 || i2 == 2211) {
            if (i7 == -1) {
                setResult(-1, intent);
            } else {
                setResult(8888, intent);
            }
            setResult(1);
            finish();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f16240m.getVisibility() == 0) {
            this.f16240m.startAnimation(this.f16245s);
            this.f16240m.setVisibility(8);
        } else if (this.f16251y.isControlsShown()) {
            this.f16251y.hideControls();
        } else {
            this.f16251y.showControls();
            f();
        }
    }

    @Override // K4.b
    public void onBuffering(int i2) {
    }

    @Override // K4.b
    public void onCompletion(BetterVideoPlayer betterVideoPlayer) {
        Uri source = betterVideoPlayer.getSource();
        if (source == null) {
            return;
        }
        betterVideoPlayer.reset();
        betterVideoPlayer.setSource(source);
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_player_live2);
        this.f16228B = App.getInstance().f14440s.getInt("player_index", 0) != 0;
        this.f16237e = (ImageView) findViewById(R.id.channel_image_loader);
        this.f16229C = (MKLoader) findViewById(R.id.loading_progress_tv);
        this.f16248v = getIntent().getParcelableArrayListExtra("channels3g");
        this.f16249w = getIntent().getIntExtra(FirebaseAnalytics.Param.INDEX, 0);
        this.f16230D = App.getInstance().f14440s.getBoolean("prefs_show_channel_logo_tv", true);
        this.f16238f = Toast.makeText(getApplicationContext(), "", 0);
        this.f16241n = (RecyclerView) findViewById(R.id.listview);
        BetterVideoPlayer betterVideoPlayer = (BetterVideoPlayer) findViewById(R.id.video_view);
        this.f16251y = betterVideoPlayer;
        betterVideoPlayer.setAutoPlay(true);
        this.f16251y.setHideControlsOnPlay(true);
        this.f16251y.setHideControlsDuration(5000);
        this.f16251y.setCallback(this);
        this.f16251y.enableSwipeGestures(getWindow());
        this.f16251y.setTVMode(true);
        this.f16251y.getToolbar().inflateMenu(R.menu.menu_live_tv);
        this.f16251y.getToolbar().getMenu();
        this.f16251y.getToolbar().setOnMenuItemClickListener(new z(this));
        this.f16241n.setLayoutManager(new LinearLayoutManager(this));
        C0096u c0096u = new C0096u(getBaseContext(), this.f16248v, this, this.f16239j, HttpStatus.SC_OK);
        this.f16236b = c0096u;
        this.f16241n.setAdapter(c0096u);
        this.f16236b.notifyDataSetChanged();
        this.f16240m = (RelativeLayout) findViewById(R.id.channels_rel);
        this.f16250x = getWindow().getDecorView();
        if (this.f16228B) {
            this.f16251y.setVisibility(8);
        }
        this.f16250x.setSystemUiVisibility(AnalyticsListener.EVENT_PLAYER_RELEASED);
        this.f16242p = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.slide_down);
        this.f16243q = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.slide_up);
        this.f16247u = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.slide_down2);
        this.f16246t = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.slide_up2);
        this.f16244r = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.slide_left);
        this.f16245s = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.slide_right);
        int intExtra = getIntent().getIntExtra(FirebaseAnalytics.Param.INDEX, 0);
        this.f16249w = intExtra;
        if (intExtra < 0 || intExtra >= this.f16248v.size()) {
            this.f16249w = 0;
        }
        this.f16251y.setTVMode(true);
        playChannel(this.f16249w);
    }

    @Override // flix.com.vision.activities.base.a, e.AbstractActivityC0842v, androidx.fragment.app.H, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // K4.b
    public void onError(BetterVideoPlayer betterVideoPlayer, Exception exc) {
        if (this.f16248v.size() == 0) {
            return;
        }
        int i2 = this.f16232F + 1;
        this.f16232F = i2;
        if (i2 <= 2) {
            new Handler().postDelayed(new v(this, 1), ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
            return;
        }
        this.f16238f.setText("Failed to load " + ((ChannelTv) this.f16248v.get(this.f16249w)).label);
        try {
            this.f16238f.show();
        } catch (Exception unused) {
        }
        this.f16232F = 0;
        int i7 = this.f16249w + 1;
        this.f16249w = i7;
        if (i7 >= this.f16248v.size()) {
            this.f16249w = 0;
        }
        playChannel(this.f16249w);
    }

    @Override // e.AbstractActivityC0842v, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        int directionPressed = this.f16252z.getDirectionPressed(keyEvent);
        if (directionPressed != 4) {
            if (directionPressed == 5) {
                try {
                    if (this.f16251y.isPlaying()) {
                        this.f16251y.pause();
                    } else if (this.f16251y.isPrepared()) {
                        this.f16251y.start();
                    }
                    this.f16251y.showControls();
                    return true;
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            } else {
                if (directionPressed == 10) {
                    if (this.f16240m.getVisibility() == 0) {
                        this.f16240m.startAnimation(this.f16245s);
                        this.f16240m.setVisibility(8);
                        return false;
                    }
                    if (this.f16251y.isControlsShown()) {
                        this.f16251y.hideControls();
                        return false;
                    }
                    this.f16251y.showControls();
                    f();
                    return true;
                }
                if (directionPressed == 11) {
                    if (this.f16240m.getVisibility() == 0) {
                        this.f16240m.startAnimation(this.f16245s);
                        this.f16240m.setVisibility(8);
                        return true;
                    }
                    try {
                        this.f16241n.scrollToPosition(this.f16249w);
                    } catch (Exception e7) {
                        e7.printStackTrace();
                    }
                    this.f16240m.setVisibility(0);
                    this.f16240m.startAnimation(this.f16244r);
                }
            }
            return true;
        }
        if (this.f16240m.getVisibility() != 0) {
            this.f16251y.toggleControls();
            return true;
        }
        return false;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent() {
        if (this.f16251y.isControlsShown()) {
            this.f16251y.hideControls();
        }
    }

    @Override // androidx.fragment.app.H, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // K4.b
    public void onPaused(BetterVideoPlayer betterVideoPlayer) {
        try {
            b bVar = this.f16233G;
            if (bVar != null) {
                this.f16227A.removeCallbacks(bVar);
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        Show();
    }

    @Override // K4.b
    public void onPrepared(BetterVideoPlayer betterVideoPlayer) {
        this.f16229C.setVisibility(8);
        if (!this.f16230D) {
            this.f16237e.setVisibility(8);
        }
        this.f16232F = 0;
        try {
            betterVideoPlayer.getToolbar().setTitle(((ChannelTv) this.f16248v.get(this.f16249w)).label);
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        if (!this.f16231E) {
            this.f16231E = true;
            try {
                betterVideoPlayer.setVolume(1.0f);
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
        try {
            ((ChannelTv) this.f16248v.get(this.f16249w)).has_played = true;
        } catch (Exception e8) {
            e8.printStackTrace();
        }
        new Handler().postDelayed(new RunnableC0041d(betterVideoPlayer, 3), 200L);
        Show();
    }

    @Override // K4.b
    public void onPreparing() {
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // e.AbstractActivityC0842v, androidx.fragment.app.H, android.app.Activity
    public void onStart() {
        super.onStart();
        EventBus.getDefault().register(this);
    }

    @Override // K4.b
    public void onStarted(BetterVideoPlayer betterVideoPlayer) {
    }

    @Override // e.AbstractActivityC0842v, androidx.fragment.app.H, android.app.Activity
    public void onStop() {
        super.onStop();
        EventBus.getDefault().unregister(this);
    }

    @Override // K4.b
    public void onToggleControls(boolean z6) {
        if (z6) {
            b bVar = this.f16233G;
            Handler handler = this.f16227A;
            if (bVar != null) {
                handler.removeCallbacks(bVar);
            }
            b bVar2 = new b();
            this.f16233G = bVar2;
            handler.postDelayed(bVar2, 5000L);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z6) {
        super.onWindowFocusChanged(z6);
        if (z6) {
            this.f16250x.setSystemUiVisibility(5894);
        }
    }

    public void playChannel(int i2) {
        ChannelTv channelTv = (ChannelTv) this.f16248v.get(i2);
        String str = channelTv.logoUrl;
        if (str != null && str.length() > 10) {
            try {
                try {
                    D.get().load(channelTv.logoUrl).fit().transform(new T4.d()).centerCrop().into(this.f16237e);
                } catch (OutOfMemoryError e3) {
                    e3.printStackTrace();
                }
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
        this.f16229C.setVisibility(0);
        this.f16237e.setVisibility(0);
        this.f16249w = i2;
        HashMap hashMap = App.f14420E;
        hashMap.clear();
        ChannelTv channelTv2 = this.f16234H;
        if (channelTv2 != null && channelTv2.links.size() > 0) {
            hashMap.put("User-Agent", this.f16234H.links.get(0).player_user_agent);
            hashMap.put(HttpHeaders.REFERER, this.f16234H.links.get(0).player_referer);
        }
        this.f16234H = channelTv;
        if (!channelTv.is_streamable) {
            if (channelTv.links.size() > 0) {
                m.GetStreamLink(channelTv.links.get(0), Constant.f16184b);
                return;
            } else {
                Toast.makeText(getApplicationContext(), "Failed to load Channel", 1).show();
                return;
            }
        }
        try {
            this.f16249w = this.f16248v.indexOf(channelTv);
            this.f16251y.reset();
            this.f16251y.setSource(Uri.parse(channelTv.url));
        } catch (Exception e8) {
            e8.printStackTrace();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(e eVar) {
        if (eVar.f3129a.ordinal() == 0 && this.f16240m.getVisibility() == 0) {
            this.f16240m.startAnimation(this.f16245s);
            this.f16240m.setVisibility(8);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(PlayerEvent playerEvent) {
        int i2 = AbstractC0925A.f14376a[playerEvent.action.ordinal()];
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(StreamUrl streamUrl) {
        PlayerActivityLiveExternal playerActivityLiveExternal;
        BetterVideoPlayer betterVideoPlayer = this.f16251y;
        if ((betterVideoPlayer != null && betterVideoPlayer.getSource() != null && this.f16251y.getSource().toString().equals(streamUrl.stream_url)) || streamUrl == null || this.f16235I) {
            return;
        }
        this.f16235I = true;
        ((ChannelTv) this.f16248v.get(this.f16249w)).is_streamable = true;
        if (!this.f16228B) {
            playerActivityLiveExternal = this;
        } else if (App.getInstance().f14440s.getInt("player_index", 0) == 1) {
            playerActivityLiveExternal = this;
            o.PlayMXPlayer(playerActivityLiveExternal, this.f16234H.label, streamUrl.stream_url, streamUrl.player_user_agent, streamUrl.player_referer, -1);
        } else {
            playerActivityLiveExternal = this;
            if (App.getInstance().f14440s.getInt("player_index", 0) == 2) {
                o.PlayVLC(playerActivityLiveExternal, playerActivityLiveExternal.f16234H.label, streamUrl.stream_url, streamUrl.player_user_agent, streamUrl.player_referer, -1);
            } else if (App.getInstance().f14440s.getInt("player_index", 0) == 3) {
                o.PlayXPlayer(this, playerActivityLiveExternal.f16234H.label, streamUrl.stream_url);
            } else {
                playerActivityLiveExternal.f16251y.reset();
                playerActivityLiveExternal.f16251y.setSource(Uri.parse(streamUrl.stream_url), streamUrl.getHeaders());
                new Handler().postDelayed(new v(this, 0), 1000L);
            }
        }
        playerActivityLiveExternal.f16251y.reset();
        playerActivityLiveExternal.f16251y.setSource(Uri.parse(streamUrl.stream_url), streamUrl.getHeaders());
        new Handler().postDelayed(new v(this, 0), 1000L);
    }
}

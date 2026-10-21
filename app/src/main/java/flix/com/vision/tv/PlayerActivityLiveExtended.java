package flix.com.vision.tv;

import C4.C0096u;
import Q4.d;
import R4.e;
import T4.j;
import android.app.FragmentManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
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
import f5.m;
import f5.p;
import f5.q;
import f5.r;
import f5.s;
import f5.t;
import f5.u;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.bvp.BetterVideoPlayer;
import flix.com.vision.models.C4913m;
import flix.com.vision.models.ChannelTv;
import flix.com.vision.models.PlayerEvent;
import flix.com.vision.models.StreamUrl;
import java.util.ArrayList;
import m4.D;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes2.dex */
public class PlayerActivityLiveExtended extends flix.com.vision.activities.base.a implements K4.b {

    /* renamed from: A, reason: collision with root package name */
    public Animation f16201A;

    /* renamed from: E, reason: collision with root package name */
    public a f16205E;

    /* renamed from: F, reason: collision with root package name */
    public ChannelTv f16206F;

    /* renamed from: b, reason: collision with root package name */
    public C0096u f16207b;

    /* renamed from: e, reason: collision with root package name */
    public ImageView f16208e;

    /* renamed from: f, reason: collision with root package name */
    public MKLoader f16209f;

    /* renamed from: m, reason: collision with root package name */
    public RelativeLayout f16211m;

    /* renamed from: n, reason: collision with root package name */
    public RecyclerView f16212n;

    /* renamed from: p, reason: collision with root package name */
    public Animation f16213p;

    /* renamed from: q, reason: collision with root package name */
    public Animation f16214q;

    /* renamed from: r, reason: collision with root package name */
    public Animation f16215r;

    /* renamed from: s, reason: collision with root package name */
    public Animation f16216s;

    /* renamed from: t, reason: collision with root package name */
    public Animation f16217t;

    /* renamed from: u, reason: collision with root package name */
    public ArrayList f16218u;

    /* renamed from: w, reason: collision with root package name */
    public View f16220w;

    /* renamed from: x, reason: collision with root package name */
    public BetterVideoPlayer f16221x;

    /* renamed from: j, reason: collision with root package name */
    public final int f16210j = 1919;

    /* renamed from: v, reason: collision with root package name */
    public int f16219v = 0;

    /* renamed from: y, reason: collision with root package name */
    public final j f16222y = new j();

    /* renamed from: z, reason: collision with root package name */
    public final Handler f16223z = new Handler();

    /* renamed from: B, reason: collision with root package name */
    public boolean f16202B = false;

    /* renamed from: C, reason: collision with root package name */
    public boolean f16203C = false;

    /* renamed from: D, reason: collision with root package name */
    public final boolean f16204D = true;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class RESULT_EVENT_PLAYER_CTIVITY_LIVE {

        /* renamed from: b, reason: collision with root package name */
        public static final RESULT_EVENT_PLAYER_CTIVITY_LIVE f16224b;

        /* renamed from: e, reason: collision with root package name */
        public static final /* synthetic */ RESULT_EVENT_PLAYER_CTIVITY_LIVE[] f16225e;

        /* JADX INFO: Fake field, exist only in values array */
        RESULT_EVENT_PLAYER_CTIVITY_LIVE EF2;

        static {
            RESULT_EVENT_PLAYER_CTIVITY_LIVE result_event_player_ctivity_live = new RESULT_EVENT_PLAYER_CTIVITY_LIVE("SHOW", 0);
            RESULT_EVENT_PLAYER_CTIVITY_LIVE result_event_player_ctivity_live2 = new RESULT_EVENT_PLAYER_CTIVITY_LIVE("HIDE", 1);
            f16224b = result_event_player_ctivity_live2;
            f16225e = new RESULT_EVENT_PLAYER_CTIVITY_LIVE[]{result_event_player_ctivity_live, result_event_player_ctivity_live2};
        }

        public static RESULT_EVENT_PLAYER_CTIVITY_LIVE valueOf(String str) {
            return (RESULT_EVENT_PLAYER_CTIVITY_LIVE) Enum.valueOf(RESULT_EVENT_PLAYER_CTIVITY_LIVE.class, str);
        }

        public static RESULT_EVENT_PLAYER_CTIVITY_LIVE[] values() {
            return (RESULT_EVENT_PLAYER_CTIVITY_LIVE[]) f16225e.clone();
        }
    }

    public static String getMXPlayerPackage(Context context) {
        return isPackageInstalled(context, "com.mxtech.videoplayer.pro") ? "com.mxtech.videoplayer.pro" : "com.mxtech.videoplayer.ad";
    }

    public static boolean isPackageInstalled(Context context, String str) {
        try {
            context.getPackageManager().getPackageInfo(str, 0);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    public void MXPlayerPlayUri(Context context, String str, String str2, String str3, String str4) {
        Bundle bundle = new Bundle();
        bundle.putString("title", str);
        bundle.putBoolean("secure_uri", true);
        bundle.putInt("position", 0);
        bundle.putInt("video_zoom", 0);
        bundle.putBoolean("sticky", false);
        if (!str3.isEmpty()) {
            bundle.putStringArray("headers", new String[]{"User-Agent", str3});
        }
        if (!str4.isEmpty()) {
            bundle.putStringArray(C4913m.f14515o, new String[]{HttpHeaders.REFERER, str4});
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.putExtras(bundle);
        intent.setDataAndType(Uri.parse(str2), "video/*");
        intent.setPackage(getMXPlayerPackage(context));
        startActivityForResult(intent, 3344);
    }

    public void VLCPlayerPlayUri(String str, String str2, String str3, String str4) {
        Bundle bundle = new Bundle();
        bundle.putString("title", str);
        bundle.putInt("position", 0);
        bundle.putBoolean("from_start", true);
        if (!str3.isEmpty()) {
            bundle.putStringArray("headers", new String[]{"User-Agent", str3});
        }
        if (!str4.isEmpty()) {
            bundle.putStringArray(C4913m.f14515o, new String[]{HttpHeaders.REFERER, str4});
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.putExtras(bundle);
        intent.setDataAndType(Uri.parse(str2), "video/*");
        intent.setPackage("org.videolan.vlc");
        startActivityForResult(intent, 2211);
    }

    public void XPlayerlayerPlayUri(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("title", str);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.putExtras(bundle);
        intent.setDataAndType(Uri.parse(str2), "video/*");
        intent.setPackage("video.player.videoplayer");
        startActivityForResult(intent, 2211);
    }

    public final void e() {
        FragmentManager fragmentManager = getFragmentManager();
        d newInstance = d.newInstance(this, true);
        newInstance.setTitle("Exit");
        newInstance.setMessage("Do you really want to stop playback and exit ?");
        newInstance.setButton1("CANCEL", new t());
        newInstance.setButton2("YES", new u(this));
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
        if (this.f16211m.getVisibility() == 0) {
            this.f16211m.startAnimation(this.f16215r);
            this.f16211m.setVisibility(8);
        } else if (this.f16221x.isControlsShown()) {
            this.f16221x.hideControls();
        } else {
            this.f16221x.showControls();
            e();
        }
    }

    @Override // K4.b
    public void onBuffering(int i2) {
    }

    @Override // K4.b
    public void onCompletion(BetterVideoPlayer betterVideoPlayer) {
        if (((ChannelTv) this.f16218u.get(this.f16219v)).is_streamable && ((ChannelTv) this.f16218u.get(this.f16219v)).links.size() > 0) {
            String str = ((ChannelTv) this.f16218u.get(this.f16219v)).links.get(0).stream_url;
            betterVideoPlayer.reset();
            betterVideoPlayer.setSource(Uri.parse(str), ((ChannelTv) this.f16218u.get(this.f16219v)).links.get(0).getHeaders());
        } else if (((ChannelTv) this.f16218u.get(this.f16219v)).is_streamable) {
            betterVideoPlayer.reset();
            betterVideoPlayer.setSource(Uri.parse(((ChannelTv) this.f16218u.get(this.f16219v)).url));
        }
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        ArrayList arrayList;
        super.onCreate(bundle);
        setContentView(R.layout.activity_exo_media2);
        this.f16208e = (ImageView) findViewById(R.id.channel_image_loader);
        this.f16209f = (MKLoader) findViewById(R.id.loading_progress_tv);
        this.f16218u = getIntent().getParcelableArrayListExtra("channels3g");
        this.f16219v = getIntent().getIntExtra(FirebaseAnalytics.Param.INDEX, 0);
        this.f16202B = App.getInstance().f14440s.getInt("player_index", 0) != 0;
        Toast.makeText(getApplicationContext(), "", 0);
        EventBus.getDefault().register(this);
        this.f16212n = (RecyclerView) findViewById(R.id.listview);
        BetterVideoPlayer betterVideoPlayer = (BetterVideoPlayer) findViewById(R.id.video_view);
        this.f16221x = betterVideoPlayer;
        betterVideoPlayer.setAutoPlay(true);
        this.f16221x.setHideControlsOnPlay(true);
        this.f16221x.setHideControlsDuration(5000);
        this.f16221x.setCallback(this);
        this.f16221x.enableSwipeGestures(getWindow());
        this.f16221x.getToolbar().inflateMenu(R.menu.menu_live_tv);
        this.f16221x.getToolbar().getMenu();
        this.f16221x.getToolbar().setOnMenuItemClickListener(new q(this));
        this.f16212n.setLayoutManager(new LinearLayoutManager(this));
        C0096u c0096u = new C0096u(getBaseContext(), this.f16218u, this, this.f16210j, HttpStatus.SC_OK);
        this.f16207b = c0096u;
        this.f16212n.setAdapter(c0096u);
        this.f16207b.notifyDataSetChanged();
        this.f16211m = (RelativeLayout) findViewById(R.id.channels_rel);
        View decorView = getWindow().getDecorView();
        this.f16220w = decorView;
        decorView.setSystemUiVisibility(AnalyticsListener.EVENT_PLAYER_RELEASED);
        this.f16201A = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.slide_down);
        this.f16213p = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.slide_up);
        this.f16217t = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.slide_down2);
        this.f16216s = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.slide_up2);
        this.f16214q = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.slide_left);
        this.f16215r = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.slide_right);
        this.f16201A = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.slide_down);
        int intExtra = getIntent().getIntExtra(FirebaseAnalytics.Param.INDEX, 0);
        this.f16219v = intExtra;
        if (intExtra < 0 || ((arrayList = this.f16218u) != null && intExtra >= arrayList.size())) {
            this.f16219v = 0;
        }
        this.f16221x.setTVMode(true);
        playChannel(this.f16219v);
    }

    @Override // flix.com.vision.activities.base.a, e.AbstractActivityC0842v, androidx.fragment.app.H, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // K4.b
    public void onError(BetterVideoPlayer betterVideoPlayer, Exception exc) {
    }

    @Override // e.AbstractActivityC0842v, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        int directionPressed = this.f16222y.getDirectionPressed(keyEvent);
        this.f16221x.showControls();
        if (directionPressed != 4) {
            if (directionPressed == 5) {
                try {
                    if (this.f16221x.isPlaying()) {
                        this.f16221x.pause();
                    } else if (this.f16221x.isPrepared()) {
                        this.f16221x.start();
                    }
                    this.f16221x.showControls();
                    return true;
                } catch (Exception e3) {
                    e3.printStackTrace();
                    return true;
                }
            }
            if (directionPressed == 10) {
                if (this.f16211m.getVisibility() == 0) {
                    this.f16211m.startAnimation(this.f16215r);
                    this.f16211m.setVisibility(8);
                    return false;
                }
                if (this.f16221x.isControlsShown()) {
                    this.f16221x.hideControls();
                    return false;
                }
                this.f16221x.showControls();
                e();
                return true;
            }
            if (directionPressed == 11) {
                if (this.f16211m.getVisibility() == 0) {
                    this.f16211m.startAnimation(this.f16215r);
                    this.f16211m.setVisibility(8);
                    return true;
                }
                this.f16211m.setVisibility(0);
                this.f16211m.startAnimation(this.f16214q);
                return true;
            }
        } else if (this.f16211m.getVisibility() != 0) {
            this.f16221x.toggleControls();
            return true;
        }
        return false;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent() {
        if (this.f16221x.isControlsShown()) {
            this.f16221x.hideControls();
        }
    }

    @Override // androidx.fragment.app.H, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // K4.b
    public void onPaused(BetterVideoPlayer betterVideoPlayer) {
        try {
            a aVar = this.f16205E;
            if (aVar != null) {
                this.f16223z.removeCallbacks(aVar);
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        new Handler().postDelayed(new r(this, betterVideoPlayer), ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
    }

    @Override // K4.b
    public void onPrepared(BetterVideoPlayer betterVideoPlayer) {
        this.f16209f.setVisibility(8);
        if (!this.f16204D) {
            this.f16208e.setVisibility(8);
        }
        try {
            betterVideoPlayer.getToolbar().setTitle(((ChannelTv) this.f16218u.get(this.f16219v)).label);
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        if (!this.f16203C) {
            this.f16203C = true;
            try {
                betterVideoPlayer.setVolume(1.0f);
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
        try {
            ((ChannelTv) this.f16218u.get(this.f16219v)).has_played = true;
        } catch (Exception e8) {
            e8.printStackTrace();
        }
        new Handler().postDelayed(new s(betterVideoPlayer), 200L);
    }

    @Override // K4.b
    public void onPreparing() {
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // K4.b
    public void onStarted(BetterVideoPlayer betterVideoPlayer) {
    }

    @Override // K4.b
    public void onToggleControls(boolean z6) {
        if (z6) {
            a aVar = this.f16205E;
            Handler handler = this.f16223z;
            if (aVar != null) {
                handler.removeCallbacks(aVar);
            }
            a aVar2 = new a();
            this.f16205E = aVar2;
            handler.postDelayed(aVar2, 5000L);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z6) {
        super.onWindowFocusChanged(z6);
        if (z6) {
            this.f16220w.setSystemUiVisibility(5894);
        }
    }

    public void playChannel(int i2) {
        ChannelTv channelTv = (ChannelTv) this.f16218u.get(i2);
        this.f16209f.setVisibility(0);
        this.f16208e.setVisibility(0);
        String str = channelTv.logoUrl;
        if (str != null) {
            try {
                if (str.length() > 10) {
                    try {
                        D.get().load(channelTv.logoUrl).fit().transform(new T4.d()).centerCrop().into(this.f16208e);
                    } catch (OutOfMemoryError e3) {
                        e3.printStackTrace();
                    }
                }
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
        this.f16219v = i2;
        this.f16206F = channelTv;
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
            this.f16219v = this.f16218u.indexOf(channelTv);
            this.f16221x.reset();
            this.f16221x.setSource(Uri.parse(channelTv.url));
        } catch (Exception e8) {
            e8.printStackTrace();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(e eVar) {
        if (eVar.f3129a.ordinal() == 0 && this.f16211m.getVisibility() == 0) {
            this.f16211m.startAnimation(this.f16215r);
            this.f16211m.setVisibility(8);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(PlayerEvent playerEvent) {
        int i2 = p.f14404a[playerEvent.action.ordinal()];
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(StreamUrl streamUrl) {
        PlayerActivityLiveExtended playerActivityLiveExtended;
        if (streamUrl != null) {
            ((ChannelTv) this.f16218u.get(this.f16219v)).is_streamable = true;
            if (!this.f16202B) {
                playerActivityLiveExtended = this;
            } else if (App.getInstance().f14440s.getInt("player_index", 0) == 1) {
                playerActivityLiveExtended = this;
                playerActivityLiveExtended.MXPlayerPlayUri(getBaseContext(), this.f16206F.label, streamUrl.stream_url, streamUrl.player_user_agent, streamUrl.player_referer);
            } else {
                playerActivityLiveExtended = this;
                if (App.getInstance().f14440s.getInt("player_index", 0) == 2) {
                    VLCPlayerPlayUri(playerActivityLiveExtended.f16206F.label, streamUrl.stream_url, streamUrl.player_user_agent, streamUrl.player_referer);
                } else if (App.getInstance().f14440s.getInt("player_index", 0) == 3) {
                    XPlayerlayerPlayUri(playerActivityLiveExtended.f16206F.label, streamUrl.stream_url);
                } else {
                    playerActivityLiveExtended.f16221x.reset();
                    playerActivityLiveExtended.f16221x.setSource(Uri.parse(streamUrl.stream_url), streamUrl.getHeaders());
                    return;
                }
            }
            playerActivityLiveExtended.f16221x.reset();
            playerActivityLiveExtended.f16221x.setSource(Uri.parse(streamUrl.stream_url), streamUrl.getHeaders());
        }
    }
}

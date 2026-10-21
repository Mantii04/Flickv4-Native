package flix.com.vision.activities.player;

import A4.n;
import A4.q;
import B4.C0042e;
import B4.C0043f;
import B4.DialogInterfaceOnClickListenerC0039b;
import B4.DialogInterfaceOnDismissListenerC0040c;
import B4.RunnableC0041d;
import B4.ViewOnClickListenerC0038a;
import C4.C0084h;
import K4.b;
import Q4.d;
import T4.j;
import U4.c;
import X4.g;
import android.app.FragmentManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.RelativeLayout;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.recyclerview.widget.RecyclerView;
import com.github.ybq.android.spinkit.SpinKitView;
import e.r;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.base.a;
import flix.com.vision.bvp.BetterVideoPlayer;
import flix.com.vision.helpers.CenterLayoutManager;
import flix.com.vision.models.adult.AdultLink;
import flix.com.vision.models.adult.AdultVideo;
import h5.AbstractC0995i;
import java.util.ArrayList;
import java.util.Locale;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes2.dex */
public class AdultVideoPlayerActivity extends a implements b, U4.b, c, U4.a {

    /* renamed from: z, reason: collision with root package name */
    public static final /* synthetic */ int f15591z = 0;

    /* renamed from: b, reason: collision with root package name */
    public SpinKitView f15592b;

    /* renamed from: e, reason: collision with root package name */
    public String f15593e;

    /* renamed from: f, reason: collision with root package name */
    public RelativeLayout f15594f;

    /* renamed from: j, reason: collision with root package name */
    public RecyclerView f15595j;

    /* renamed from: m, reason: collision with root package name */
    public Animation f15596m;

    /* renamed from: n, reason: collision with root package name */
    public Animation f15597n;

    /* renamed from: p, reason: collision with root package name */
    public View f15598p;

    /* renamed from: q, reason: collision with root package name */
    public BetterVideoPlayer f15599q;

    /* renamed from: r, reason: collision with root package name */
    public final j f15600r = new j();

    /* renamed from: s, reason: collision with root package name */
    public boolean f15601s;

    /* renamed from: t, reason: collision with root package name */
    public String f15602t;

    /* renamed from: u, reason: collision with root package name */
    public final ArrayList f15603u;

    /* renamed from: v, reason: collision with root package name */
    public final ArrayList f15604v;

    /* renamed from: w, reason: collision with root package name */
    public C0084h f15605w;

    /* renamed from: x, reason: collision with root package name */
    public final ArrayList f15606x;

    /* renamed from: y, reason: collision with root package name */
    public d f15607y;

    public AdultVideoPlayerActivity() {
        new Handler();
        this.f15601s = true;
        this.f15603u = new ArrayList();
        this.f15604v = new ArrayList();
        this.f15606x = new ArrayList();
    }

    public static /* synthetic */ void e(AdultVideoPlayerActivity adultVideoPlayerActivity) {
        adultVideoPlayerActivity.getClass();
        try {
            adultVideoPlayerActivity.f15599q.stop();
            adultVideoPlayerActivity.f15599q.release();
            super.onBackPressed();
            adultVideoPlayerActivity.finish();
        } catch (Exception unused) {
        }
    }

    @Override // U4.a
    public void OnStreamResolvedSuccess(ArrayList<AdultLink> arrayList) {
        d dVar = this.f15607y;
        if (dVar != null) {
            try {
                dVar.dismiss();
            } catch (Exception unused) {
            }
        }
        ArrayList arrayList2 = this.f15604v;
        arrayList2.clear();
        arrayList2.addAll(arrayList);
        C0043f c0043f = new C0043f(this);
        c0043f.f263a = true;
        EventBus.getDefault().post(c0043f);
    }

    @Override // U4.c
    public void OnVideoListSuccess(ArrayList<AdultVideo> arrayList) {
        C0043f c0043f = new C0043f(this);
        c0043f.f264b = arrayList;
        c0043f.f263a = false;
        EventBus.getDefault().post(c0043f);
    }

    public final void f(AdultVideo adultVideo) {
        try {
            if (adultVideo != null) {
                App.getInstance().f14439r.addAdultHistory(adultVideo);
                return;
            }
            String stringExtra = getIntent().getStringExtra("videoUrl");
            String stringExtra2 = getIntent().getStringExtra("title");
            String stringExtra3 = getIntent().getStringExtra("image_url");
            AdultVideo adultVideo2 = new AdultVideo();
            adultVideo2.title = stringExtra2;
            adultVideo2.img_url = stringExtra3;
            adultVideo2.url = stringExtra;
            if (stringExtra2 == null || stringExtra == null) {
                return;
            }
            App.getInstance().f14439r.addAdultHistory(adultVideo2);
        } catch (Exception unused) {
        }
    }

    public final void g() {
        if (this.f15601s) {
            this.f15594f.startAnimation(this.f15597n);
            this.f15594f.setVisibility(8);
            this.f15595j.clearFocus();
        }
    }

    public void getVideos() {
        if (this.f15601s) {
            new g(this, this).process(this.f15602t);
        }
    }

    public final void h() {
        FragmentManager fragmentManager = getFragmentManager();
        d newInstance = d.newInstance(this, true);
        newInstance.setTitle("Exit");
        newInstance.setMessage("Do you really want to stop playback and exit ?");
        newInstance.setButton1("CANCEL", new q(1));
        newInstance.setButton2("YES", new ViewOnClickListenerC0038a(this, 0));
        try {
            newInstance.show(fragmentManager, "");
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public final void i() {
        if (this.f15601s) {
            this.f15594f.setVisibility(0);
            this.f15594f.startAnimation(this.f15596m);
            this.f15595j.requestFocus();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        if (this.f15599q.isControlsShown()) {
            this.f15599q.hideControls();
        } else {
            h();
        }
    }

    @Override // K4.b
    public void onBuffering(int i2) {
    }

    @Override // K4.b
    public void onCompletion(BetterVideoPlayer betterVideoPlayer) {
        try {
            betterVideoPlayer.start();
        } catch (Exception unused) {
        }
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        setContentView(R.layout.activity_player_adult);
        this.f15592b = (SpinKitView) findViewById(R.id.buffering_view);
        this.f15594f = (RelativeLayout) findViewById(R.id.relativeview_videos);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.recyclerview_videos);
        this.f15595j = recyclerView;
        b.c.s(recyclerView, 5);
        this.f15595j.setLayoutManager(new CenterLayoutManager(this, 1, false));
        C0084h c0084h = new C0084h(this, this, this.f15606x);
        this.f15605w = c0084h;
        this.f15595j.setAdapter(c0084h);
        this.f15601s = App.getInstance().f14440s.getBoolean("pref_show_adult_zone_hide_related", true);
        BetterVideoPlayer betterVideoPlayer = (BetterVideoPlayer) findViewById(R.id.video_view);
        this.f15599q = betterVideoPlayer;
        betterVideoPlayer.addListener(new C0042e(this));
        f(null);
        this.f15599q.setAutoPlay(true);
        this.f15599q.setBottomProgressBarVisibility(true);
        this.f15599q.setHideControlsOnPlay(true);
        this.f15599q.setHideControlsDuration(10000);
        this.f15599q.setCallback(this);
        this.f15599q.enableSwipeGestures(getWindow());
        this.f15599q.getToolbar().inflateMenu(R.menu.menu_simple_video_player_adult);
        this.f15599q.getToolbar().setOnMenuItemClickListener(new A0.a(this, 2));
        this.f15599q.getToolbar().getMenu();
        View decorView = getWindow().getDecorView();
        this.f15598p = decorView;
        decorView.setSystemUiVisibility(AnalyticsListener.EVENT_PLAYER_RELEASED);
        this.f15596m = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.slide_left);
        this.f15597n = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.slide_right);
        this.f15593e = getIntent().getStringExtra("url");
        this.f15602t = getIntent().getStringExtra("videoUrl");
        this.f15599q.getToolbar().setTitle(getIntent().getStringExtra("title"));
        AdultVideo adultVideo = new AdultVideo();
        adultVideo.url = this.f15602t;
        this.f15603u.add(adultVideo);
        String str = this.f15593e;
        if (str != null) {
            playAdultLink(str);
        }
        getVideos();
    }

    @Override // flix.com.vision.activities.base.a, e.AbstractActivityC0842v, androidx.fragment.app.H, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // K4.b
    public void onError(BetterVideoPlayer betterVideoPlayer, Exception exc) {
        AbstractC0995i.makeToast(this, exc.getMessage(), true);
    }

    @Override // e.AbstractActivityC0842v, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        int directionPressed = this.f15600r.getDirectionPressed(keyEvent);
        this.f15599q.showControls();
        if (directionPressed == 1) {
            if (!this.f15599q.isPlaying() || !this.f15599q.isPrepared()) {
                return false;
            }
            try {
                this.f15599q.seekTo(((int) this.f15599q.getCurrentPosition()) - 10000);
            } catch (Exception e3) {
                e3.printStackTrace();
            }
            return true;
        }
        if (directionPressed == 2) {
            if (!this.f15599q.isPlaying() || !this.f15599q.isPrepared()) {
                return false;
            }
            try {
                this.f15599q.seekTo(((int) this.f15599q.getCurrentPosition()) + 10000);
            } catch (Exception e7) {
                e7.printStackTrace();
            }
            return true;
        }
        if (directionPressed == 4) {
            this.f15599q.toggleControls();
            return true;
        }
        if (directionPressed == 5) {
            try {
                if (this.f15599q.isPlaying()) {
                    this.f15599q.pause();
                } else if (this.f15599q.isPrepared()) {
                    this.f15599q.start();
                }
                this.f15599q.showControls();
            } catch (Exception e8) {
                e8.printStackTrace();
            }
            return true;
        }
        if (directionPressed == 10) {
            if (this.f15599q.isControlsShown()) {
                this.f15599q.hideControls();
                return true;
            }
            h();
            return true;
        }
        if (directionPressed != 11) {
            return false;
        }
        if (this.f15594f.getVisibility() == 0) {
            g();
        } else {
            i();
        }
        return true;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent() {
        if (this.f15599q.isControlsShown()) {
            this.f15599q.hideControls();
        }
    }

    @Override // K4.b
    public void onPaused(BetterVideoPlayer betterVideoPlayer) {
        new Handler().postDelayed(new n(1, this, betterVideoPlayer), ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
    }

    @Override // K4.b
    public void onPrepared(BetterVideoPlayer betterVideoPlayer) {
        new Handler().postDelayed(new RunnableC0041d(betterVideoPlayer, 0), 200L);
    }

    @Override // K4.b
    public void onPreparing() {
    }

    @Override // K4.b
    public void onStarted(BetterVideoPlayer betterVideoPlayer) {
    }

    @Override // K4.b
    public void onToggleControls(boolean z6) {
        if (this.f15606x.size() > 0) {
            if (z6) {
                if (this.f15594f.getVisibility() != 0) {
                    i();
                }
            } else if (this.f15594f.getVisibility() == 0) {
                g();
            }
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z6) {
        super.onWindowFocusChanged(z6);
        if (z6) {
            this.f15598p.setSystemUiVisibility(5894);
        }
    }

    @Override // U4.b
    public void openAdultVideo(int i2) {
        ArrayList arrayList = this.f15603u;
        int size = arrayList.size();
        ArrayList arrayList2 = this.f15606x;
        if (size == 0 || b.c.h(1, arrayList) != arrayList2.get(i2)) {
            arrayList.add((AdultVideo) arrayList2.get(i2));
        }
        this.f15599q.getToolbar().setTitle(((AdultVideo) arrayList2.get(i2)).title);
        g();
        FragmentManager fragmentManager = getFragmentManager();
        d newInstance = d.newInstance(this, false);
        this.f15607y = newInstance;
        newInstance.setloading();
        try {
            this.f15607y.show(fragmentManager, "");
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        this.f15602t = ((AdultVideo) arrayList2.get(i2)).url;
        f((AdultVideo) arrayList2.get(i2));
        new X4.c(this, this).process(this.f15602t);
        getVideos();
    }

    public void playAdultLink(String str) {
        try {
            this.f15599q.reset();
            this.f15599q.setSource(Uri.parse(str));
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(C0043f c0043f) {
        ArrayList arrayList = c0043f.f264b;
        if (arrayList != null && arrayList.size() > 0) {
            ArrayList arrayList2 = this.f15606x;
            arrayList2.clear();
            arrayList2.addAll(c0043f.f264b);
            this.f15605w.notifyDataSetChanged();
            this.f15595j.scrollToPosition(0);
            return;
        }
        if (c0043f.f263a) {
            ArrayList arrayList3 = this.f15604v;
            if (App.getInstance().f14440s.getBoolean("pref_adult_zone_always_play_best", true) && arrayList3.size() > 0) {
                playAdultLink(((AdultLink) arrayList3.get(0)).stream_url);
                return;
            }
            ArrayList arrayList4 = new ArrayList();
            for (int i2 = 0; i2 < arrayList3.size(); i2++) {
                arrayList4.add(((AdultLink) arrayList3.get(i2)).label.toUpperCase(Locale.ROOT));
            }
            CharSequence[] charSequenceArr = (CharSequence[]) arrayList4.toArray(new CharSequence[arrayList4.size()]);
            r rVar = new r(new ContextThemeWrapper(this, R.style.AlertDialogCustom));
            rVar.setSingleChoiceItems(charSequenceArr, -1, new DialogInterfaceOnClickListenerC0039b(0, this, arrayList3));
            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(0));
            rVar.show();
        }
    }
}

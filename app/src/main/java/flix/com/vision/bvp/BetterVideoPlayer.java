package flix.com.vision.bvp;

import A.h;
import B4.RunnableC0041d;
import K4.d;
import K4.f;
import K4.g;
import K4.i;
import K4.j;
import K4.k;
import K4.l;
import K4.m;
import O2.o;
import O2.q;
import O2.r;
import O2.t;
import O2.v;
import O2.x;
import Q3.x0;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.Player;
import androidx.media3.common.TrackSelectionOverride;
import androidx.media3.common.Tracks;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DefaultDataSource;
import androidx.media3.datasource.okhttp.OkHttpDataSource;
import androidx.media3.exoplayer.DefaultLoadControl;
import androidx.media3.exoplayer.DefaultRenderersFactory;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.source.BaseMediaSource;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.exoplayer.upstream.DefaultAllocator;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.bvp.subtitle.CaptionsView;
import h5.AbstractC1000n;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import okhttp3.ConnectionPool;
import okhttp3.OkHttpClient;

/* loaded from: classes2.dex */
public class BetterVideoPlayer extends RelativeLayout implements SurfaceHolder.Callback, View.OnClickListener, SeekBar.OnSeekBarChangeListener {

    /* renamed from: s0, reason: collision with root package name */
    public static final /* synthetic */ int f15848s0 = 0;

    /* renamed from: A, reason: collision with root package name */
    public d f15849A;

    /* renamed from: B, reason: collision with root package name */
    public SurfaceView f15850B;

    /* renamed from: C, reason: collision with root package name */
    public SeekBar f15851C;

    /* renamed from: D, reason: collision with root package name */
    public ProgressBar f15852D;

    /* renamed from: E, reason: collision with root package name */
    public TextView f15853E;

    /* renamed from: F, reason: collision with root package name */
    public TextView f15854F;

    /* renamed from: G, reason: collision with root package name */
    public ImageButton f15855G;

    /* renamed from: H, reason: collision with root package name */
    public boolean f15856H;

    /* renamed from: I, reason: collision with root package name */
    public boolean f15857I;

    /* renamed from: J, reason: collision with root package name */
    public int f15858J;

    /* renamed from: K, reason: collision with root package name */
    public int f15859K;

    /* renamed from: L, reason: collision with root package name */
    public Handler f15860L;

    /* renamed from: M, reason: collision with root package name */
    public int f15861M;

    /* renamed from: N, reason: collision with root package name */
    public Uri f15862N;

    /* renamed from: O, reason: collision with root package name */
    public Map f15863O;

    /* renamed from: P, reason: collision with root package name */
    public K4.b f15864P;

    /* renamed from: Q, reason: collision with root package name */
    public Drawable f15865Q;

    /* renamed from: R, reason: collision with root package name */
    public Drawable f15866R;

    /* renamed from: S, reason: collision with root package name */
    public Drawable f15867S;

    /* renamed from: T, reason: collision with root package name */
    public boolean f15868T;

    /* renamed from: U, reason: collision with root package name */
    public boolean f15869U;

    /* renamed from: V, reason: collision with root package name */
    public boolean f15870V;

    /* renamed from: W, reason: collision with root package name */
    public boolean f15871W;

    /* renamed from: a0, reason: collision with root package name */
    public boolean f15872a0;

    /* renamed from: b, reason: collision with root package name */
    public int f15873b;

    /* renamed from: b0, reason: collision with root package name */
    public boolean f15874b0;

    /* renamed from: c0, reason: collision with root package name */
    public boolean f15875c0;

    /* renamed from: d0, reason: collision with root package name */
    public boolean f15876d0;

    /* renamed from: e, reason: collision with root package name */
    public TextView f15877e;

    /* renamed from: e0, reason: collision with root package name */
    public int f15878e0;

    /* renamed from: f, reason: collision with root package name */
    public TextView f15879f;

    /* renamed from: f0, reason: collision with root package name */
    public long f15880f0;

    /* renamed from: g0, reason: collision with root package name */
    public int f15881g0;

    /* renamed from: h0, reason: collision with root package name */
    public final int f15882h0;

    /* renamed from: i0, reason: collision with root package name */
    public final GestureDetector f15883i0;

    /* renamed from: j, reason: collision with root package name */
    public TextView f15884j;

    /* renamed from: j0, reason: collision with root package name */
    public int f15885j0;

    /* renamed from: k0, reason: collision with root package name */
    public boolean f15886k0;

    /* renamed from: l0, reason: collision with root package name */
    public final j f15887l0;

    /* renamed from: m, reason: collision with root package name */
    public CaptionsView f15888m;

    /* renamed from: m0, reason: collision with root package name */
    public final a f15889m0;

    /* renamed from: n, reason: collision with root package name */
    public AudioManager f15890n;

    /* renamed from: n0, reason: collision with root package name */
    public boolean f15891n0;

    /* renamed from: o0, reason: collision with root package name */
    public long f15892o0;

    /* renamed from: p, reason: collision with root package name */
    public Toolbar f15893p;

    /* renamed from: p0, reason: collision with root package name */
    public final k f15894p0;

    /* renamed from: q, reason: collision with root package name */
    public String f15895q;

    /* renamed from: q0, reason: collision with root package name */
    public long f15896q0;

    /* renamed from: r, reason: collision with root package name */
    public int f15897r;

    /* renamed from: r0, reason: collision with root package name */
    public m f15898r0;

    /* renamed from: s, reason: collision with root package name */
    public int f15899s;

    /* renamed from: t, reason: collision with root package name */
    public Context f15900t;

    /* renamed from: u, reason: collision with root package name */
    public Window f15901u;

    /* renamed from: v, reason: collision with root package name */
    public View f15902v;

    /* renamed from: w, reason: collision with root package name */
    public View f15903w;

    /* renamed from: x, reason: collision with root package name */
    public FrameLayout f15904x;

    /* renamed from: y, reason: collision with root package name */
    public View f15905y;

    /* renamed from: z, reason: collision with root package name */
    public ExoPlayer f15906z;

    public BetterVideoPlayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f15873b = 0;
        this.f15868T = false;
        this.f15869U = false;
        this.f15870V = true;
        this.f15871W = false;
        this.f15872a0 = true;
        this.f15874b0 = false;
        this.f15875c0 = false;
        this.f15876d0 = false;
        this.f15878e0 = 7;
        this.f15880f0 = -1L;
        this.f15881g0 = 2000;
        this.f15882h0 = 10000;
        this.f15883i0 = new GestureDetector(this.f15900t, new f(this));
        this.f15885j0 = 0;
        this.f15886k0 = false;
        this.f15887l0 = new j(this);
        this.f15889m0 = new a(this);
        this.f15891n0 = false;
        this.f15892o0 = -1L;
        this.f15894p0 = new k(this);
        this.f15896q0 = -1L;
        try {
            h(context, attributeSet);
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public static void LOG(String str, Object... objArr) {
        if (objArr == null || objArr.length <= 0) {
            return;
        }
        String.format(str, objArr);
    }

    public static void a(BetterVideoPlayer betterVideoPlayer, boolean z6) {
        betterVideoPlayer.getClass();
        if (z6) {
            LOG("Buffering started", new Object[0]);
            K4.b bVar = betterVideoPlayer.f15864P;
            if (bVar != null) {
                bVar.onBuffering(0);
                return;
            }
            return;
        }
        LOG("Buffering completed", new Object[0]);
        K4.b bVar2 = betterVideoPlayer.f15864P;
        if (bVar2 != null) {
            bVar2.onBuffering(100);
        }
        SeekBar seekBar = betterVideoPlayer.f15851C;
        if (seekBar != null) {
            seekBar.setSecondaryProgress(0);
            betterVideoPlayer.f15852D.setSecondaryProgress(0);
        }
    }

    public static void b(BetterVideoPlayer betterVideoPlayer) {
        betterVideoPlayer.getClass();
        LOG("onPrepared()", new Object[0]);
        if (betterVideoPlayer.f15906z == null) {
            return;
        }
        if (!betterVideoPlayer.f15856H && !betterVideoPlayer.f15891n0) {
            betterVideoPlayer.showControls();
        }
        betterVideoPlayer.f15856H = true;
        K4.b bVar = betterVideoPlayer.f15864P;
        if (bVar != null) {
            bVar.onPrepared(betterVideoPlayer);
        }
        long duration = betterVideoPlayer.f15906z.getDuration();
        betterVideoPlayer.f15853E.setText(AbstractC1000n.getDurationString(0L));
        betterVideoPlayer.f15854F.setText(AbstractC1000n.getDurationString(duration));
        betterVideoPlayer.f15851C.setProgress(0);
        try {
            betterVideoPlayer.f15851C.setMax((int) (duration / 1000));
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        betterVideoPlayer.setControlsEnabled(true);
        if (!betterVideoPlayer.f15875c0) {
            try {
                betterVideoPlayer.f15906z.play();
                betterVideoPlayer.f15906z.pause();
                return;
            } catch (Exception e7) {
                e7.printStackTrace();
                return;
            }
        }
        betterVideoPlayer.start();
        long j7 = betterVideoPlayer.f15880f0;
        if (j7 > 0) {
            betterVideoPlayer.seekTo(j7);
            betterVideoPlayer.f15880f0 = -1L;
        }
    }

    private void setControlsEnabled(boolean z6) {
        SeekBar seekBar = this.f15851C;
        if (seekBar == null) {
            return;
        }
        seekBar.setEnabled(z6);
        this.f15855G.setEnabled(z6);
        this.f15855G.setAlpha(z6 ? 1.0f : 0.4f);
        this.f15904x.setEnabled(z6);
    }

    public void addListener(Player.Listener listener) {
        if (listener != null) {
            this.f15906z.addListener(listener);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0029, code lost:
    
        if (r0 > r4) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x002b, code lost:
    
        r13 = (int) (r12 / r0);
        r12 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0030, code lost:
    
        r12 = (int) (r2 * r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0038, code lost:
    
        if (r0 > r4) goto L16;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(int r10, int r11, int r12, int r13) {
        /*
            r9 = this;
            if (r12 <= 0) goto L92
            if (r13 <= 0) goto L92
            if (r10 <= 0) goto L92
            if (r11 > 0) goto La
            goto L92
        La:
            double r0 = (double) r12
            double r12 = (double) r13
            double r0 = r0 / r12
            double r12 = (double) r10
            double r2 = (double) r11
            double r4 = r12 / r2
            android.content.res.Resources r6 = r9.getResources()
            android.util.DisplayMetrics r6 = r6.getDisplayMetrics()
            int r6 = r6.widthPixels
            r7 = 2
            int r6 = r6 / r7
            if (r10 >= r6) goto L20
            goto L34
        L20:
            int r6 = r9.f15873b
            r8 = 1
            if (r6 == r8) goto L36
            if (r6 == r7) goto L34
            int r4 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r4 <= 0) goto L30
        L2b:
            double r12 = r12 / r0
            int r12 = (int) r12
            r13 = r12
            r12 = r10
            goto L3b
        L30:
            double r2 = r2 * r0
            int r12 = (int) r2
        L32:
            r13 = r11
            goto L3b
        L34:
            r12 = r10
            goto L32
        L36:
            int r4 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r4 <= 0) goto L2b
            goto L30
        L3b:
            android.view.SurfaceView r0 = r9.f15850B
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            boolean r1 = r0 instanceof android.widget.FrameLayout.LayoutParams
            if (r1 == 0) goto L55
            android.widget.FrameLayout$LayoutParams r0 = (android.widget.FrameLayout.LayoutParams) r0
            r0.width = r12
            r0.height = r13
            r1 = 17
            r0.gravity = r1
            android.view.SurfaceView r1 = r9.f15850B
            r1.setLayoutParams(r0)
            goto L5e
        L55:
            r0.width = r12
            r0.height = r13
            android.view.SurfaceView r1 = r9.f15850B
            r1.setLayoutParams(r0)
        L5e:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "AspectRatio Applied: Mode="
            r0.<init>(r1)
            int r1 = r9.f15873b
            r0.append(r1)
            java.lang.String r1 = " View="
            r0.append(r1)
            r0.append(r10)
            java.lang.String r10 = "x"
            r0.append(r10)
            r0.append(r11)
            java.lang.String r11 = " Surface="
            r0.append(r11)
            r0.append(r12)
            r0.append(r10)
            r0.append(r13)
            java.lang.String r10 = r0.toString()
            r11 = 0
            java.lang.Object[] r11 = new java.lang.Object[r11]
            LOG(r10, r11)
        L92:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: flix.com.vision.bvp.BetterVideoPlayer.c(int, int, int, int):void");
    }

    public void changeEncoding(String str) {
        this.f15888m.changeEncoding(str);
    }

    public final void d(View view, int i2) {
        this.f15861M = i2 > 0 ? 0 : 4;
        view.animate().alpha(i2).setListener(new g(this, view));
    }

    public void disableControls() {
        this.f15876d0 = true;
        this.f15902v.setVisibility(8);
        this.f15905y.setVisibility(8);
        this.f15904x.setOnTouchListener(null);
        this.f15904x.setClickable(false);
    }

    public final DefaultDataSource.Factory e(Map map) {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        OkHttpDataSource.Factory factory = new OkHttpDataSource.Factory(builder.connectTimeout(15L, timeUnit).readTimeout(30L, timeUnit).connectionPool(new ConnectionPool(5, 5L, TimeUnit.MINUTES)).build());
        factory.setUserAgent(Util.getUserAgent(this.f15900t, "FlixVision"));
        if (map != null && !map.isEmpty()) {
            factory.setDefaultRequestProperties((Map<String, String>) map);
        }
        return new DefaultDataSource.Factory(this.f15900t, factory);
    }

    public void enableControls() {
        this.f15876d0 = false;
        this.f15904x.setClickable(true);
        this.f15904x.setOnTouchListener(this.f15889m0);
    }

    public void enableSwipeGestures(Window window) {
        this.f15874b0 = true;
        this.f15901u = window;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0068 A[Catch: Exception -> 0x0055, TryCatch #0 {Exception -> 0x0055, blocks: (B:2:0x0000, B:4:0x0022, B:6:0x002a, B:8:0x0032, B:10:0x003a, B:12:0x0042, B:14:0x004a, B:19:0x005a, B:24:0x0068, B:28:0x0081, B:30:0x008b), top: B:1:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.media3.exoplayer.source.BaseMediaSource f(android.net.Uri r6, java.util.Map r7) {
        /*
            r5 = this;
            java.lang.String r0 = r6.toString()     // Catch: java.lang.Exception -> L55
            java.lang.String r0 = r0.toLowerCase()     // Catch: java.lang.Exception -> L55
            androidx.media3.datasource.DefaultDataSource$Factory r7 = r5.e(r7)     // Catch: java.lang.Exception -> L55
            androidx.media3.common.MediaItem$Builder r1 = new androidx.media3.common.MediaItem$Builder     // Catch: java.lang.Exception -> L55
            r1.<init>()     // Catch: java.lang.Exception -> L55
            androidx.media3.common.MediaItem$Builder r1 = r1.setUri(r6)     // Catch: java.lang.Exception -> L55
            androidx.media3.common.MediaItem r1 = r1.build()     // Catch: java.lang.Exception -> L55
            int r6 = androidx.media3.common.util.Util.inferContentType(r6)     // Catch: java.lang.Exception -> L55
            r2 = 2
            r3 = 0
            r4 = 1
            if (r6 == r2) goto L57
            java.lang.String r2 = ".m3u8"
            boolean r2 = r0.contains(r2)     // Catch: java.lang.Exception -> L55
            if (r2 != 0) goto L57
            java.lang.String r2 = "data:application"
            boolean r2 = r0.startsWith(r2)     // Catch: java.lang.Exception -> L55
            if (r2 != 0) goto L57
            java.lang.String r2 = "/m3u8/"
            boolean r2 = r0.contains(r2)     // Catch: java.lang.Exception -> L55
            if (r2 != 0) goto L57
            java.lang.String r2 = "/hls/"
            boolean r2 = r0.contains(r2)     // Catch: java.lang.Exception -> L55
            if (r2 != 0) goto L57
            java.lang.String r2 = "playlist"
            boolean r2 = r0.contains(r2)     // Catch: java.lang.Exception -> L55
            if (r2 != 0) goto L57
            java.lang.String r2 = "m3u8"
            boolean r2 = r0.endsWith(r2)     // Catch: java.lang.Exception -> L55
            if (r2 == 0) goto L53
            goto L57
        L53:
            r2 = r3
            goto L58
        L55:
            r6 = move-exception
            goto L95
        L57:
            r2 = r4
        L58:
            if (r6 == 0) goto L65
            java.lang.String r6 = ".mpd"
            boolean r6 = r0.contains(r6)     // Catch: java.lang.Exception -> L55
            if (r6 == 0) goto L63
            goto L65
        L63:
            r6 = r3
            goto L66
        L65:
            r6 = r4
        L66:
            if (r2 == 0) goto L7f
            androidx.media3.exoplayer.hls.HlsMediaSource$Factory r6 = new androidx.media3.exoplayer.hls.HlsMediaSource$Factory     // Catch: java.lang.Exception -> L55
            r6.<init>(r7)     // Catch: java.lang.Exception -> L55
            androidx.media3.exoplayer.hls.DefaultHlsExtractorFactory r7 = new androidx.media3.exoplayer.hls.DefaultHlsExtractorFactory     // Catch: java.lang.Exception -> L55
            r7.<init>(r4, r4)     // Catch: java.lang.Exception -> L55
            androidx.media3.exoplayer.hls.HlsMediaSource$Factory r6 = r6.setExtractorFactory(r7)     // Catch: java.lang.Exception -> L55
            androidx.media3.exoplayer.hls.HlsMediaSource$Factory r6 = r6.setAllowChunklessPreparation(r3)     // Catch: java.lang.Exception -> L55
            androidx.media3.exoplayer.hls.HlsMediaSource r6 = r6.createMediaSource(r1)     // Catch: java.lang.Exception -> L55
            return r6
        L7f:
            if (r6 == 0) goto L8b
            androidx.media3.exoplayer.dash.DashMediaSource$Factory r6 = new androidx.media3.exoplayer.dash.DashMediaSource$Factory     // Catch: java.lang.Exception -> L55
            r6.<init>(r7)     // Catch: java.lang.Exception -> L55
            androidx.media3.exoplayer.dash.DashMediaSource r6 = r6.createMediaSource(r1)     // Catch: java.lang.Exception -> L55
            return r6
        L8b:
            androidx.media3.exoplayer.source.ProgressiveMediaSource$Factory r6 = new androidx.media3.exoplayer.source.ProgressiveMediaSource$Factory     // Catch: java.lang.Exception -> L55
            r6.<init>(r7)     // Catch: java.lang.Exception -> L55
            androidx.media3.exoplayer.source.ProgressiveMediaSource r6 = r6.createMediaSource(r1)     // Catch: java.lang.Exception -> L55
            return r6
        L95:
            java.lang.RuntimeException r7 = new java.lang.RuntimeException
            java.lang.String r0 = "Failed to create MediaSource"
            r7.<init>(r0, r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: flix.com.vision.bvp.BetterVideoPlayer.f(android.net.Uri, java.util.Map):androidx.media3.exoplayer.source.BaseMediaSource");
    }

    public final void g() {
        if (this.f15905y.getVisibility() == 0) {
            this.f15905y.animate().cancel();
            this.f15905y.setAlpha(1.0f);
            this.f15905y.setVisibility(0);
            this.f15905y.animate().alpha(0.0f).setInterpolator(new DecelerateInterpolator()).setListener(new i(this)).start();
        }
    }

    public ArrayList<l> getAvailableAudioTracks() {
        ArrayList<l> arrayList = new ArrayList<>();
        ExoPlayer exoPlayer = this.f15906z;
        if (exoPlayer != null) {
            Tracks currentTracks = exoPlayer.getCurrentTracks();
            for (int i2 = 0; i2 < currentTracks.getGroups().size(); i2++) {
                Tracks.Group group = currentTracks.getGroups().get(i2);
                if (group.getType() == 1) {
                    for (int i7 = 0; i7 < group.length; i7++) {
                        Format trackFormat = group.getTrackFormat(i7);
                        String str = trackFormat.language;
                        String upperCase = str != null ? str.toUpperCase() : "Unknown";
                        String str2 = trackFormat.sampleMimeType;
                        arrayList.add(new l(i2, i7, upperCase + " (" + (str2 != null ? str2.replace("audio/", "") : "raw") + ")", group.isTrackSelected(i7)));
                    }
                }
            }
        }
        return arrayList;
    }

    public long getCurrentPosition() {
        ExoPlayer exoPlayer = this.f15906z;
        if (exoPlayer == null) {
            return -1L;
        }
        return exoPlayer.getCurrentPosition();
    }

    public long getDuration() {
        ExoPlayer exoPlayer = this.f15906z;
        if (exoPlayer == null) {
            return -1L;
        }
        return exoPlayer.getDuration();
    }

    public Player getExoPlayer() {
        return this.f15906z;
    }

    public int getHideControlsDuration() {
        return this.f15881g0;
    }

    public long getOffset() {
        return this.f15888m.f15979q;
    }

    public Uri getSource() {
        return this.f15862N;
    }

    public View getSubtitleView() {
        return this.f15888m;
    }

    public Toolbar getToolbar() {
        return this.f15893p;
    }

    public void getTracks() {
        try {
            ExoPlayer exoPlayer = this.f15906z;
            if (exoPlayer == null) {
                return;
            }
            x0 it = exoPlayer.getCurrentTracks().getGroups().iterator();
            while (it.hasNext()) {
                Tracks.Group group = (Tracks.Group) it.next();
                if (group.getType() == 3) {
                    for (int i2 = 0; i2 < group.length; i2++) {
                        group.getTrackFormat(i2);
                    }
                }
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public ExoPlayer getVideoView() {
        return this.f15906z;
    }

    public final void h(Context context, AttributeSet attributeSet) {
        setBackgroundColor(-16777216);
        if (!App.f14424I) {
            this.f15873b = 1;
        }
        this.f15900t = context;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.BetterVideoPlayer, 0, 0);
            try {
                try {
                    String string = obtainStyledAttributes.getString(R.styleable.BetterVideoPlayer_bvp_source);
                    if (string != null && !string.trim().isEmpty()) {
                        this.f15862N = Uri.parse(string);
                    }
                    String string2 = obtainStyledAttributes.getString(R.styleable.BetterVideoPlayer_bvp_title);
                    if (string2 != null && !string2.trim().isEmpty()) {
                        this.f15895q = string2;
                    }
                    this.f15865Q = obtainStyledAttributes.getDrawable(R.styleable.BetterVideoPlayer_bvp_playDrawable);
                    this.f15866R = obtainStyledAttributes.getDrawable(R.styleable.BetterVideoPlayer_bvp_pauseDrawable);
                    this.f15867S = obtainStyledAttributes.getDrawable(R.styleable.BetterVideoPlayer_bvp_restartDrawable);
                    this.f15878e0 = 7;
                    this.f15881g0 = obtainStyledAttributes.getInteger(R.styleable.BetterVideoPlayer_bvp_hideControlsDuration, this.f15881g0);
                    this.f15869U = obtainStyledAttributes.getBoolean(R.styleable.BetterVideoPlayer_bvp_hideControlsOnPlay, false);
                    this.f15875c0 = obtainStyledAttributes.getBoolean(R.styleable.BetterVideoPlayer_bvp_autoPlay, false);
                    this.f15868T = obtainStyledAttributes.getBoolean(R.styleable.BetterVideoPlayer_bvp_loop, false);
                    this.f15870V = obtainStyledAttributes.getBoolean(R.styleable.BetterVideoPlayer_bvp_showTotalDuration, false);
                    this.f15871W = obtainStyledAttributes.getBoolean(R.styleable.BetterVideoPlayer_bvp_showBottomProgressBar, false);
                    this.f15874b0 = obtainStyledAttributes.getBoolean(R.styleable.BetterVideoPlayer_bvp_swipeGesturesEnabled, false);
                    this.f15872a0 = obtainStyledAttributes.getBoolean(R.styleable.BetterVideoPlayer_bvp_showToolbar, true);
                    this.f15876d0 = obtainStyledAttributes.getBoolean(R.styleable.BetterVideoPlayer_bvp_disableControls, false);
                    this.f15897r = obtainStyledAttributes.getDimensionPixelSize(R.styleable.BetterVideoPlayer_bvp_captionSize, getResources().getDimensionPixelSize(R.dimen.bvp_subtitle_size));
                    this.f15899s = obtainStyledAttributes.getColor(R.styleable.BetterVideoPlayer_bvp_captionColor, h.getColor(context, R.color.bvp_subtitle_color));
                } catch (Exception e3) {
                    LOG("Exception " + e3.getMessage(), new Object[0]);
                    e3.printStackTrace();
                }
                obtainStyledAttributes.recycle();
            } catch (Throwable th) {
                obtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            this.f15897r = getResources().getDimensionPixelSize(R.dimen.bvp_subtitle_size);
            this.f15899s = h.getColor(context, R.color.bvp_subtitle_color);
        }
        if (this.f15865Q == null) {
            this.f15865Q = h.getDrawable(context, R.drawable.bvp_action_play);
        }
        if (this.f15866R == null) {
            this.f15866R = h.getDrawable(context, R.drawable.bvp_action_pause);
        }
        if (this.f15867S == null) {
            this.f15867S = h.getDrawable(context, R.drawable.bvp_action_restart);
        }
        this.f15864P = new M4.b();
        try {
            ExoPlayer exoPlayer = this.f15906z;
            if (exoPlayer != null) {
                exoPlayer.release();
            }
            DefaultRenderersFactory defaultRenderersFactory = new DefaultRenderersFactory(this.f15900t);
            defaultRenderersFactory.setExtensionRendererMode(1);
            defaultRenderersFactory.setEnableAudioFloatOutput(false);
            DefaultTrackSelector defaultTrackSelector = new DefaultTrackSelector(this.f15900t);
            defaultTrackSelector.setParameters(defaultTrackSelector.buildUponParameters().setPreferredVideoMimeType(MimeTypes.VIDEO_H265).setTunnelingEnabled(false).build());
            ExoPlayer build = new ExoPlayer.Builder(this.f15900t).setLoadControl(new DefaultLoadControl.Builder().setAllocator(new DefaultAllocator(true, 524288)).setBufferDurationsMs(40000, 90000, 2000, 10000).setTargetBufferBytes(C.BUFFER_FLAG_FIRST_SAMPLE).setPrioritizeTimeOverSizeThresholds(true).build()).setRenderersFactory(defaultRenderersFactory).setTrackSelector(defaultTrackSelector).build();
            this.f15906z = build;
            build.setAudioAttributes(new AudioAttributes.Builder().setUsage(1).setContentType(3).build(), true);
            d dVar = new d(this);
            this.f15849A = dVar;
            this.f15906z.addListener(dVar);
            CaptionsView captionsView = this.f15888m;
            if (captionsView != null) {
                captionsView.setPlayer(this.f15906z);
            }
            LOG("Media3 ExoPlayer initialized (Standard Config)", new Object[0]);
        } catch (Exception e7) {
            LOG("Error initializing Media3 player: " + e7.getMessage(), new Object[0]);
            e7.printStackTrace();
        }
    }

    public void hideControls() {
        this.f15864P.onToggleControls(false);
        if (this.f15876d0 || !isControlsShown() || this.f15851C == null) {
            return;
        }
        this.f15902v.animate().cancel();
        this.f15902v.setAlpha(1.0f);
        this.f15902v.setTranslationY(0.0f);
        this.f15902v.setVisibility(0);
        this.f15902v.animate().alpha(0.0f).translationY(this.f15902v.getHeight()).setInterpolator(new DecelerateInterpolator()).setListener(new K4.h(this)).start();
        CaptionsView captionsView = this.f15888m;
        if (captionsView != null) {
            ValueAnimator ofInt = ValueAnimator.ofInt(captionsView.getPaddingBottom(), (int) (getResources().getDisplayMetrics().density * 35.0f));
            ofInt.setDuration(300L);
            ofInt.setInterpolator(new DecelerateInterpolator());
            ofInt.addUpdateListener(new K4.c(this, 1));
            ofInt.start();
        }
        if (this.f15871W) {
            this.f15852D.animate().cancel();
            this.f15852D.setAlpha(0.0f);
            this.f15852D.animate().alpha(1.0f).start();
        }
        g();
    }

    public void hideToolbar() {
        this.f15872a0 = false;
        g();
    }

    public void hideVisualSeek() {
        TextView textView = this.f15879f;
        if (textView != null) {
            d(textView, 0);
        }
        TextView textView2 = this.f15884j;
        if (textView2 != null) {
            d(textView2, 0);
        }
        this.f15896q0 = -1L;
    }

    public boolean isCaptionActive() {
        return this.f15886k0;
    }

    public boolean isControlsShown() {
        View view;
        return (this.f15876d0 || (view = this.f15902v) == null || view.getAlpha() <= 0.5f) ? false : true;
    }

    public boolean isPlaying() {
        ExoPlayer exoPlayer = this.f15906z;
        return exoPlayer != null && exoPlayer.isPlaying();
    }

    public boolean isPrepared() {
        return this.f15906z != null && this.f15856H;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        LOG("Attached to window", new Object[0]);
        if (this.f15906z != null) {
            LOG("player not null on attach", new Object[0]);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != R.id.btnPlayPause) {
            if (view.getId() == R.id.duration) {
                this.f15870V = !this.f15870V;
            }
        } else if (this.f15906z.isPlaying()) {
            pause();
        } else {
            start();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        LOG("Detached from window", new Object[0]);
        release();
        this.f15851C = null;
        this.f15853E = null;
        this.f15854F = null;
        this.f15855G = null;
        this.f15902v = null;
        this.f15904x = null;
        this.f15903w = null;
        Handler handler = this.f15860L;
        if (handler != null) {
            handler.removeCallbacks(this.f15894p0);
            this.f15860L = null;
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        LayoutInflater from = LayoutInflater.from(getContext());
        View inflate = from.inflate(R.layout.bvp_include_surface, (ViewGroup) this, false);
        addView(inflate);
        setKeepScreenOn(true);
        this.f15860L = new Handler();
        this.f15890n = (AudioManager) getContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        new Handler();
        SurfaceView surfaceView = (SurfaceView) inflate.findViewById(R.id.textureview);
        this.f15850B = surfaceView;
        surfaceView.getHolder().addCallback(this);
        this.f15879f = (TextView) inflate.findViewById(R.id.view_forward);
        this.f15884j = (TextView) inflate.findViewById(R.id.view_backward);
        View inflate2 = from.inflate(R.layout.bvp_include_progress, (ViewGroup) this, false);
        this.f15903w = inflate2;
        this.f15852D = (ProgressBar) inflate2.findViewById(R.id.progressBarBottom);
        setLoadingStyle(this.f15878e0);
        TextView textView = (TextView) this.f15903w.findViewById(R.id.position_textview);
        this.f15877e = textView;
        textView.setShadowLayer(3.0f, 3.0f, 3.0f, -16777216);
        addView(this.f15903w);
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.f15904x = frameLayout;
        frameLayout.setForeground(M4.c.resolveDrawable(getContext(), android.R.attr.selectableItemBackground));
        addView(this.f15904x, new ViewGroup.LayoutParams(-1, -1));
        View inflate3 = from.inflate(R.layout.bvp_include_controls, (ViewGroup) this, false);
        this.f15902v = inflate3;
        inflate3.setFocusable(true);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12);
        addView(this.f15902v, layoutParams);
        View inflate4 = from.inflate(R.layout.bvp_include_topbar, (ViewGroup) this, false);
        this.f15905y = inflate4;
        Toolbar toolbar = (Toolbar) inflate4.findViewById(R.id.toolbar);
        this.f15893p = toolbar;
        toolbar.setTitle(this.f15895q);
        this.f15905y.setVisibility(this.f15872a0 ? 0 : 8);
        addView(this.f15905y);
        View inflate5 = from.inflate(R.layout.bvp_include_subtitle, (ViewGroup) this, false);
        ViewGroup.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        CaptionsView captionsView = (CaptionsView) inflate5.findViewById(R.id.subs_box);
        this.f15888m = captionsView;
        captionsView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        ExoPlayer exoPlayer = this.f15906z;
        if (exoPlayer != null) {
            this.f15888m.setPlayer(exoPlayer);
        }
        this.f15888m.setTextSize(0, this.f15897r);
        this.f15888m.setTextColor(this.f15899s);
        addView(inflate5, layoutParams2);
        SeekBar seekBar = (SeekBar) this.f15902v.findViewById(R.id.seeker);
        this.f15851C = seekBar;
        seekBar.setOnSeekBarChangeListener(this);
        TextView textView2 = (TextView) this.f15902v.findViewById(R.id.position);
        this.f15853E = textView2;
        textView2.setText(M4.c.getDurationString(0L, false));
        TextView textView3 = (TextView) this.f15902v.findViewById(R.id.duration);
        this.f15854F = textView3;
        textView3.setText(M4.c.getDurationString(0L, true));
        this.f15854F.setOnClickListener(this);
        ImageButton imageButton = (ImageButton) this.f15902v.findViewById(R.id.btnPlayPause);
        this.f15855G = imageButton;
        imageButton.setOnClickListener(this);
        this.f15855G.setImageDrawable(this.f15865Q);
        if (this.f15876d0) {
            disableControls();
        } else {
            enableControls();
        }
        setBottomProgressBarVisibility(this.f15871W);
        setControlsEnabled(false);
        prepare();
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i2, boolean z6) {
        if (z6) {
            long j7 = i2;
            seekTo(j7);
            this.f15877e.setText(M4.c.getDurationString(j7, false));
        }
        m mVar = this.f15898r0;
        if (mVar != null) {
            mVar.onProgressUpdateChanged(i2, -1);
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        boolean isPlaying = isPlaying();
        this.f15857I = isPlaying;
        if (isPlaying) {
            this.f15906z.pause();
        }
        this.f15877e.setVisibility(0);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        if (this.f15857I) {
            this.f15906z.play();
        }
        this.f15877e.setVisibility(8);
    }

    public void pause() {
        if (this.f15906z == null || !isPlaying()) {
            return;
        }
        this.f15906z.pause();
        this.f15864P.onPaused(this);
        Handler handler = this.f15860L;
        if (handler == null) {
            return;
        }
        handler.removeCallbacks(this.f15887l0);
        this.f15860L.removeCallbacks(this.f15894p0);
        this.f15855G.setImageDrawable(this.f15865Q);
    }

    public void prepare() {
        if (this.f15862N == null || this.f15906z == null) {
            return;
        }
        try {
            hideControls();
            this.f15864P.onPreparing();
            SurfaceView surfaceView = this.f15850B;
            if (surfaceView != null && surfaceView.getHolder().getSurface().isValid()) {
                this.f15906z.setVideoSurfaceHolder(this.f15850B.getHolder());
            }
            BaseMediaSource f3 = f(this.f15862N, this.f15863O);
            LOG("Preparing media source: " + this.f15862N.toString(), new Object[0]);
            this.f15906z.setMediaSource(f3);
            this.f15906z.prepare();
        } catch (Exception e3) {
            LOG("Error preparing: " + e3.getMessage(), new Object[0]);
            K4.b bVar = this.f15864P;
            if (bVar == null) {
                throw new RuntimeException(e3);
            }
            bVar.onError(this, e3);
        }
    }

    public void release() {
        this.f15856H = false;
        ExoPlayer exoPlayer = this.f15906z;
        if (exoPlayer != null) {
            try {
                d dVar = this.f15849A;
                if (dVar != null) {
                    exoPlayer.removeListener(dVar);
                }
                this.f15906z.release();
                this.f15906z = null;
            } catch (Throwable unused) {
            }
            this.f15906z = null;
        }
        Handler handler = this.f15860L;
        if (handler != null) {
            handler.removeCallbacks(this.f15894p0);
            this.f15860L = null;
        }
        LOG("Released player and Handler", new Object[0]);
    }

    public void removeCaptions() {
        setCaptions(null, null, null);
        this.f15886k0 = false;
    }

    public void reset() {
        ExoPlayer exoPlayer = this.f15906z;
        if (exoPlayer == null) {
            return;
        }
        this.f15856H = false;
        try {
            exoPlayer.stop();
            this.f15906z.clearMediaItems();
        } catch (Exception e3) {
            LOG("Error resetting player: " + e3.getMessage(), new Object[0]);
        }
        this.f15862N = null;
    }

    public void seekTo(long j7) {
        ExoPlayer exoPlayer = this.f15906z;
        if (exoPlayer == null) {
            return;
        }
        exoPlayer.seekTo(j7);
        LOG("Seeking to position: " + j7, new Object[0]);
        Handler handler = this.f15860L;
        if (handler != null) {
            k kVar = this.f15894p0;
            handler.removeCallbacks(kVar);
            this.f15860L.post(kVar);
        }
    }

    public void setAudioTrack(l lVar) {
        ExoPlayer exoPlayer = this.f15906z;
        if (exoPlayer == null) {
            return;
        }
        exoPlayer.setTrackSelectionParameters(exoPlayer.getTrackSelectionParameters().buildUpon().setOverrideForType(new TrackSelectionOverride(this.f15906z.getCurrentTracks().getGroups().get(lVar.f1799a).getMediaTrackGroup(), lVar.f1800b)).build());
    }

    public void setAutoPlay(boolean z6) {
        this.f15875c0 = z6;
    }

    public void setBottomProgressBarVisibility(boolean z6) {
        this.f15871W = z6;
        if (z6) {
            this.f15852D.setVisibility(0);
        } else {
            this.f15852D.setVisibility(8);
        }
    }

    public void setCallback(K4.b bVar) {
        this.f15864P = bVar;
    }

    public void setCaptionLoadListener(L4.b bVar) {
        this.f15888m.setCaptionsViewLoadListener(bVar);
    }

    public void setCaptions(Uri uri, CaptionsView.CMime cMime, String str) {
        this.f15888m.setCaptionsSource(uri, cMime, str);
        this.f15888m.f15979q = 0L;
        this.f15886k0 = true;
    }

    public void setCaptionsPath(String str, CaptionsView.CMime cMime, String str2) {
        this.f15888m.setCaptionsSource(str, cMime, str2);
        this.f15888m.f15979q = 0L;
        this.f15886k0 = true;
    }

    public void setDoubleTap(int i2) {
        this.f15904x.setOnTouchListener(new K3.i(this, 1));
    }

    public void setEnableClick(boolean z6) {
        if (z6) {
            return;
        }
        this.f15904x.setVisibility(8);
    }

    public void setEncoding(String str) {
        if (str == null) {
            return;
        }
        try {
            CaptionsView.f15978w = str;
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public void setHideControlsDuration(int i2) {
        this.f15881g0 = i2;
    }

    public void setHideControlsOnPlay(boolean z6) {
        this.f15869U = z6;
    }

    public void setInitialPosition(int i2) {
        this.f15880f0 = i2;
    }

    public void setLoadingStyle(int i2) {
        switch (i2) {
            case 0:
                new O2.h();
                break;
            case 1:
                new r();
                break;
            case 2:
                new x();
                break;
            case 3:
                new v();
                break;
            case 4:
                new o();
                break;
            case 5:
                new O2.b();
                break;
            case 6:
                new t();
                break;
            case 7:
                new O2.d();
                break;
            case 8:
                new O2.f();
                break;
            case 9:
                new O2.j();
                break;
            case 10:
                new q();
                break;
            default:
                new t();
                break;
        }
    }

    public void setLoop(boolean z6) {
        this.f15868T = z6;
    }

    public void setOffSet(long j7) {
        this.f15888m.f15979q = j7;
    }

    public void setPreviewImage(Bitmap bitmap) {
        LOG("Preview image set (stored for future use)", new Object[0]);
    }

    public void setProgressCallback(K4.x xVar) {
    }

    public void setResizeMode(int i2) {
        this.f15873b = i2;
        post(new RunnableC0041d(this, 2));
    }

    public void setSource(Uri uri) {
        this.f15862N = uri;
        this.f15892o0 = -1L;
        if (this.f15906z != null) {
            prepare();
        }
    }

    public void setSubColor(int i2) {
        this.f15888m.setTextColor(h.getColor(this.f15900t, i2));
    }

    public void setSubSize(int i2) {
        this.f15888m.setTextSize(0, i2);
    }

    public void setTVMode(boolean z6) {
        this.f15902v.setVisibility(8);
        this.f15851C.setVisibility(8);
        this.f15853E.setVisibility(8);
        this.f15854F.setVisibility(8);
        this.f15852D.setVisibility(8);
        this.f15891n0 = true;
        setLoop(true);
    }

    public void setVideoView(ExoPlayer exoPlayer) {
        this.f15906z = exoPlayer;
    }

    public void setVolume(float f3) {
        ExoPlayer exoPlayer = this.f15906z;
        if (exoPlayer == null || !this.f15856H) {
            return;
        }
        exoPlayer.setVolume(f3);
    }

    public void showControls() {
        this.f15864P.onToggleControls(true);
        if (this.f15876d0 || isControlsShown() || this.f15851C == null) {
            return;
        }
        this.f15902v.animate().cancel();
        this.f15902v.setAlpha(0.0f);
        this.f15902v.setVisibility(0);
        this.f15902v.animate().alpha(1.0f).translationY(0.0f).setListener(null).setInterpolator(new DecelerateInterpolator()).start();
        ((View) this.f15888m.getParent()).animate().cancel();
        if (this.f15888m != null) {
            int i2 = (int) (getResources().getDisplayMetrics().density * 35.0f);
            ValueAnimator ofInt = ValueAnimator.ofInt(i2, this.f15902v.getHeight() + i2);
            ofInt.setDuration(300L);
            ofInt.setInterpolator(new DecelerateInterpolator());
            ofInt.addUpdateListener(new K4.c(this, 0));
            ofInt.start();
        }
        if (this.f15871W) {
            this.f15852D.animate().cancel();
            this.f15852D.setAlpha(1.0f);
            this.f15852D.animate().alpha(0.0f).start();
        }
        if (this.f15872a0) {
            this.f15905y.animate().cancel();
            this.f15905y.setAlpha(0.0f);
            this.f15905y.setVisibility(0);
            this.f15905y.animate().alpha(1.0f).setListener(null).setInterpolator(new DecelerateInterpolator()).start();
        }
        this.f15902v.requestFocus();
    }

    public void showToolbar() {
        this.f15872a0 = true;
    }

    public void start() {
        ExoPlayer exoPlayer = this.f15906z;
        if (exoPlayer == null) {
            return;
        }
        if (this.f15869U && !this.f15876d0 && !exoPlayer.isPlaying()) {
            this.f15860L.postDelayed(this.f15887l0, 500L);
        }
        this.f15906z.play();
        this.f15864P.onStarted(this);
        if (this.f15860L == null) {
            this.f15860L = new Handler();
        }
        this.f15860L.post(this.f15894p0);
        this.f15855G.setImageDrawable(this.f15866R);
    }

    public void stop() {
        ExoPlayer exoPlayer = this.f15906z;
        if (exoPlayer == null) {
            return;
        }
        try {
            exoPlayer.stop();
        } catch (Throwable unused) {
        }
        Handler handler = this.f15860L;
        if (handler == null) {
            return;
        }
        handler.removeCallbacks(this.f15887l0);
        this.f15860L.removeCallbacks(this.f15894p0);
        this.f15855G.setImageDrawable(this.f15866R);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i7, int i8) {
        Format videoFormat;
        int i9;
        int i10;
        LOG("Surface changed: %dx%d", Integer.valueOf(i7), Integer.valueOf(i8));
        if (this.f15858J == 0 || this.f15859K == 0) {
            this.f15858J = i7;
            this.f15859K = i8;
        }
        ExoPlayer exoPlayer = this.f15906z;
        if (exoPlayer == null || exoPlayer.getVideoFormat() == null || (i9 = (videoFormat = this.f15906z.getVideoFormat()).width) <= 0 || (i10 = videoFormat.height) <= 0) {
            return;
        }
        c(i7, i8, i9, i10);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        LOG("Surface created", new Object[0]);
        ExoPlayer exoPlayer = this.f15906z;
        if (exoPlayer != null) {
            exoPlayer.setVideoSurfaceHolder(surfaceHolder);
        }
        if (this.f15856H) {
            return;
        }
        prepare();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        LOG("Surface destroyed", new Object[0]);
        ExoPlayer exoPlayer = this.f15906z;
        if (exoPlayer != null) {
            exoPlayer.clearVideoSurfaceHolder(surfaceHolder);
        }
    }

    public int toggleAspectRatio() {
        Format videoFormat;
        int i2;
        int i7;
        int i8 = this.f15873b + 1;
        this.f15873b = i8;
        if (i8 > 2) {
            this.f15873b = 0;
        }
        ExoPlayer exoPlayer = this.f15906z;
        if (exoPlayer != null && exoPlayer.getVideoFormat() != null && (i2 = (videoFormat = this.f15906z.getVideoFormat()).width) > 0 && (i7 = videoFormat.height) > 0) {
            c(this.f15858J, this.f15859K, i2, i7);
        }
        return this.f15873b;
    }

    public void toggleControls() {
        if (this.f15876d0) {
            return;
        }
        if (isControlsShown()) {
            hideControls();
            return;
        }
        if (this.f15881g0 >= 0) {
            try {
                Handler handler = this.f15860L;
                j jVar = this.f15887l0;
                handler.removeCallbacks(jVar);
                this.f15860L.postDelayed(jVar, this.f15881g0);
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
        showControls();
    }

    public void updateVisualSeek(long j7) {
        if (this.f15851C == null || this.f15853E == null) {
            return;
        }
        Handler handler = this.f15860L;
        if (handler != null) {
            handler.removeCallbacks(this.f15894p0);
        }
        this.f15851C.setProgress((int) j7);
        this.f15853E.setText(M4.c.getDurationString(j7, false));
        String durationString = M4.c.getDurationString(j7, false);
        if (this.f15879f.getVisibility() != 0 && this.f15884j.getVisibility() != 0) {
            this.f15896q0 = this.f15906z.getCurrentPosition();
        }
        if (j7 >= this.f15896q0) {
            TextView textView = this.f15879f;
            if (textView != null) {
                textView.setVisibility(0);
                this.f15879f.setText(durationString);
                this.f15879f.animate().cancel();
                this.f15879f.setAlpha(1.0f);
            }
            TextView textView2 = this.f15884j;
            if (textView2 != null) {
                textView2.setVisibility(8);
            }
        } else {
            TextView textView3 = this.f15884j;
            if (textView3 != null) {
                textView3.setVisibility(0);
                this.f15884j.setText(durationString);
                this.f15884j.animate().cancel();
                this.f15884j.setAlpha(1.0f);
            }
            TextView textView4 = this.f15879f;
            if (textView4 != null) {
                textView4.setVisibility(8);
            }
        }
        if (isControlsShown()) {
            return;
        }
        showControls();
    }

    public void setProgressCallback(m mVar) {
        this.f15898r0 = mVar;
    }

    public void setSource(Uri uri, Map<String, String> map) {
        this.f15863O = map;
        setSource(uri);
    }
}

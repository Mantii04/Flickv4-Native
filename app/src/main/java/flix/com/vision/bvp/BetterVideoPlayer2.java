package flix.com.vision.bvp;

import A.h;
import A.i;
import K4.q;
import K4.r;
import K4.s;
import K4.t;
import K4.u;
import K4.v;
import K4.w;
import L4.d;
import O2.f;
import O2.j;
import O2.o;
import O2.x;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.media3.common.MimeTypes;
import com.github.ybq.android.spinkit.SpinKitView;
import cz.msebera.android.httpclient.HttpHost;
import flix.com.vision.R;
import flix.com.vision.bvp.subtitle.CaptionsView2;
import java.io.IOException;
import java.util.Map;

/* loaded from: classes2.dex */
public class BetterVideoPlayer2 extends RelativeLayout implements TextureView.SurfaceTextureListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnVideoSizeChangedListener, MediaPlayer.OnErrorListener, View.OnClickListener, SeekBar.OnSeekBarChangeListener {

    /* renamed from: A, reason: collision with root package name */
    public Surface f15907A;

    /* renamed from: B, reason: collision with root package name */
    public SeekBar f15908B;

    /* renamed from: C, reason: collision with root package name */
    public ProgressBar f15909C;

    /* renamed from: D, reason: collision with root package name */
    public TextView f15910D;

    /* renamed from: E, reason: collision with root package name */
    public TextView f15911E;

    /* renamed from: F, reason: collision with root package name */
    public ImageButton f15912F;

    /* renamed from: G, reason: collision with root package name */
    public boolean f15913G;

    /* renamed from: H, reason: collision with root package name */
    public boolean f15914H;

    /* renamed from: I, reason: collision with root package name */
    public boolean f15915I;

    /* renamed from: J, reason: collision with root package name */
    public int f15916J;

    /* renamed from: K, reason: collision with root package name */
    public int f15917K;

    /* renamed from: L, reason: collision with root package name */
    public Handler f15918L;

    /* renamed from: M, reason: collision with root package name */
    public int f15919M;

    /* renamed from: N, reason: collision with root package name */
    public Uri f15920N;

    /* renamed from: O, reason: collision with root package name */
    public Map f15921O;

    /* renamed from: P, reason: collision with root package name */
    public K4.a f15922P;

    /* renamed from: Q, reason: collision with root package name */
    public final Drawable f15923Q;

    /* renamed from: R, reason: collision with root package name */
    public final Drawable f15924R;

    /* renamed from: S, reason: collision with root package name */
    public final Drawable f15925S;

    /* renamed from: T, reason: collision with root package name */
    public boolean f15926T;

    /* renamed from: U, reason: collision with root package name */
    public boolean f15927U;

    /* renamed from: V, reason: collision with root package name */
    public boolean f15928V;

    /* renamed from: W, reason: collision with root package name */
    public boolean f15929W;

    /* renamed from: a0, reason: collision with root package name */
    public final boolean f15930a0;

    /* renamed from: b, reason: collision with root package name */
    public SpinKitView f15931b;

    /* renamed from: b0, reason: collision with root package name */
    public final boolean f15932b0;

    /* renamed from: c0, reason: collision with root package name */
    public boolean f15933c0;

    /* renamed from: d0, reason: collision with root package name */
    public boolean f15934d0;

    /* renamed from: e, reason: collision with root package name */
    public TextView f15935e;

    /* renamed from: e0, reason: collision with root package name */
    public int f15936e0;

    /* renamed from: f, reason: collision with root package name */
    public TextView f15937f;

    /* renamed from: f0, reason: collision with root package name */
    public int f15938f0;

    /* renamed from: g0, reason: collision with root package name */
    public final v f15939g0;

    /* renamed from: h0, reason: collision with root package name */
    public final b f15940h0;

    /* renamed from: i0, reason: collision with root package name */
    public final w f15941i0;

    /* renamed from: j, reason: collision with root package name */
    public TextView f15942j;

    /* renamed from: m, reason: collision with root package name */
    public CaptionsView2 f15943m;

    /* renamed from: n, reason: collision with root package name */
    public AudioManager f15944n;

    /* renamed from: p, reason: collision with root package name */
    public Toolbar f15945p;

    /* renamed from: q, reason: collision with root package name */
    public final String f15946q;

    /* renamed from: r, reason: collision with root package name */
    public final int f15947r;

    /* renamed from: s, reason: collision with root package name */
    public final int f15948s;

    /* renamed from: t, reason: collision with root package name */
    public final Context f15949t;

    /* renamed from: u, reason: collision with root package name */
    public View f15950u;

    /* renamed from: v, reason: collision with root package name */
    public View f15951v;

    /* renamed from: w, reason: collision with root package name */
    public FrameLayout f15952w;

    /* renamed from: x, reason: collision with root package name */
    public View f15953x;

    /* renamed from: y, reason: collision with root package name */
    public MediaPlayer f15954y;

    /* renamed from: z, reason: collision with root package name */
    public TextureView f15955z;

    public BetterVideoPlayer2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f15926T = false;
        this.f15927U = false;
        this.f15928V = true;
        this.f15929W = false;
        this.f15930a0 = true;
        this.f15932b0 = false;
        this.f15933c0 = false;
        this.f15934d0 = false;
        this.f15936e0 = -1;
        this.f15938f0 = 2000;
        this.f15939g0 = new v(this);
        this.f15940h0 = new b(this);
        this.f15941i0 = new w(this);
        setBackgroundColor(-16777216);
        this.f15949t = context;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.BetterVideoPlayer, 0, 0);
            try {
                try {
                    String string = obtainStyledAttributes.getString(R.styleable.BetterVideoPlayer_bvp_source);
                    if (string != null && !string.trim().isEmpty()) {
                        this.f15920N = Uri.parse(string);
                    }
                    String string2 = obtainStyledAttributes.getString(R.styleable.BetterVideoPlayer_bvp_title);
                    if (string2 != null && !string2.trim().isEmpty()) {
                        this.f15946q = string2;
                    }
                    this.f15923Q = obtainStyledAttributes.getDrawable(R.styleable.BetterVideoPlayer_bvp_playDrawable);
                    this.f15924R = obtainStyledAttributes.getDrawable(R.styleable.BetterVideoPlayer_bvp_pauseDrawable);
                    this.f15925S = obtainStyledAttributes.getDrawable(R.styleable.BetterVideoPlayer_bvp_restartDrawable);
                    this.f15938f0 = obtainStyledAttributes.getInteger(R.styleable.BetterVideoPlayer_bvp_hideControlsDuration, this.f15938f0);
                    this.f15927U = obtainStyledAttributes.getBoolean(R.styleable.BetterVideoPlayer_bvp_hideControlsOnPlay, false);
                    this.f15933c0 = obtainStyledAttributes.getBoolean(R.styleable.BetterVideoPlayer_bvp_autoPlay, false);
                    this.f15926T = obtainStyledAttributes.getBoolean(R.styleable.BetterVideoPlayer_bvp_loop, false);
                    this.f15928V = obtainStyledAttributes.getBoolean(R.styleable.BetterVideoPlayer_bvp_showTotalDuration, false);
                    this.f15929W = obtainStyledAttributes.getBoolean(R.styleable.BetterVideoPlayer_bvp_showBottomProgressBar, false);
                    this.f15932b0 = obtainStyledAttributes.getBoolean(R.styleable.BetterVideoPlayer_bvp_swipeGesturesEnabled, false);
                    this.f15930a0 = obtainStyledAttributes.getBoolean(R.styleable.BetterVideoPlayer_bvp_showToolbar, true);
                    this.f15934d0 = obtainStyledAttributes.getBoolean(R.styleable.BetterVideoPlayer_bvp_disableControls, false);
                    this.f15947r = obtainStyledAttributes.getDimensionPixelSize(R.styleable.BetterVideoPlayer_bvp_captionSize, getResources().getDimensionPixelSize(R.dimen.bvp_subtitle_size));
                    this.f15948s = obtainStyledAttributes.getColor(R.styleable.BetterVideoPlayer_bvp_captionColor, h.getColor(context, R.color.bvp_subtitle_color));
                } catch (Exception e3) {
                    a("Exception " + e3.getMessage(), new Object[0]);
                    e3.printStackTrace();
                }
                obtainStyledAttributes.recycle();
            } catch (Throwable th) {
                obtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            this.f15947r = getResources().getDimensionPixelSize(R.dimen.bvp_subtitle_size);
            this.f15948s = h.getColor(context, R.color.bvp_subtitle_color);
        }
        if (this.f15923Q == null) {
            this.f15923Q = h.getDrawable(context, R.drawable.bvp_action_play);
        }
        if (this.f15924R == null) {
            this.f15924R = h.getDrawable(context, R.drawable.bvp_action_pause);
        }
        if (this.f15925S == null) {
            this.f15925S = h.getDrawable(context, R.drawable.bvp_action_restart);
        }
        this.f15922P = new M4.a();
    }

    public static void a(String str, Object... objArr) {
        if (objArr.length > 0) {
            str = String.format(str, objArr);
        }
        Log.d("BetterVideoPlayer2", str);
    }

    public static void b(BetterVideoPlayer2 betterVideoPlayer2, View view, int i2) {
        betterVideoPlayer2.f15919M = i2 > 0 ? 0 : 4;
        view.animate().alpha(i2).setListener(new r(betterVideoPlayer2, view));
    }

    private void setControlsEnabled(boolean z6) {
        SeekBar seekBar = this.f15908B;
        if (seekBar == null) {
            return;
        }
        seekBar.setEnabled(z6);
        this.f15912F.setEnabled(z6);
        this.f15912F.setAlpha(z6 ? 1.0f : 0.4f);
        this.f15952w.setEnabled(z6);
    }

    public final void c() {
        if (!this.f15913G || this.f15920N == null || this.f15954y == null || this.f15914H) {
            return;
        }
        try {
            hideControls();
            ((M4.a) this.f15922P).onPreparing();
            this.f15954y.setSurface(this.f15907A);
            if (!this.f15920N.getScheme().equals(HttpHost.DEFAULT_SCHEME_NAME) && !this.f15920N.getScheme().equals("https")) {
                a("Loading local URI: " + this.f15920N.toString(), new Object[0]);
                this.f15954y.setDataSource(getContext(), this.f15920N, this.f15921O);
                this.f15954y.prepareAsync();
            }
            a("Loading web URI: " + this.f15920N.toString(), new Object[0]);
            this.f15954y.setDataSource(getContext(), this.f15920N, this.f15921O);
            this.f15954y.prepareAsync();
        } catch (IOException e3) {
            K4.a aVar = this.f15922P;
            if (aVar == null) {
                throw new RuntimeException(e3);
            }
            ((M4.a) aVar).onError();
        }
    }

    public void disableControls() {
        this.f15934d0 = true;
        this.f15950u.setVisibility(8);
        this.f15953x.setVisibility(8);
        this.f15952w.setOnTouchListener(null);
        this.f15952w.setClickable(false);
    }

    public void enableControls() {
        this.f15934d0 = false;
        this.f15952w.setClickable(true);
        this.f15952w.setOnTouchListener(this.f15940h0);
    }

    public int getCurrentPosition() {
        MediaPlayer mediaPlayer = this.f15954y;
        if (mediaPlayer == null) {
            return -1;
        }
        return mediaPlayer.getCurrentPosition();
    }

    public int getDuration() {
        MediaPlayer mediaPlayer = this.f15954y;
        if (mediaPlayer == null) {
            return -1;
        }
        return mediaPlayer.getDuration();
    }

    public int getHideControlsDuration() {
        return this.f15938f0;
    }

    public Toolbar getToolbar() {
        return this.f15945p;
    }

    public void hideControls() {
        ((M4.a) this.f15922P).onToggleControls(false);
        if (this.f15934d0 || !isControlsShown() || this.f15908B == null) {
            return;
        }
        this.f15950u.animate().cancel();
        this.f15950u.setAlpha(1.0f);
        this.f15950u.setTranslationY(0.0f);
        this.f15950u.setVisibility(0);
        this.f15950u.animate().alpha(0.0f).translationY(this.f15950u.getHeight()).setInterpolator(new DecelerateInterpolator()).setListener(new s(this)).start();
        View view = (View) this.f15943m.getParent();
        view.animate().cancel();
        view.animate().translationY(this.f15950u.getHeight()).setInterpolator(new DecelerateInterpolator()).setListener(new t(view)).start();
        if (this.f15929W) {
            this.f15909C.animate().cancel();
            this.f15909C.setAlpha(0.0f);
            this.f15909C.animate().alpha(1.0f).start();
        }
        if (this.f15953x.getVisibility() == 0) {
            this.f15953x.animate().cancel();
            this.f15953x.setAlpha(1.0f);
            this.f15953x.setVisibility(0);
            this.f15953x.animate().alpha(0.0f).setInterpolator(new DecelerateInterpolator()).setListener(new u(this)).start();
        }
    }

    public boolean isControlsShown() {
        View view;
        return (this.f15934d0 || (view = this.f15950u) == null || view.getAlpha() <= 0.5f) ? false : true;
    }

    public boolean isPlaying() {
        MediaPlayer mediaPlayer = this.f15954y;
        return mediaPlayer != null && mediaPlayer.isPlaying();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        a("Attached to window", new Object[0]);
        if (this.f15954y != null) {
            a("mPlayer not null on attach", new Object[0]);
        }
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public void onBufferingUpdate(MediaPlayer mediaPlayer, int i2) {
        a("Buffering: %d%%", Integer.valueOf(i2));
        K4.a aVar = this.f15922P;
        if (aVar != null) {
            ((M4.a) aVar).onBuffering();
        }
        SeekBar seekBar = this.f15908B;
        if (seekBar != null) {
            if (i2 == 100) {
                seekBar.setSecondaryProgress(0);
                this.f15909C.setSecondaryProgress(0);
            } else {
                int max = (int) (seekBar.getMax() * (i2 / 100.0f));
                this.f15908B.setSecondaryProgress(max);
                this.f15909C.setSecondaryProgress(max);
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != R.id.btnPlayPause) {
            if (view.getId() == R.id.duration) {
                this.f15928V = !this.f15928V;
            }
        } else {
            if (this.f15954y.isPlaying()) {
                pause();
                return;
            }
            if (this.f15927U && !this.f15934d0) {
                this.f15918L.postDelayed(this.f15939g0, 500L);
            }
            start();
        }
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        a("onCompletion()", new Object[0]);
        this.f15912F.setImageDrawable(this.f15925S);
        Handler handler = this.f15918L;
        if (handler != null) {
            handler.removeCallbacks(this.f15941i0);
        }
        int max = this.f15908B.getMax();
        this.f15908B.setProgress(max);
        this.f15909C.setProgress(max);
        if (this.f15926T) {
            start();
        } else {
            showControls();
        }
        K4.a aVar = this.f15922P;
        if (aVar != null) {
            ((M4.a) aVar).onCompletion(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a("Detached from window", new Object[0]);
        release();
        this.f15908B = null;
        this.f15910D = null;
        this.f15911E = null;
        this.f15912F = null;
        this.f15950u = null;
        this.f15952w = null;
        this.f15951v = null;
        Handler handler = this.f15918L;
        if (handler != null) {
            handler.removeCallbacks(this.f15941i0);
            this.f15918L = null;
        }
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i2, int i7) {
        if (i2 == -38) {
            return false;
        }
        String g7 = i.g(i2, "Preparation/playback error (", "): ");
        Exception exc = new Exception(i2 != -1010 ? i2 != -1007 ? i2 != -1004 ? i2 != -110 ? i2 != 100 ? i2 != 200 ? i.B(g7, "Unknown error") : i.B(g7, "Not valid for progressive playback") : i.B(g7, "Server died") : i.B(g7, "Timed out") : i.B(g7, "I/O error") : i.B(g7, "Malformed") : i.B(g7, "Unsupported"));
        K4.a aVar = this.f15922P;
        if (aVar == null) {
            throw new RuntimeException(exc);
        }
        ((M4.a) aVar).onError();
        return false;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        setKeepScreenOn(true);
        this.f15918L = new Handler();
        MediaPlayer mediaPlayer = new MediaPlayer();
        this.f15954y = mediaPlayer;
        mediaPlayer.setOnPreparedListener(this);
        this.f15954y.setOnBufferingUpdateListener(this);
        this.f15954y.setOnCompletionListener(this);
        this.f15954y.setOnVideoSizeChangedListener(this);
        this.f15954y.setOnErrorListener(this);
        this.f15954y.setAudioStreamType(3);
        this.f15944n = (AudioManager) getContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        LayoutInflater from = LayoutInflater.from(getContext());
        View inflate = from.inflate(R.layout.bvp_include_surface2, (ViewGroup) this, false);
        addView(inflate);
        TextureView textureView = (TextureView) inflate.findViewById(R.id.textureview);
        this.f15955z = textureView;
        textureView.setSurfaceTextureListener(this);
        this.f15937f = (TextView) inflate.findViewById(R.id.view_forward);
        this.f15942j = (TextView) inflate.findViewById(R.id.view_backward);
        View inflate2 = from.inflate(R.layout.bvp_include_progress, (ViewGroup) this, false);
        this.f15951v = inflate2;
        this.f15931b = (SpinKitView) inflate2.findViewById(R.id.spin_kit);
        this.f15909C = (ProgressBar) this.f15951v.findViewById(R.id.progressBarBottom);
        TypedValue typedValue = new TypedValue();
        getContext().getTheme().resolveAttribute(R.color.accent, typedValue, true);
        this.f15931b.setColor(typedValue.data);
        TextView textView = (TextView) this.f15951v.findViewById(R.id.position_textview);
        this.f15935e = textView;
        textView.setShadowLayer(3.0f, 3.0f, 3.0f, -16777216);
        addView(this.f15951v);
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.f15952w = frameLayout;
        addView(frameLayout, new ViewGroup.LayoutParams(-1, -1));
        this.f15950u = from.inflate(R.layout.bvp_include_controls, (ViewGroup) this, false);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12);
        addView(this.f15950u, layoutParams);
        View inflate3 = from.inflate(R.layout.bvp_include_topbar, (ViewGroup) this, false);
        this.f15953x = inflate3;
        Toolbar toolbar = (Toolbar) inflate3.findViewById(R.id.toolbar);
        this.f15945p = toolbar;
        toolbar.setTitle(this.f15946q);
        this.f15953x.setVisibility(this.f15930a0 ? 0 : 8);
        addView(this.f15953x);
        View inflate4 = from.inflate(R.layout.bvp_include_subtitle2, (ViewGroup) this, false);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(2, R.id.bvp_include_relativelayout);
        layoutParams2.alignWithParent = true;
        CaptionsView2 captionsView2 = (CaptionsView2) inflate4.findViewById(R.id.subs_box);
        this.f15943m = captionsView2;
        captionsView2.setPlayer(this.f15954y);
        this.f15943m.setTextSize(0, this.f15947r);
        this.f15943m.setTextColor(this.f15948s);
        addView(inflate4, layoutParams2);
        SeekBar seekBar = (SeekBar) this.f15950u.findViewById(R.id.seeker);
        this.f15908B = seekBar;
        seekBar.setOnSeekBarChangeListener(this);
        TextView textView2 = (TextView) this.f15950u.findViewById(R.id.position);
        this.f15910D = textView2;
        textView2.setText(M4.c.getDurationString(0L, false));
        TextView textView3 = (TextView) this.f15950u.findViewById(R.id.duration);
        this.f15911E = textView3;
        textView3.setText(M4.c.getDurationString(0L, true));
        this.f15911E.setOnClickListener(this);
        ImageButton imageButton = (ImageButton) this.f15950u.findViewById(R.id.btnPlayPause);
        this.f15912F = imageButton;
        imageButton.setOnClickListener(this);
        this.f15912F.setImageDrawable(this.f15923Q);
        if (this.f15934d0) {
            disableControls();
        } else {
            enableControls();
        }
        setBottomProgressBarVisibility(this.f15929W);
        setControlsEnabled(false);
        c();
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    @TargetApi(16)
    public void onPrepared(MediaPlayer mediaPlayer) {
        a("onPrepared()", new Object[0]);
        this.f15931b.setVisibility(4);
        showControls();
        this.f15914H = true;
        K4.a aVar = this.f15922P;
        if (aVar != null) {
            ((M4.a) aVar).onPrepared(this);
        }
        this.f15910D.setText(M4.c.getDurationString(0L, false));
        this.f15911E.setText(M4.c.getDurationString(mediaPlayer.getDuration(), false));
        this.f15908B.setProgress(0);
        this.f15908B.setMax(mediaPlayer.getDuration());
        setControlsEnabled(true);
        if (!this.f15933c0) {
            this.f15954y.start();
            this.f15954y.pause();
            return;
        }
        if (!this.f15934d0 && this.f15927U) {
            this.f15918L.postDelayed(this.f15939g0, 500L);
        }
        start();
        int i2 = this.f15936e0;
        if (i2 > 0) {
            seekTo(i2);
            this.f15936e0 = -1;
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i2, boolean z6) {
        if (z6) {
            seekTo(i2);
            this.f15935e.setText(M4.c.getDurationString(i2, false));
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        boolean isPlaying = isPlaying();
        this.f15915I = isPlaying;
        if (isPlaying) {
            this.f15954y.pause();
        }
        this.f15935e.setVisibility(0);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        if (this.f15915I) {
            this.f15954y.start();
        }
        this.f15935e.setVisibility(8);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i7) {
        a("Surface texture available: %dx%d", Integer.valueOf(i2), Integer.valueOf(i7));
        this.f15916J = i2;
        this.f15917K = i7;
        this.f15913G = true;
        this.f15907A = new Surface(surfaceTexture);
        if (!this.f15914H) {
            c();
        } else {
            a("Surface texture available and media player is prepared", new Object[0]);
            this.f15954y.setSurface(this.f15907A);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        a("Surface texture destroyed", new Object[0]);
        this.f15913G = false;
        this.f15907A = null;
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i7) {
        int i8;
        int i9;
        a("Surface texture changed: %dx%d", Integer.valueOf(i2), Integer.valueOf(i7));
        try {
            double videoHeight = this.f15954y.getVideoHeight() / this.f15954y.getVideoWidth();
            int i10 = (int) (i2 * videoHeight);
            if (i7 > i10) {
                i9 = i10;
                i8 = i2;
            } else {
                i8 = (int) (i7 / videoHeight);
                i9 = i7;
            }
            Matrix matrix = new Matrix();
            this.f15955z.getTransform(matrix);
            matrix.setScale(i8 / i2, i9 / i7);
            matrix.postTranslate((i2 - i8) / 2, (i7 - i9) / 2);
            this.f15955z.setTransform(matrix);
        } catch (Exception unused) {
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i2, int i7) {
        a("Video size changed: %dx%d", Integer.valueOf(i2), Integer.valueOf(i7));
    }

    public void pause() {
        if (this.f15954y == null || !isPlaying()) {
            return;
        }
        this.f15954y.pause();
        ((M4.a) this.f15922P).onPaused(this);
        Handler handler = this.f15918L;
        if (handler == null) {
            return;
        }
        handler.removeCallbacks(this.f15939g0);
        this.f15918L.removeCallbacks(this.f15941i0);
        this.f15912F.setImageDrawable(this.f15923Q);
    }

    public void release() {
        this.f15914H = false;
        MediaPlayer mediaPlayer = this.f15954y;
        if (mediaPlayer != null) {
            try {
                mediaPlayer.release();
            } catch (Throwable unused) {
            }
            this.f15954y = null;
        }
        Handler handler = this.f15918L;
        if (handler != null) {
            handler.removeCallbacks(this.f15941i0);
            this.f15918L = null;
        }
        a("Released player and Handler", new Object[0]);
    }

    public void seekTo(int i2) {
        MediaPlayer mediaPlayer = this.f15954y;
        if (mediaPlayer == null) {
            return;
        }
        mediaPlayer.seekTo(i2);
    }

    public void setAutoPlay(boolean z6) {
        this.f15933c0 = z6;
    }

    public void setBottomProgressBarVisibility(boolean z6) {
        this.f15929W = z6;
        if (z6) {
            this.f15909C.setVisibility(0);
        } else {
            this.f15909C.setVisibility(8);
        }
    }

    public void setCallback(K4.a aVar) {
        this.f15922P = aVar;
    }

    public void setCaptionLoadListener(d dVar) {
        this.f15943m.setCaptionsViewLoadListener(dVar);
    }

    public void setDoubleTap(int i2) {
        this.f15952w.setOnTouchListener(new q(this, i2));
    }

    public void setHeaders(Map<String, String> map) {
        this.f15921O = map;
    }

    public void setHideControlsDuration(int i2) {
        this.f15938f0 = i2;
    }

    public void setHideControlsOnPlay(boolean z6) {
        this.f15927U = z6;
    }

    public void setInitialPosition(int i2) {
        this.f15936e0 = i2;
    }

    public void setLoadingStyle(int i2) {
        Drawable hVar;
        switch (i2) {
            case 0:
                hVar = new O2.h();
                break;
            case 1:
                hVar = new O2.r();
                break;
            case 2:
                hVar = new x();
                break;
            case 3:
                hVar = new O2.v();
                break;
            case 4:
                hVar = new o();
                break;
            case 5:
                hVar = new O2.b();
                break;
            case 6:
                hVar = new O2.t();
                break;
            case 7:
                hVar = new O2.d();
                break;
            case 8:
                hVar = new f();
                break;
            case 9:
                hVar = new j();
                break;
            case 10:
                hVar = new O2.q();
                break;
            default:
                hVar = new O2.t();
                break;
        }
        this.f15931b.setIndeterminateDrawable(hVar);
    }

    public void setLoop(boolean z6) {
        this.f15926T = z6;
    }

    public void setSource(Uri uri) {
        this.f15920N = uri;
        if (this.f15954y != null) {
            c();
        }
    }

    public void setTVMode(boolean z6) {
        this.f15950u.setVisibility(8);
        this.f15908B.setVisibility(8);
        this.f15910D.setVisibility(8);
        this.f15911E.setVisibility(8);
        this.f15909C.setVisibility(8);
        setLoop(true);
    }

    public void showControls() {
        ((M4.a) this.f15922P).onToggleControls(true);
        if (this.f15934d0 || isControlsShown() || this.f15908B == null) {
            return;
        }
        this.f15950u.animate().cancel();
        this.f15950u.setAlpha(0.0f);
        this.f15950u.setVisibility(0);
        this.f15950u.animate().alpha(1.0f).translationY(0.0f).setListener(null).setInterpolator(new DecelerateInterpolator()).start();
        View view = (View) this.f15943m.getParent();
        view.animate().cancel();
        view.setTranslationY(this.f15950u.getHeight());
        view.animate().translationY(0.0f).setInterpolator(new DecelerateInterpolator()).start();
        if (this.f15929W) {
            this.f15909C.animate().cancel();
            this.f15909C.setAlpha(1.0f);
            this.f15909C.animate().alpha(0.0f).start();
        }
        if (this.f15930a0) {
            this.f15953x.animate().cancel();
            this.f15953x.setAlpha(0.0f);
            this.f15953x.setVisibility(0);
            this.f15953x.animate().alpha(1.0f).setListener(null).setInterpolator(new DecelerateInterpolator()).start();
        }
    }

    public void start() {
        MediaPlayer mediaPlayer = this.f15954y;
        if (mediaPlayer == null) {
            return;
        }
        mediaPlayer.start();
        ((M4.a) this.f15922P).onStarted();
        if (this.f15918L == null) {
            this.f15918L = new Handler();
        }
        this.f15918L.post(this.f15941i0);
        this.f15912F.setImageDrawable(this.f15924R);
    }

    public void toggleControls() {
        if (this.f15934d0) {
            return;
        }
        if (isControlsShown()) {
            hideControls();
            return;
        }
        if (this.f15938f0 >= 0) {
            Handler handler = this.f15918L;
            v vVar = this.f15939g0;
            handler.removeCallbacks(vVar);
            this.f15918L.postDelayed(vVar, this.f15938f0);
        }
        showControls();
    }

    public void setProgressCallback(K4.x xVar) {
    }
}

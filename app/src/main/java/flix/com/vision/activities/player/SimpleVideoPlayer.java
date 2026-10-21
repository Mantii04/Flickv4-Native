package flix.com.vision.activities.player;

import A.h;
import A.i;
import A4.n;
import A4.q;
import B4.AbstractC0052o;
import B4.B;
import B4.C;
import B4.C0058v;
import B4.DialogInterfaceOnClickListenerC0056t;
import B4.DialogInterfaceOnClickListenerC0062z;
import B4.DialogInterfaceOnDismissListenerC0040c;
import B4.E;
import B4.F;
import B4.I;
import B4.J;
import B4.K;
import B4.L;
import B4.RunnableC0041d;
import B4.RunnableC0055s;
import B4.RunnableC0057u;
import B4.ViewOnClickListenerC0054q;
import C4.V;
import D4.a;
import E.c;
import K4.b;
import K4.l;
import K4.m;
import Q4.d;
import T4.j;
import U4.f;
import U4.g;
import Z4.t;
import a5.C0402h;
import a5.p;
import a5.x;
import android.annotation.SuppressLint;
import android.app.FragmentManager;
import android.app.PictureInPictureParams;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.Rational;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewParent;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextClock;
import android.widget.TextView;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.media3.common.VideoSize;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.mediarouter.app.MediaRouteButton;
import androidx.recyclerview.widget.RecyclerView;
import c5.C0738b;
import com.github.ybq.android.spinkit.SpinKitView;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaLoadRequestData;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.framework.CastButtonFactory;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.SessionManager;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.images.WebImage;
import cz.msebera.android.httpclient.HttpHeaders;
import e.AbstractActivityC0842v;
import e.r;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.player.SimpleVideoPlayer;
import flix.com.vision.api.TraktAPI$ScrobbleState;
import flix.com.vision.api.alldebrid.AllDebridCommon;
import flix.com.vision.api.premiumize.PremiumizeCommon;
import flix.com.vision.api.realdebrid.RealDebridCommon;
import flix.com.vision.bvp.BetterVideoPlayer;
import flix.com.vision.bvp.subtitle.CaptionsView;
import flix.com.vision.extractors.CloudnestraExtractor;
import flix.com.vision.extractors.VixSrcExtractor;
import flix.com.vision.helpers.CenterLayoutManager;
import flix.com.vision.models.C4913m;
import flix.com.vision.models.CastAction;
import flix.com.vision.models.Episode;
import flix.com.vision.models.IntroDbResponse;
import flix.com.vision.models.Movie;
import flix.com.vision.models.PlayerEvent;
import flix.com.vision.models.SubEvent;
import flix.com.vision.models.VideoSource;
import flix.com.vision.processors.english.C0936b;
import flix.com.vision.processors.english.v;
import flix.com.vision.subtitles.OpenSubtitles;
import flix.com.vision.subtitles.SubtitlesWebViewActivity;
import flix.com.vision.tv.Constant;
import h5.AbstractC0995i;
import h5.AbstractC1000n;
import h5.C0996j;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.schedulers.Schedulers;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import m4.D;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes2.dex */
public class SimpleVideoPlayer extends AbstractActivityC0842v implements b, f, g, m {

    /* renamed from: Q0, reason: collision with root package name */
    public static boolean f15629Q0 = false;

    /* renamed from: A, reason: collision with root package name */
    public BetterVideoPlayer f15630A;

    /* renamed from: D, reason: collision with root package name */
    public TextView f15636D;

    /* renamed from: D0, reason: collision with root package name */
    public boolean f15637D0;

    /* renamed from: E, reason: collision with root package name */
    public TextView f15638E;

    /* renamed from: F, reason: collision with root package name */
    public TextView f15640F;

    /* renamed from: F0, reason: collision with root package name */
    public Animation f15641F0;

    /* renamed from: G, reason: collision with root package name */
    public TextView f15642G;

    /* renamed from: G0, reason: collision with root package name */
    public Animation f15643G0;

    /* renamed from: H, reason: collision with root package name */
    public TextView f15644H;

    /* renamed from: I, reason: collision with root package name */
    public Movie f15646I;

    /* renamed from: J, reason: collision with root package name */
    public ImageView f15648J;

    /* renamed from: J0, reason: collision with root package name */
    public CountDownTimer f15649J0;

    /* renamed from: K, reason: collision with root package name */
    public ImageView f15650K;

    /* renamed from: K0, reason: collision with root package name */
    public CountDownTimer f15651K0;

    /* renamed from: L, reason: collision with root package name */
    public LinearLayout f15652L;

    /* renamed from: M, reason: collision with root package name */
    public LinearLayout f15654M;

    /* renamed from: N, reason: collision with root package name */
    public LinearLayout f15656N;

    /* renamed from: O, reason: collision with root package name */
    public V f15658O;

    /* renamed from: O0, reason: collision with root package name */
    public IntroDbResponse.Segment f15659O0;

    /* renamed from: P0, reason: collision with root package name */
    public IntroDbResponse.Segment f15661P0;

    /* renamed from: Q, reason: collision with root package name */
    public CastContext f15662Q;

    /* renamed from: V, reason: collision with root package name */
    public int f15667V;

    /* renamed from: W, reason: collision with root package name */
    public String f15668W;

    /* renamed from: e0, reason: collision with root package name */
    public String f15678e0;

    /* renamed from: f, reason: collision with root package name */
    public ImageView f15679f;

    /* renamed from: f0, reason: collision with root package name */
    public String f15680f0;

    /* renamed from: g0, reason: collision with root package name */
    public int f15681g0;

    /* renamed from: h0, reason: collision with root package name */
    public int f15682h0;

    /* renamed from: i0, reason: collision with root package name */
    public int f15683i0;

    /* renamed from: j0, reason: collision with root package name */
    public RunnableC0055s f15685j0;

    /* renamed from: n, reason: collision with root package name */
    public TextClock f15690n;

    /* renamed from: p, reason: collision with root package name */
    public MediaRouteButton f15693p;

    /* renamed from: p0, reason: collision with root package name */
    public Animation f15694p0;

    /* renamed from: q, reason: collision with root package name */
    public ImageView f15695q;

    /* renamed from: q0, reason: collision with root package name */
    public Animation f15696q0;

    /* renamed from: r0, reason: collision with root package name */
    public Animation f15698r0;

    /* renamed from: s, reason: collision with root package name */
    public SpinKitView f15699s;

    /* renamed from: s0, reason: collision with root package name */
    public Animation f15700s0;

    /* renamed from: t, reason: collision with root package name */
    public RelativeLayout f15701t;

    /* renamed from: t0, reason: collision with root package name */
    public Animation f15702t0;

    /* renamed from: u, reason: collision with root package name */
    public RelativeLayout f15703u;

    /* renamed from: v, reason: collision with root package name */
    public RecyclerView f15705v;

    /* renamed from: w, reason: collision with root package name */
    public Typeface f15707w;

    /* renamed from: x, reason: collision with root package name */
    public C0996j f15709x;

    /* renamed from: x0, reason: collision with root package name */
    public CastSession f15710x0;

    /* renamed from: y, reason: collision with root package name */
    public String f15711y;

    /* renamed from: y0, reason: collision with root package name */
    public SessionManager f15712y0;

    /* renamed from: z, reason: collision with root package name */
    public View f15713z;

    /* renamed from: b, reason: collision with root package name */
    public boolean f15673b = false;

    /* renamed from: e, reason: collision with root package name */
    public boolean f15677e = true;

    /* renamed from: j, reason: collision with root package name */
    public boolean f15684j = false;

    /* renamed from: m, reason: collision with root package name */
    public boolean f15688m = true;

    /* renamed from: r, reason: collision with root package name */
    public ArrayList f15697r = new ArrayList();

    /* renamed from: B, reason: collision with root package name */
    public final j f15632B = new j();

    /* renamed from: C, reason: collision with root package name */
    public Handler f15634C = new Handler();

    /* renamed from: P, reason: collision with root package name */
    public final ArrayList f15660P = new ArrayList();

    /* renamed from: R, reason: collision with root package name */
    public boolean f15663R = false;

    /* renamed from: S, reason: collision with root package name */
    public long f15664S = -1;

    /* renamed from: T, reason: collision with root package name */
    public final Handler f15665T = new Handler();

    /* renamed from: U, reason: collision with root package name */
    public final C f15666U = new C(this);

    /* renamed from: X, reason: collision with root package name */
    public int f15669X = 0;

    /* renamed from: Y, reason: collision with root package name */
    public String f15670Y = null;

    /* renamed from: Z, reason: collision with root package name */
    public String f15671Z = null;

    /* renamed from: a0, reason: collision with root package name */
    public boolean f15672a0 = false;

    /* renamed from: b0, reason: collision with root package name */
    public boolean f15674b0 = false;

    /* renamed from: c0, reason: collision with root package name */
    public final Handler f15675c0 = new Handler();

    /* renamed from: d0, reason: collision with root package name */
    public final E f15676d0 = new E(this);

    /* renamed from: k0, reason: collision with root package name */
    public boolean f15686k0 = false;

    /* renamed from: l0, reason: collision with root package name */
    public boolean f15687l0 = false;

    /* renamed from: m0, reason: collision with root package name */
    public int f15689m0 = 0;

    /* renamed from: n0, reason: collision with root package name */
    public int f15691n0 = -1;

    /* renamed from: o0, reason: collision with root package name */
    public String f15692o0 = null;

    /* renamed from: u0, reason: collision with root package name */
    public boolean f15704u0 = false;

    /* renamed from: v0, reason: collision with root package name */
    public boolean f15706v0 = false;

    /* renamed from: w0, reason: collision with root package name */
    public d f15708w0 = null;

    /* renamed from: z0, reason: collision with root package name */
    public final L f15714z0 = new L(this);

    /* renamed from: A0, reason: collision with root package name */
    public boolean f15631A0 = false;

    /* renamed from: B0, reason: collision with root package name */
    public ArrayList f15633B0 = new ArrayList();

    /* renamed from: C0, reason: collision with root package name */
    public int f15635C0 = -1;

    /* renamed from: E0, reason: collision with root package name */
    public boolean f15639E0 = false;

    /* renamed from: H0, reason: collision with root package name */
    public boolean f15645H0 = false;

    /* renamed from: I0, reason: collision with root package name */
    public boolean f15647I0 = false;

    /* renamed from: L0, reason: collision with root package name */
    public boolean f15653L0 = false;

    /* renamed from: M0, reason: collision with root package name */
    public final CharSequence[] f15655M0 = {"18sp", "23sp", "28sp", "33sp", "38sp", "48sp", "58sp"};

    /* renamed from: N0, reason: collision with root package name */
    public final CharSequence[] f15657N0 = {"Default Charset", "UTF-8 utf-8", "UTF-16 LE utf-16 le", "UTF-16 BE utf-16 be", "Western (Windows 1252) windows-1252", "Western (ISO 8859-1) iso-8859-1", "Western (ISO 8859-3) iso-8859-3", "Western (ISO 8859-15) iso-8859-15", "Western (Mac Roman) macroman", "Arabic (Windows 1256) windows-1256", "Arabic (ISO 8859-6) iso-8859-6", "Baltic (Windows 1257) windows-1257", "Baltic (ISO 8859-4) iso-8859-4", "Celtic (ISO 8859-14) iso-8859-14", "Central European (Windows 1250) windows-1250", "Central European (ISO 8859-2) iso-8859-2", "Central European (CP 852) cp-852", "Cyrillic (Windows 1251) windows-1251", "Cyrillic (CP 866) cp-866", "Cyrillic (ISO 8859-5) iso-8859-5", "Cyrillic (KO18-R) koi8-r", "Cyrillic (KOI8-U) koi8-u", "Estonian (ISO 8859-13) iso-8859-13", "Greek (Windows 1253) windows-1253", "Greek (ISO 8859-7) iso-8859-7", "Hebrew (Windows 1255) windows-1255", "Hebrew (ISO 8859-8) iso-8859-8", "Nordic (ISO 8859-10) iso-8859-10", "Romanian (ISO 8859-16) iso-8859-16", "Turkish (Windows 1254) windows-1254", "Turkish (ISO 8859-9) iso-8859-9", "Vietnamese (Windows 1258) windows-1258", "Simplified Chinese (GBK) gbk", "Simplified Chinese (GB18030) gb18030", "Traditional Chinese (Big5) c950", "Traditional Chinese (Big5-HKSCS) big5-hkscs", "Japanese (Shift JIS) Shift_JIS", "Japanese (EUC-JP) EUC_JP_LINUX", "Korean (EUC-KR) euc-kr", "Thai (Windows 874) windows-874", "Latin/Thai (ISO 8859-11) iso-8859-11", "Cyrillic (KOI8-RU) koi8-ru", "Tajik (KO18-T) KOI8_R", "Simplified Chinese (GB 2312) EUC_CN", "Nordic DOS (CP 865) Cp865", "Western European DOS (CP 850) cp850"};

    public static /* synthetic */ void e(SimpleVideoPlayer simpleVideoPlayer) {
        simpleVideoPlayer.getClass();
        try {
            simpleVideoPlayer.h();
            if (simpleVideoPlayer.f15670Y != null) {
                App.getInstance().f14440s.edit().putInt(simpleVideoPlayer.f15670Y, (int) simpleVideoPlayer.f15630A.getCurrentPosition()).apply();
            }
            simpleVideoPlayer.f15630A.stop();
            simpleVideoPlayer.f15630A.release();
            super.onBackPressed();
            simpleVideoPlayer.finish();
        } catch (Exception unused) {
        }
    }

    public static void f(SimpleVideoPlayer simpleVideoPlayer) {
        MenuItem findItem;
        try {
            BetterVideoPlayer betterVideoPlayer = simpleVideoPlayer.f15630A;
            if (betterVideoPlayer == null || betterVideoPlayer.getToolbar() == null || (findItem = simpleVideoPlayer.f15630A.getToolbar().getMenu().findItem(R.id.audio_track_button)) == null) {
                return;
            }
            Drawable icon = findItem.getIcon();
            if (icon != null) {
                Drawable mutate = c.wrap(icon).mutate();
                c.setTint(mutate, h.getColor(simpleVideoPlayer, R.color.accent));
                findItem.setIcon(mutate);
            }
            ArrayList<l> availableAudioTracks = simpleVideoPlayer.f15630A.getAvailableAudioTracks();
            boolean z6 = true;
            if (availableAudioTracks.size() <= 1) {
                z6 = false;
            }
            findItem.setVisible(z6);
            if (z6) {
                BetterVideoPlayer.LOG("Audio Tracks Found: " + availableAudioTracks.size() + ". Showing button.", new Object[0]);
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public final void A() {
        FragmentManager fragmentManager = getFragmentManager();
        d newInstance = d.newInstance(this, true);
        newInstance.setTitle("Exit");
        newInstance.setMessage("Do you really want to stop playback and exit ?");
        newInstance.setButton1("CANCEL", new q(2));
        newInstance.setButton2("EXIT", new ViewOnClickListenerC0054q(this, 0));
        if (!App.f14424I && Build.VERSION.SDK_INT >= 26) {
            newInstance.setButton3("MINIMIZE", new ViewOnClickListenerC0054q(this, 1));
        }
        try {
            newInstance.show(fragmentManager, "");
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public final void B() {
        this.f15639E0 = false;
        FragmentManager fragmentManager = getFragmentManager();
        d newInstance = d.newInstance(this, true);
        newInstance.setTitle("Subtitle Not Found via API");
        newInstance.setMessage("Would you like to Download directly from OpenSubtitles Website ?");
        newInstance.setButton2("CANCEL", new q(2));
        newInstance.setButton1("YES, DOWNLOAD", new ViewOnClickListenerC0054q(this, 6));
        try {
            newInstance.show(fragmentManager, "");
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public final void C() {
        if (this.f15646I.isAnime() || this.f15646I.drama) {
            return;
        }
        FragmentManager fragmentManager = getFragmentManager();
        d newInstance = d.newInstance(this, true);
        newInstance.setTitle(App.getInstance().f14440s.getString("sub_lang_name_1", "English") + " Subtitles");
        newInstance.setMessage("You can Download Subtitles from OpenSubtitles");
        if (this.f15630A.isCaptionActive()) {
            newInstance.setMessage("Disable, Change Subtitles or Adjust Offset");
            newInstance.setButton1("DISABLE", new ViewOnClickListenerC0054q(this, 12));
        } else {
            String n7 = n();
            if (n7 == null || !new File(n7).exists()) {
                newInstance.setButton1("CANCEL", new q(2));
            } else {
                newInstance.setButton1("ENABLE", new A4.m(1, this, n7));
            }
        }
        ArrayList arrayList = this.f15633B0;
        newInstance.setButton2((arrayList == null || arrayList.isEmpty()) ? "DOWNLOAD" : "SUBTITLES", new ViewOnClickListenerC0054q(this, 13));
        newInstance.setButton3("IMPORT", new ViewOnClickListenerC0054q(this, 14));
        try {
            newInstance.show(fragmentManager, "");
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public final void D(boolean z6) {
        if (this.f15645H0 && !z6) {
            F();
            return;
        }
        FragmentManager fragmentManager = getFragmentManager();
        d newInstance = d.newInstance(this, false);
        this.f15708w0 = newInstance;
        newInstance.setloading();
        try {
            this.f15708w0.show(fragmentManager, "");
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public final void E() {
        if (this.f15633B0.isEmpty()) {
            AbstractC0995i.makeToast(this, "No Subtitle Found", false);
            return;
        }
        try {
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < this.f15633B0.size(); i2++) {
                String str = ((OpenSubtitles.Subtitle) this.f15633B0.get(i2)).subFileName;
                arrayList.add(str != null ? str.toUpperCase(Locale.ROOT) : "SUBTITLE " + (i2 + 1));
            }
            CharSequence[] charSequenceArr = (CharSequence[]) arrayList.toArray(new CharSequence[0]);
            r rVar = new r(new ContextThemeWrapper(this, R.style.AlertDialogNoHeader));
            rVar.setSingleChoiceItems(charSequenceArr, this.f15635C0, new DialogInterfaceOnClickListenerC0056t(this, 0));
            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(1));
            rVar.show();
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public final void F() {
        try {
            this.f15679f.setAlpha(1.0f);
            this.f15703u.setVisibility(0);
            this.f15679f.startAnimation(this.f15698r0);
        } catch (Exception unused) {
        }
    }

    public final void G(String str) {
        FragmentManager fragmentManager = getFragmentManager();
        d newInstance = d.newInstance(this, true);
        newInstance.setTitle("An Error Occurred. Try external player if it persists");
        newInstance.setMessage("Message: " + str);
        newInstance.setButton1("GOT IT", new ViewOnClickListenerC0054q(this, 2));
        newInstance.setButton2("OPEN SETTINGS", new ViewOnClickListenerC0054q(this, 3));
        try {
            newInstance.show(fragmentManager, "");
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public final void H() {
        MenuItem findItem;
        try {
            BetterVideoPlayer betterVideoPlayer = this.f15630A;
            if (betterVideoPlayer == null || betterVideoPlayer.getToolbar() == null) {
                return;
            }
            try {
                BetterVideoPlayer betterVideoPlayer2 = this.f15630A;
                if (betterVideoPlayer2 != null && betterVideoPlayer2.getToolbar() != null && (findItem = this.f15630A.getToolbar().getMenu().findItem(R.id.subtitle_gear_button)) != null) {
                    findItem.setVisible(this.f15630A.isCaptionActive());
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
            MenuItem findItem2 = this.f15630A.getToolbar().getMenu().findItem(R.id.subtitle_button);
            if (findItem2 == null) {
                return;
            }
            if (!this.f15630A.isCaptionActive()) {
                findItem2.setIcon(R.drawable.subtitles_24px);
                return;
            }
            Drawable drawable = h.getDrawable(this, R.drawable.subtitles_24px);
            if (drawable != null) {
                Drawable mutate = c.wrap(drawable).mutate();
                c.setTintList(mutate, h.getColorStateList(this, R.color.selector_active_icon_tint));
                findItem2.setIcon(mutate);
            }
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public final void I() {
        MenuItem findItem;
        String str;
        try {
            BetterVideoPlayer betterVideoPlayer = this.f15630A;
            if (betterVideoPlayer != null && betterVideoPlayer.getToolbar() != null && (findItem = this.f15630A.getToolbar().getMenu().findItem(R.id.hd_button)) != null && (str = this.f15692o0) != null) {
                if (str.contains("4K")) {
                    findItem.setIcon(R.drawable.for_4k_24px);
                    return;
                }
                if (this.f15692o0.contains("1080")) {
                    findItem.setIcon(R.drawable.full_hd_40px);
                    return;
                }
                if (this.f15692o0.contains("720")) {
                    findItem.setIcon(R.drawable.hd_40px);
                } else if (this.f15692o0.contains("480") || this.f15692o0.contains("250") || this.f15692o0.contains("360")) {
                    findItem.setIcon(R.drawable.sd_40px);
                }
            }
        } catch (Exception unused) {
        }
    }

    public final void J(int i2) {
        try {
            this.f15630A.setSubSize(i2 == 2 ? getResources().getDimensionPixelSize(R.dimen.sub_size_normal) : i2 == 1 ? getResources().getDimensionPixelSize(R.dimen.sub_size_small) : i2 == 3 ? getResources().getDimensionPixelSize(R.dimen.sub_size_big) : i2 == 4 ? getResources().getDimensionPixelSize(R.dimen.sub_size_big_big) : i2 == 5 ? getResources().getDimensionPixelSize(R.dimen.sub_size_big_big_big) : i2 == 6 ? getResources().getDimensionPixelSize(R.dimen.sub_size_big_big_big_big) : i2 == 7 ? getResources().getDimensionPixelSize(R.dimen.sub_size_big_big_big_big_big) : getResources().getDimensionPixelSize(R.dimen.sub_size_normal));
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    @Override // U4.f
    public void OnError() {
    }

    @Override // U4.g
    public void OnM3USuccess(ArrayList<VideoSource> arrayList) {
        this.f15697r.addAll(arrayList);
        App.f14417B.addAll(arrayList);
    }

    @Override // U4.f
    public void OnSuccess(ArrayList<VideoSource> arrayList) {
        if (arrayList != null) {
            this.f15697r.addAll(arrayList);
            App.f14417B.addAll(arrayList);
        }
    }

    public final void g(String str) {
        RemoteMediaClient remoteMediaClient;
        CastSession castSession = this.f15710x0;
        if (castSession == null || (remoteMediaClient = castSession.getRemoteMediaClient()) == null) {
            return;
        }
        remoteMediaClient.registerCallback(new I(this, remoteMediaClient));
        Movie movie = this.f15646I;
        String image_url = movie != null ? movie.getImage_url() : null;
        MediaMetadata mediaMetadata = new MediaMetadata(1);
        mediaMetadata.putString("com.google.android.gms.cast.metadata.TITLE", this.f15636D.getText().toString());
        mediaMetadata.putString("com.google.android.gms.cast.metadata.SUBTITLE", this.f15640F.getText().toString());
        String str2 = !str.contains("hls") ? "video/*" : "application/vnd.apple.mpegurl";
        String str3 = this.f15678e0;
        if (str3 != null && str3.length() > 5) {
            str2 = this.f15678e0;
        }
        if (image_url != null && image_url.length() > 1) {
            mediaMetadata.addImage(new WebImage(Uri.parse(image_url)));
        }
        MediaLoadRequestData.Builder activeTrackIds = new MediaLoadRequestData.Builder().setMediaInfo(new MediaInfo.Builder(str).setStreamType(1).setContentType(str2).setMetadata(mediaMetadata).setStreamDuration(this.f15630A.getDuration() * 1000).build()).setActiveTrackIds(null);
        BetterVideoPlayer betterVideoPlayer = this.f15630A;
        remoteMediaClient.load(activeTrackIds.setCurrentTime((betterVideoPlayer == null || !betterVideoPlayer.isPrepared()) ? 0L : this.f15630A.getCurrentPosition()).build());
        finish();
    }

    public final void h() {
        if (this.f15646I == null) {
            return;
        }
        long currentPosition = this.f15630A.getCurrentPosition();
        long duration = this.f15630A.getDuration();
        if (duration > 0) {
            long j7 = (currentPosition * 100) / duration;
            if (j7 > 90) {
                Log.d("Player", "Watched threshold reached (" + j7 + "%). Syncing...");
                if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                    if (this.f15646I.isSeries()) {
                        App.getInstance().f14438q.traktAddToWatchedHistoryEpisode(this.f15646I, this.f15681g0, this.f15682h0);
                    } else {
                        App.getInstance().f14438q.addToHistory(this.f15646I).observeOn(AndroidSchedulers.mainThread()).subscribe(new B4.r(1), new A4.c(4));
                    }
                }
                if (this.f15670Y != null) {
                    App.getInstance().f14440s.edit().remove(this.f15670Y).apply();
                }
            }
        }
    }

    public final void i() {
        Movie movie = this.f15646I;
        if (movie == null || !(movie.isAnime() || this.f15646I.drama)) {
            new Handler().postDelayed(new RunnableC0055s(this, 9), 300L);
        }
    }

    public final void j(ArrayList arrayList) {
        this.f15689m0 = (int) this.f15630A.getCurrentPosition();
        ArrayList arrayList2 = new ArrayList();
        if (App.f14417B.isEmpty()) {
            arrayList2.addAll(arrayList);
        } else {
            arrayList2.addAll(App.f14417B);
        }
        try {
            ArrayList arrayList3 = new ArrayList();
            for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                arrayList3.add(((VideoSource) arrayList2.get(i2)).label.toUpperCase(Locale.ROOT));
            }
            String uri = this.f15630A.getSource().toString();
            for (int i7 = 0; i7 < arrayList2.size(); i7++) {
                if (Objects.equals(((VideoSource) arrayList2.get(i7)).streamUrl, uri)) {
                    this.f15691n0 = i7;
                }
            }
            CharSequence[] charSequenceArr = (CharSequence[]) arrayList3.toArray(new CharSequence[arrayList3.size()]);
            r rVar = new r(new ContextThemeWrapper(this, R.style.AlertDialogNoHeader));
            rVar.setSingleChoiceItems(charSequenceArr, this.f15691n0, new DialogInterfaceOnClickListenerC0062z(this, arrayList2, 0));
            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(1));
            rVar.show();
        } catch (Exception unused) {
        }
    }

    public final void k(boolean z6) {
        this.f15639E0 = true;
        if (z6) {
            D(true);
        }
        String string = App.getInstance().f14440s.getInt("subtitle_source_index_2", 0) == 0 ? App.getInstance().f14440s.getString("sub_lang_code_1", "eng") : "eng";
        String imdbID = this.f15646I.getImdbID();
        if (imdbID != null) {
            imdbID = imdbID.replace("tt", "").trim();
            if (imdbID.equals("_") || imdbID.equalsIgnoreCase("null") || imdbID.isEmpty()) {
                imdbID = null;
            }
        }
        OpenSubtitles.search(imdbID, imdbID == null ? this.f15646I.getTitle() : null, this.f15646I.isSeries() ? Integer.valueOf(this.f15681g0) : null, this.f15646I.isSeries() ? Integer.valueOf(this.f15682h0) : null, string).enqueue(new J(this));
    }

    public final void l() {
        if (this.f15630A.isPrepared() && this.f15630A.isPlaying()) {
            this.f15630A.pause();
            this.f15650K.setVisibility(0);
            MenuItem findItem = this.f15630A.getToolbar().getMenu().findItem(R.id.play_pause_button);
            if (findItem != null) {
                findItem.setIcon(this.f15630A.isPlaying() ? R.drawable.pause_circle_40px : R.drawable.play_circle_40px);
            }
        }
        Intent intent = new Intent(this, (Class<?>) SubtitlesWebViewActivity.class);
        StringBuilder t6 = i.t("https://www.opensubtitles.org/en/search/sublanguageid-", App.getInstance().f14440s.getString("sub_lang_code_1", "eng"), "/imdbid-");
        t6.append(this.f15646I.getImdbID().replace("tt", ""));
        String sb = t6.toString();
        if (this.f15646I.isSeries()) {
            App.getInstance().getClass();
        }
        intent.putExtra("url", sb);
        String title = this.f15646I.getTitle();
        if (this.f15646I.isSeries()) {
            StringBuilder s6 = i.s(title, " - S");
            s6.append(AbstractC1000n.formatSeasonnumber(this.f15681g0));
            s6.append("E");
            s6.append(AbstractC1000n.formatSeasonnumber(this.f15682h0));
            title = s6.toString();
        }
        intent.putExtra("title", title);
        startActivity(intent);
    }

    public final void m() {
        Movie movie = this.f15646I;
        if (movie == null) {
            return;
        }
        this.f15661P0 = null;
        String imdbID = movie.getImdbID();
        int i2 = this.f15681g0;
        int i7 = this.f15682h0;
        a.getIntroSegment(imdbID, i2 > 0 ? Integer.valueOf(i2) : null, i7 > 0 ? Integer.valueOf(i7) : null, Boolean.valueOf(!this.f15646I.isSeries())).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C0058v(this, 0), new A4.c(7));
    }

    public final String n() {
        Movie movie = this.f15646I;
        if (movie != null && !movie.isSeries()) {
            return App.getInstance().f14440s.getString(this.f15646I.getMovieId() + "subtitle", null);
        }
        if (this.f15646I == null) {
            return null;
        }
        String str = this.f15646I.getMovieId() + "" + this.f15681g0 + "" + this.f15682h0;
        return App.getInstance().f14440s.getString(str + "subtitle", null);
    }

    public final float o() {
        BetterVideoPlayer betterVideoPlayer = this.f15630A;
        if (betterVideoPlayer == null || betterVideoPlayer.getDuration() <= 0) {
            return 0.0f;
        }
        return (float) ((this.f15630A.getCurrentPosition() * 100.0d) / this.f15630A.getDuration());
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i7, Intent intent) {
        if (i2 == 12345 && i7 == -1) {
            String stringExtra = intent.getStringExtra("file_extra_data");
            if (stringExtra == null) {
                AbstractC0995i.makeToast(this, "File path not found.", true);
                return;
            }
            Locale locale = Locale.ROOT;
            if (!stringExtra.toLowerCase(locale).endsWith(".srt") && !stringExtra.toLowerCase(locale).endsWith(".vtt")) {
                AbstractC0995i.makeToast(this, getString(R.string.srt_vtt_only_sub), true);
                return;
            }
            try {
                this.f15630A.setCaptionsPath(stringExtra, stringExtra.toLowerCase(locale).endsWith(".srt") ? CaptionsView.CMime.f15985b : CaptionsView.CMime.f15986e, App.getInstance().f14440s.getString("pref_subtitle_encoding_label", "utf-8"));
                H();
                if (this.f15646I.isSeries()) {
                    String str = this.f15646I.getMovieId() + "" + this.f15681g0 + "" + this.f15682h0;
                    App.getInstance().f14440s.edit().putString(str + "subtitle", stringExtra).apply();
                } else {
                    App.getInstance().f14440s.edit().putString(this.f15646I.getMovieId() + "subtitle", stringExtra).apply();
                }
                N4.a.Success(this, "Subtitles Loaded", null, 48, 0);
            } catch (Exception e3) {
                e3.printStackTrace();
                AbstractC0995i.makeToast(this, "Error loading subtitle: " + e3.getMessage(), true);
            }
        }
        super.onActivityResult(i2, i7, intent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    @SuppressLint({"MissingSuperCall"})
    public void onBackPressed() {
        RelativeLayout relativeLayout;
        LinearLayout linearLayout = this.f15656N;
        if (linearLayout != null && linearLayout.getVisibility() == 0) {
            r();
        }
        RelativeLayout relativeLayout2 = this.f15701t;
        if (relativeLayout2 != null && relativeLayout2.getVisibility() == 0) {
            t();
            return;
        }
        BetterVideoPlayer betterVideoPlayer = this.f15630A;
        if (betterVideoPlayer != null && betterVideoPlayer.isControlsShown()) {
            this.f15630A.hideControls();
        } else if (this.f15645H0 && (relativeLayout = this.f15703u) != null && relativeLayout.getVisibility() == 0) {
            p();
        } else {
            A();
        }
    }

    @Override // K4.b
    public void onBuffering(int i2) {
    }

    @Override // K4.b
    public void onCompletion(BetterVideoPlayer betterVideoPlayer) {
        App.getInstance().f14438q.scrobble(this.f15646I, this.f15681g0, this.f15682h0, o(), TraktAPI$ScrobbleState.f15795f).subscribeOn(Schedulers.io()).subscribe(new B4.r(0), new A4.c(3));
    }

    @Override // e.AbstractActivityC0842v, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        boolean isInPictureInPictureMode;
        BetterVideoPlayer betterVideoPlayer;
        super.onConfigurationChanged(configuration);
        if (Build.VERSION.SDK_INT >= 26) {
            isInPictureInPictureMode = isInPictureInPictureMode();
            if (!isInPictureInPictureMode || (betterVideoPlayer = this.f15630A) == null) {
                return;
            }
            betterVideoPlayer.setResizeMode(0);
        }
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        String n7;
        String str;
        ImageView imageView;
        int i2 = 8;
        int i7 = 5;
        int i8 = 0;
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 28) {
            getWindow().getAttributes().layoutInDisplayCutoutMode = 1;
        }
        getWindow().addFlags(1024);
        getWindow().addFlags(128);
        boolean isEmpty = App.getInstance().f14446y.isEmpty();
        ArrayList arrayList = this.f15660P;
        if (!isEmpty) {
            arrayList.addAll(App.getInstance().f14446y);
        }
        this.f15684j = getIntent().getBooleanExtra("is_torrent", false);
        App.getInstance().f14440s.getBoolean("IS_RD_LOGGED_IN", false);
        this.f15688m = App.getInstance().f14440s.getBoolean("pref_show_time", false);
        EventBus.getDefault().register(this);
        this.f15694p0 = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.slide_up);
        this.f15696q0 = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.slide_down);
        this.f15698r0 = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.fade_in_infinite);
        this.f15700s0 = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.fade_in_rated);
        this.f15702t0 = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.fade_out_rated);
        this.f15672a0 = App.getInstance().f14440s.getBoolean("pref_auto_play_next_ep", true);
        setContentView(App.f14424I ? R.layout.activity_player : R.layout.activity_player_light);
        ArrayList parcelableArrayListExtra = getIntent().getParcelableArrayListExtra("sources");
        this.f15697r = parcelableArrayListExtra;
        if (parcelableArrayListExtra == null) {
            this.f15697r = new ArrayList();
        }
        this.f15691n0 = getIntent().getIntExtra("current_index", -1);
        AssetManager assets = getAssets();
        String str2 = Constant.f16184b;
        Typeface.createFromAsset(assets, "fonts/pproduct_sans_rregular.ttf");
        this.f15707w = Typeface.createFromAsset(getAssets(), "fonts/product_sans_bold.ttf");
        this.f15709x = new C0996j();
        this.f15646I = (Movie) getIntent().getSerializableExtra("movie");
        getIntent().getStringExtra("season_year");
        this.f15679f = (ImageView) findViewById(R.id.title_poster_img);
        Movie movie = this.f15646I;
        if (movie != null && !movie.drama && !movie.isAnime() && this.f15679f != null && App.getInstance().f14440s.getBoolean("pref_logo_as_loading_players", true)) {
            try {
                Movie movie2 = this.f15646I;
                this.f15668W = movie2.logoUrl;
                boolean z6 = movie2.is_title_logo_available;
                this.f15645H0 = z6;
                if (z6) {
                    try {
                        D.get().load(this.f15668W).into(this.f15679f, new K(this));
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                }
            } catch (Exception unused) {
            }
        }
        this.f15669X = getIntent().getIntExtra("runtime", 0);
        this.f15681g0 = getIntent().getIntExtra("season_number", 0);
        this.f15682h0 = getIntent().getIntExtra("episode_number", 0);
        this.f15683i0 = getIntent().getIntExtra("episode_count", 0);
        BetterVideoPlayer betterVideoPlayer = (BetterVideoPlayer) findViewById(R.id.player);
        this.f15630A = betterVideoPlayer;
        betterVideoPlayer.addListener(new B4.D(this));
        this.f15630A.setProgressCallback(this);
        ImageView imageView2 = (ImageView) findViewById(R.id.btn_close_autoplay);
        if (imageView2 != null) {
            imageView2.setOnClickListener(new ViewOnClickListenerC0054q(this, 9));
        }
        if (!App.f14424I && (imageView = (ImageView) findViewById(R.id.btn_close_episodes)) != null) {
            imageView.setOnClickListener(new ViewOnClickListenerC0054q(this, 10));
        }
        this.f15644H = (TextView) findViewById(R.id.rated_text_view);
        this.f15703u = (RelativeLayout) findViewById(R.id.buffering_layout);
        this.f15701t = (RelativeLayout) findViewById(R.id.episode_list);
        this.f15705v = (RecyclerView) findViewById(R.id.recyclerview_episodes_list);
        this.f15658O = new V(this, arrayList, this.f15682h0 - 1);
        b.c.s(this.f15705v, 5);
        this.f15705v.setLayoutManager(new CenterLayoutManager(this, 1, false));
        this.f15705v.setAdapter(this.f15658O);
        this.f15641F0 = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.slide_left);
        this.f15643G0 = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.slide_right);
        this.f15630A.setEncoding(App.getInstance().f14440s.getString("pref_subtitle_encoding_label", "utf-8"));
        J(App.getInstance().f14440s.getInt("pref_subtitle_size", 3));
        this.f15630A.setSubColor(App.getInstance().f14440s.getInt("subtitle_color_res", R.color.md_white_1));
        if (App.f14424I) {
            this.f15630A.setEnableClick(false);
        }
        this.f15630A.f15851C.getProgressDrawable().setColorFilter(getResources().getColor(R.color.accent), PorterDuff.Mode.MULTIPLY);
        this.f15630A.f15851C.setOnFocusChangeListener(new A4.g(this, 2));
        this.f15699s = (SpinKitView) findViewById(R.id.buffering_view);
        this.f15642G = (TextView) findViewById(R.id.text_view_rating);
        if (App.f14424I) {
            Movie movie3 = this.f15646I;
            if (movie3 == null) {
                this.f15667V = R.menu.menu_simple_video_player;
            } else {
                if (!movie3.isSeries()) {
                    Movie movie4 = this.f15646I;
                    if (!movie4.drama && !movie4.isAnime()) {
                        this.f15667V = R.menu.menu_simple_video_player;
                    }
                }
                this.f15667V = R.menu.menu_simple_video_player_series;
            }
        } else {
            Movie movie5 = this.f15646I;
            if (movie5 == null) {
                this.f15667V = R.menu.menu_simple_video_player_mobile;
            } else if (movie5.isSeries() || this.f15646I.isAnime() || this.f15646I.drama) {
                this.f15667V = R.menu.menu_simple_video_player_mobile_series;
            } else {
                this.f15667V = R.menu.menu_simple_video_player_mobile;
            }
        }
        this.f15630A.getToolbar().getMenu().clear();
        this.f15630A.getToolbar().inflateMenu(this.f15667V);
        Toolbar toolbar = this.f15630A.getToolbar();
        if (toolbar != null) {
            toolbar.post(new RunnableC0057u(toolbar, i8));
        }
        if (App.f14424I) {
            i();
        } else {
            try {
                if (GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(this) == 0) {
                    CastButtonFactory.setUpMediaRouteButton(getApplicationContext(), this.f15630A.getToolbar().getMenu(), R.id.media_route_menu_item);
                } else {
                    MenuItem findItem = this.f15630A.getToolbar().getMenu().findItem(R.id.media_route_menu_item);
                    if (findItem != null) {
                        findItem.setVisible(false);
                    }
                }
            } catch (Exception unused2) {
                Log.e("Cast", "Menu Cast button setup failed");
            }
            new Handler().postDelayed(new RunnableC0055s(this, 6), 1000L);
        }
        this.f15630A.getToolbar().setOnMenuItemClickListener(new A0.a(this, 4));
        this.f15695q = (ImageView) findViewById(R.id.next_episode_button);
        MediaRouteButton mediaRouteButton = (MediaRouteButton) findViewById(R.id.media_route_button);
        this.f15693p = mediaRouteButton;
        if (mediaRouteButton != null && !App.f14424I) {
            try {
                int isGooglePlayServicesAvailable = GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(this);
                if (isGooglePlayServicesAvailable == 0) {
                    CastButtonFactory.setUpMediaRouteButton(getApplicationContext(), this.f15693p);
                    CastContext sharedInstance = CastContext.getSharedInstance(this);
                    this.f15662Q = sharedInstance;
                    this.f15712y0 = sharedInstance.getSessionManager();
                } else {
                    this.f15693p.setVisibility(8);
                    Log.d("Cast", "GMS not available. Status: " + isGooglePlayServicesAvailable);
                }
            } catch (Exception e7) {
                MediaRouteButton mediaRouteButton2 = this.f15693p;
                if (mediaRouteButton2 != null) {
                    mediaRouteButton2.setVisibility(8);
                }
                b.c.t(e7, new StringBuilder("Cast initialization failed: "), "Cast");
            }
        }
        this.f15690n = (TextClock) findViewById(R.id.clock);
        this.f15650K = (ImageView) findViewById(R.id.pause_icon);
        this.f15656N = (LinearLayout) findViewById(R.id.skip_intro_layout);
        this.f15652L = (LinearLayout) findViewById(R.id.movie_title_container);
        this.f15654M = (LinearLayout) findViewById(R.id.next_episode_layout);
        this.f15636D = (TextView) findViewById(R.id.movie_title_player_text);
        this.f15648J = (ImageView) findViewById(R.id.poster_image);
        this.f15638E = (TextView) findViewById(R.id.undertitle_episode);
        this.f15640F = (TextView) findViewById(R.id.undertitle);
        this.f15630A.setAutoPlay(true);
        this.f15630A.setBottomProgressBarVisibility(false);
        this.f15630A.setHideControlsOnPlay(true);
        this.f15630A.setHideControlsDuration(5000);
        this.f15630A.setCallback(this);
        this.f15630A.enableSwipeGestures(getWindow());
        this.f15634C = new Handler();
        this.f15685j0 = new RunnableC0055s(this, i2);
        this.f15630A.getToolbar().getMenu();
        View decorView = getWindow().getDecorView();
        this.f15713z = decorView;
        decorView.setSystemUiVisibility(AnalyticsListener.EVENT_PLAYER_RELEASED);
        String stringExtra = getIntent().getStringExtra("movie_id");
        this.f15670Y = stringExtra;
        if (stringExtra != null) {
            this.f15689m0 = App.getInstance().f14440s.getInt(this.f15670Y, -1);
        }
        if (this.f15689m0 > 5000) {
            this.f15687l0 = true;
        }
        String stringExtra2 = getIntent().getStringExtra("movie_rating");
        this.f15671Z = stringExtra2;
        if (stringExtra2 != null) {
            this.f15642G.setText(stringExtra2);
            this.f15642G.setVisibility(0);
            if (this.f15644H != null && (str = this.f15671Z) != null && !str.isEmpty()) {
                if (this.f15671Z.length() > 1) {
                    this.f15644H.setText(this.f15671Z);
                } else {
                    this.f15644H.setText("RATED " + this.f15671Z);
                }
                this.f15677e = true;
            }
        }
        if (this.f15646I != null) {
            u();
        } else if (this.f15684j) {
            this.f15648J.setVisibility(8);
            String stringExtra3 = getIntent().getStringExtra("title");
            if (stringExtra3 != null) {
                this.f15636D.setText(stringExtra3);
            }
        }
        this.f15709x.applyFontToView(this.f15636D, this.f15707w);
        Movie movie6 = this.f15646I;
        if (movie6 != null && this.f15672a0 && this.f15695q != null && movie6.isSeries()) {
            this.f15695q.setOnClickListener(new ViewOnClickListenerC0054q(this, 11));
        }
        this.f15711y = getIntent().getStringExtra("streamUrl");
        this.f15678e0 = getIntent().getStringExtra("mimeType");
        String stringExtra4 = getIntent().getStringExtra(C4913m.f14515o);
        if (AbstractC1000n.notNull(stringExtra4)) {
            HashMap hashMap = App.f14420E;
            hashMap.clear();
            hashMap.put(HttpHeaders.REFERER, stringExtra4);
        }
        if (!App.f14424I) {
            new Handler().postDelayed(new RunnableC0055s(this, i7), 1500L);
        } else if (this.f15711y != null) {
            I();
            playLink(this.f15711y, true);
        }
        if (this.f15646I != null && App.getInstance().f14440s.getBoolean("pref_sub_auto_dl", false) && ((n7 = n()) == null || !new File(n7).exists())) {
            k(false);
        }
        Toolbar toolbar2 = this.f15630A.getToolbar();
        if (toolbar2 != null) {
            toolbar2.post(new RunnableC0057u(toolbar2, i8));
        }
        m();
    }

    @Override // e.AbstractActivityC0842v, androidx.fragment.app.H, android.app.Activity
    public void onDestroy() {
        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false) && !f15629Q0) {
            App.getInstance().f14438q.scrobble(this.f15646I, this.f15681g0, this.f15682h0, o(), TraktAPI$ScrobbleState.f15795f).subscribeOn(Schedulers.io()).subscribe(new B4.r(4), new A4.c(8));
        }
        super.onDestroy();
        f15629Q0 = false;
        Handler handler = this.f15665T;
        if (handler != null) {
            handler.removeCallbacks(this.f15666U);
        }
        EventBus.getDefault().unregister(this);
        BetterVideoPlayer betterVideoPlayer = this.f15630A;
        if (betterVideoPlayer != null) {
            betterVideoPlayer.release();
        }
        Handler handler2 = this.f15634C;
        if (handler2 != null) {
            handler2.removeCallbacksAndMessages(null);
        }
    }

    @Override // K4.b
    public void onError(BetterVideoPlayer betterVideoPlayer, Exception exc) {
        z(false);
        if (exc != null) {
            String message = exc.getMessage();
            if (exc.getCause() == null || !exc.getCause().getClass().getName().contains("UnrecognizedInputFormatException")) {
                if (message != null && message.contains("Source error")) {
                    G("Unable to read video source. The file might be corrupted or the link expired.");
                    return;
                }
                if (message == null) {
                    message = i.k("Unknown Playback Error: ", message);
                }
                G(message);
                return;
            }
            FragmentManager fragmentManager = getFragmentManager();
            d newInstance = d.newInstance(this, false);
            newInstance.setTitle("Unsupported Video Format");
            newInstance.setMessage("Our internal Player could not decode the video. Please try with a more powerful Player like VLC or MX Player. You can change Player in Settings");
            newInstance.setButton1("GOT IT", new ViewOnClickListenerC0054q(this, 7));
            newInstance.setButton2("OPEN SETTINGS", new ViewOnClickListenerC0054q(this, 8));
            try {
                newInstance.show(fragmentManager, "");
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // e.AbstractActivityC0842v, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        View currentFocus = getCurrentFocus();
        ViewParent parent = currentFocus != null ? currentFocus.getParent() : null;
        if (currentFocus != null && i2 != 4 && ((parent instanceof ActionMenuView) || currentFocus.getId() == this.f15630A.f15851C.getId())) {
            return super.onKeyDown(i2, keyEvent);
        }
        int directionPressed = this.f15632B.getDirectionPressed(keyEvent);
        if (directionPressed == 1 || directionPressed == 7 || directionPressed == 2 || directionPressed == 6) {
            if (this.f15664S == -1) {
                this.f15664S = this.f15630A.getCurrentPosition();
                if (this.f15630A.isPlaying()) {
                    this.f15630A.pause();
                }
            }
            long j7 = this.f15664S + (((directionPressed == 1 || directionPressed == 7) ? -1 : 1) * 15000);
            this.f15664S = j7;
            if (j7 < 0) {
                this.f15664S = 0L;
            }
            if (this.f15664S > this.f15630A.getDuration()) {
                this.f15664S = this.f15630A.getDuration();
            }
            this.f15630A.updateVisualSeek(this.f15664S);
            Handler handler = this.f15665T;
            C c7 = this.f15666U;
            handler.removeCallbacks(c7);
            handler.postDelayed(c7, 400L);
            return true;
        }
        if (this.f15630A.isControlsShown() || directionPressed != 4) {
            this.f15630A.showControls();
            if (directionPressed == 4) {
                this.f15630A.toggleControls();
                return true;
            }
            if (directionPressed != 5) {
                switch (directionPressed) {
                    case 8:
                    case 9:
                        break;
                    case 10:
                        LinearLayout linearLayout = this.f15654M;
                        if (linearLayout != null && linearLayout.getVisibility() == 0) {
                            CountDownTimer countDownTimer = this.f15649J0;
                            if (countDownTimer != null) {
                                countDownTimer.cancel();
                            }
                            q();
                            try {
                                N4.a.Success(this, "Auto-play cancelled", null, 48, 0);
                                return true;
                            } catch (Exception unused) {
                                break;
                            }
                        } else {
                            if (this.f15701t.getVisibility() == 0) {
                                t();
                                return true;
                            }
                            if (this.f15630A.isControlsShown()) {
                                this.f15630A.hideControls();
                                return true;
                            }
                            A();
                            return true;
                        }
                        break;
                    case 11:
                        break;
                    default:
                        return false;
                }
            }
            try {
                if (this.f15630A.isPlaying()) {
                    this.f15650K.setVisibility(0);
                    this.f15630A.pause();
                    if (this.f15670Y != null) {
                        App.getInstance().f14440s.edit().putInt(this.f15670Y, (int) this.f15630A.getCurrentPosition()).apply();
                    }
                    requestAndDisplayAd();
                } else if (this.f15630A.isPrepared()) {
                    if (this.f15679f != null && this.f15645H0) {
                        this.f15703u.setVisibility(8);
                    }
                    this.f15650K.setImageResource(R.drawable.ic_play);
                    new Handler().postDelayed(new RunnableC0055s(this, 12), 200L);
                    this.f15630A.start();
                }
                this.f15630A.showControls();
                return true;
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        } else {
            try {
                MenuItem findItem = this.f15630A.getToolbar().getMenu().findItem(R.id.play_pause_button);
                if (findItem != null) {
                    findItem.setIcon(this.f15630A.isPlaying() ? R.drawable.pause_circle_40px : R.drawable.play_circle_40px);
                }
                if (this.f15630A.isPlaying()) {
                    this.f15630A.pause();
                    if (this.f15679f != null && this.f15645H0) {
                        this.f15703u.setVisibility(0);
                    }
                    this.f15650K.setVisibility(0);
                    return true;
                }
                if (this.f15630A.isPrepared()) {
                    this.f15650K.setImageResource(R.drawable.ic_play);
                    new Handler().postDelayed(new RunnableC0055s(this, 11), 200L);
                    if (this.f15679f != null && this.f15645H0) {
                        this.f15703u.setVisibility(8);
                    }
                    this.f15630A.start();
                    return true;
                }
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
        return true;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(PlayerEvent playerEvent) {
        VideoSource videoSource = playerEvent.vs;
        if (videoSource == null || !this.f15663R || this.f15706v0) {
            return;
        }
        this.f15663R = false;
        this.f15706v0 = true;
        if (this.f15697r.contains(videoSource)) {
            this.f15697r.add(playerEvent.vs);
        }
        if (!App.f14417B.contains(playerEvent.vs)) {
            App.f14417B.add(playerEvent.vs);
        }
        y(playerEvent.vs, true);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        this.f15711y = intent.getStringExtra("streamUrl");
        this.f15646I = (Movie) intent.getSerializableExtra("movie");
        this.f15697r = intent.getParcelableArrayListExtra("sources");
        this.f15670Y = intent.getStringExtra("movie_id");
        ArrayList arrayList = this.f15633B0;
        if (arrayList != null) {
            arrayList.clear();
        } else {
            this.f15633B0 = new ArrayList();
        }
        this.f15635C0 = -1;
        this.f15637D0 = false;
        BetterVideoPlayer betterVideoPlayer = this.f15630A;
        if (betterVideoPlayer != null) {
            betterVideoPlayer.removeCaptions();
            H();
            this.f15674b0 = false;
            CountDownTimer countDownTimer = this.f15649J0;
            if (countDownTimer != null) {
                countDownTimer.cancel();
            }
        }
        this.f15663R = false;
        this.f15706v0 = false;
        u();
        if (this.f15711y != null) {
            BetterVideoPlayer.LOG("onNewIntent: Loading new stream: " + this.f15711y, new Object[0]);
            this.f15630A.stop();
            this.f15630A.reset();
            I();
            playLink(this.f15711y, true);
            if (App.getInstance().f14440s.getBoolean("pref_sub_auto_dl", false)) {
                k(false);
            }
        }
    }

    @Override // androidx.fragment.app.H, android.app.Activity
    public void onPause() {
        BetterVideoPlayer betterVideoPlayer;
        super.onPause();
        if (Build.VERSION.SDK_INT < 24 && (betterVideoPlayer = this.f15630A) != null) {
            betterVideoPlayer.pause();
        }
        Handler handler = this.f15665T;
        if (handler != null) {
            handler.removeCallbacks(this.f15666U);
        }
        SessionManager sessionManager = this.f15712y0;
        if (sessionManager != null) {
            sessionManager.removeSessionManagerListener(this.f15714z0, CastSession.class);
            this.f15710x0 = null;
        }
    }

    @Override // K4.b
    public void onPaused(BetterVideoPlayer betterVideoPlayer) {
        w();
        this.f15675c0.removeCallbacks(this.f15676d0);
        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
            App.getInstance().f14438q.scrobble(this.f15646I, this.f15681g0, this.f15682h0, o(), TraktAPI$ScrobbleState.f15794e).observeOn(AndroidSchedulers.mainThread()).subscribe(new B4.r(2), new A4.c(5));
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onPictureInPictureModeChanged(boolean z6, Configuration configuration) {
        super.onPictureInPictureModeChanged(z6, configuration);
        View subtitleView = this.f15630A.getSubtitleView();
        f15629Q0 = z6;
        try {
            if (!z6) {
                if (this.f15650K != null && !this.f15630A.isPlaying()) {
                    this.f15650K.setVisibility(0);
                }
                if (this.f15630A.isControlsShown()) {
                    this.f15652L.setVisibility(0);
                }
                new Handler(Looper.getMainLooper()).postDelayed(new RunnableC0055s(this, 0), 300L);
                J(App.getInstance().f14440s.getInt("pref_subtitle_size", 3));
                if (subtitleView != null) {
                    if (subtitleView instanceof TextView) {
                        ((TextView) subtitleView).setLineSpacing(TypedValue.applyDimension(1, 4.0f, getResources().getDisplayMetrics()), 1.0f);
                    }
                    if (subtitleView.getLayoutParams() instanceof RelativeLayout.LayoutParams) {
                        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) subtitleView.getLayoutParams();
                        layoutParams.bottomMargin = (int) TypedValue.applyDimension(1, 40.0f, getResources().getDisplayMetrics());
                        subtitleView.setLayoutParams(layoutParams);
                        return;
                    }
                    return;
                }
                return;
            }
            this.f15630A.hideControls();
            this.f15630A.hideToolbar();
            ImageView imageView = this.f15650K;
            if (imageView != null) {
                imageView.setVisibility(8);
            }
            this.f15630A.setResizeMode(0);
            this.f15652L.setVisibility(8);
            TextClock textClock = this.f15690n;
            if (textClock != null) {
                textClock.setVisibility(8);
            }
            LinearLayout linearLayout = this.f15654M;
            if (linearLayout != null) {
                linearLayout.setVisibility(8);
            }
            this.f15630A.setSubSize((int) TypedValue.applyDimension(2, 8.0f, getResources().getDisplayMetrics()));
            if (subtitleView != null) {
                if (subtitleView instanceof TextView) {
                    ((TextView) subtitleView).setLineSpacing(0.0f, 1.0f);
                    subtitleView.setPadding(0, 0, 0, 0);
                }
                if (subtitleView.getLayoutParams() instanceof RelativeLayout.LayoutParams) {
                    RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) subtitleView.getLayoutParams();
                    layoutParams2.bottomMargin = (int) TypedValue.applyDimension(1, 2.0f, getResources().getDisplayMetrics());
                    layoutParams2.topMargin = 0;
                    subtitleView.setLayoutParams(layoutParams2);
                }
            }
        } catch (Exception unused) {
        }
    }

    @Override // K4.b
    public void onPrepared(BetterVideoPlayer betterVideoPlayer) {
        Handler handler = new Handler();
        Objects.requireNonNull(betterVideoPlayer);
        handler.postDelayed(new RunnableC0041d(betterVideoPlayer, 1), 200L);
    }

    @Override // K4.b
    public void onPreparing() {
    }

    @Override // K4.m
    public void onProgressUpdateChanged(int i2, int i7) {
        IntroDbResponse.Segment segment;
        boolean z6 = this.f15653L0;
        if (z6 || (segment = this.f15661P0) == null) {
            return;
        }
        double d7 = segment.confidence;
        if (d7 < 0.5d) {
            return;
        }
        long j7 = i2;
        if (j7 < segment.start_ms || j7 >= segment.end_ms || d7 < 0.5d || z6 || this.f15630A.getCurrentPosition() > this.f15661P0.end_ms) {
            return;
        }
        this.f15653L0 = true;
        ImageView imageView = (ImageView) findViewById(R.id.btn_close_skip_intro);
        ImageView imageView2 = (ImageView) findViewById(R.id.skip_intro_button_1);
        TextView textView = (TextView) findViewById(R.id.current_episode_name);
        if (imageView2 != null) {
            imageView2.setOnClickListener(new ViewOnClickListenerC0054q(this, 4));
        }
        if (imageView != null) {
            imageView.setOnClickListener(new ViewOnClickListenerC0054q(this, 5));
        }
        if (textView != null) {
            try {
                textView.setText(((Episode) this.f15660P.get(this.f15682h0 - 1)).title);
            } catch (Exception unused) {
            }
        }
        ProgressBar progressBar = (ProgressBar) findViewById(R.id.skip_intro_countdown_progress);
        if (this.f15656N.getVisibility() != 0) {
            this.f15656N.setVisibility(0);
            this.f15656N.startAnimation(this.f15694p0);
        }
        if (imageView2 != null) {
            imageView2.requestFocus();
        }
        CountDownTimer countDownTimer = this.f15651K0;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.f15651K0 = new B(this, progressBar).start();
    }

    @Override // androidx.fragment.app.H, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f15673b = false;
        this.f15672a0 = App.getInstance().f14440s.getBoolean("pref_auto_play_next_ep", true);
        if (App.getInstance().f14431b) {
            BetterVideoPlayer betterVideoPlayer = this.f15630A;
            if (betterVideoPlayer != null) {
                betterVideoPlayer.removeCaptions();
            }
            this.f15635C0 = -1;
            this.f15633B0 = new ArrayList();
            App.getInstance().f14431b = false;
            H();
        }
        this.f15688m = App.getInstance().f14440s.getBoolean("pref_show_time", false);
        SessionManager sessionManager = this.f15712y0;
        if (sessionManager != null) {
            this.f15710x0 = sessionManager.getCurrentCastSession();
            this.f15712y0.addSessionManagerListener(this.f15714z0, CastSession.class);
        }
    }

    @Override // K4.b
    public void onStarted(BetterVideoPlayer betterVideoPlayer) {
        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
            App.getInstance().f14438q.scrobble(this.f15646I, this.f15681g0, this.f15682h0, o(), TraktAPI$ScrobbleState.f15793b).observeOn(AndroidSchedulers.mainThread()).subscribe(new B4.r(3), new A4.c(6));
        }
        if (this.f15677e && !this.f15647I0) {
            new Handler().postDelayed(new RunnableC0055s(this, 4), Renderer.DEFAULT_DURATION_TO_PROGRESS_US);
        }
        Movie movie = this.f15646I;
        if (movie != null && movie.isSeries() && this.f15672a0 && !this.f15686k0) {
            this.f15686k0 = true;
        }
        if (this.f15687l0) {
            try {
                BetterVideoPlayer.LOG("Resuming playback at: " + this.f15689m0, new Object[0]);
                betterVideoPlayer.seekTo((long) (this.f15689m0 + (-1000)));
            } catch (Exception e3) {
                e3.printStackTrace();
            }
            this.f15687l0 = false;
        }
        this.f15663R = false;
        this.f15675c0.post(this.f15676d0);
        MenuItem findItem = betterVideoPlayer.getToolbar().getMenu().findItem(R.id.play_pause_button);
        if (findItem != null) {
            findItem.setIcon(R.drawable.pause_circle_40px);
        }
    }

    @Override // e.AbstractActivityC0842v, androidx.fragment.app.H, android.app.Activity
    public void onStop() {
        BetterVideoPlayer betterVideoPlayer;
        super.onStop();
        if (Build.VERSION.SDK_INT < 24 || (betterVideoPlayer = this.f15630A) == null) {
            return;
        }
        betterVideoPlayer.pause();
    }

    @Override // K4.b
    public void onToggleControls(boolean z6) {
        this.f15652L.setAlpha(1.0f);
        TextClock textClock = this.f15690n;
        if (textClock != null && this.f15688m) {
            textClock.setAlpha(1.0f);
            this.f15690n.setVisibility(z6 ? 0 : 8);
        }
        this.f15652L.setVisibility(z6 ? 0 : 8);
        if (z6) {
            this.f15630A.showToolbar();
            this.f15634C.removeCallbacks(this.f15685j0);
            this.f15634C.postDelayed(this.f15685j0, 4000L);
        }
    }

    @Override // android.app.Activity
    public void onUserLeaveHint() {
        BetterVideoPlayer betterVideoPlayer;
        if (this.f15673b) {
            return;
        }
        super.onUserLeaveHint();
        if (App.f14424I || Build.VERSION.SDK_INT < 26 || (betterVideoPlayer = this.f15630A) == null || !betterVideoPlayer.isPlaying()) {
            return;
        }
        v();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z6) {
        super.onWindowFocusChanged(z6);
        if (z6) {
            getWindow().getDecorView().setSystemUiVisibility(5894);
        }
    }

    public void openEpisode(int i2) {
        try {
            this.f15630A.hideControls();
            this.f15630A.hideToolbar();
        } catch (Exception unused) {
        }
        App.f14417B.clear();
        this.f15697r.clear();
        int i7 = this.f15682h0;
        this.f15682h0 = i2 + 1;
        t();
        if (this.f15646I.isSeries()) {
            this.f15680f0 = ((Episode) this.f15660P.get(i2)).title;
        }
        x(i7);
        if (App.getInstance().f14440s.getBoolean("pref_sub_auto_dl", false)) {
            k(false);
        }
    }

    public final void p() {
        d dVar = this.f15708w0;
        if (dVar != null) {
            try {
                dVar.dismiss();
            } catch (Exception unused) {
            }
        }
        if (this.f15645H0) {
            s();
        }
    }

    public void playLink(String str, boolean z6) {
        Movie movie;
        String n7;
        try {
            BetterVideoPlayer.LOG("playLink: Stopping and resetting player", new Object[0]);
            this.f15630A.stop();
            this.f15630A.reset();
            this.f15687l0 = false;
            HashMap hashMap = new HashMap();
            String stringExtra = getIntent().getStringExtra(C4913m.f14515o);
            if (stringExtra != null && !stringExtra.isEmpty()) {
                hashMap.put(HttpHeaders.REFERER, stringExtra);
            }
            HashMap hashMap2 = App.f14420E;
            if (hashMap2 != null && !hashMap2.isEmpty()) {
                hashMap.putAll(hashMap2);
            }
            BetterVideoPlayer.LOG("playLink: Setting source to " + str, new Object[0]);
            hashMap.put("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36");
            this.f15630A.setSource(Uri.parse(str), hashMap);
            this.f15630A.removeCaptions();
            if (z6 && (movie = this.f15646I) != null && !movie.drama && !movie.isAnime() && (n7 = n()) != null && new File(n7).exists()) {
                this.f15630A.setCaptionsPath(n7, CaptionsView.CMime.f15985b, "");
                H();
            }
            this.f15630A.prepare();
            this.f15630A.start();
        } catch (Exception e3) {
            BetterVideoPlayer.LOG("playLink: Error occurred - " + e3.getMessage(), new Object[0]);
            e3.printStackTrace();
        }
    }

    public final void q() {
        if (this.f15654M.getVisibility() == 8) {
            return;
        }
        this.f15654M.animate().cancel();
        this.f15654M.startAnimation(this.f15696q0);
        this.f15654M.setVisibility(8);
    }

    public final void r() {
        if (this.f15656N.getVisibility() == 8) {
            return;
        }
        this.f15656N.animate().cancel();
        this.f15656N.startAnimation(this.f15696q0);
        this.f15656N.setVisibility(8);
    }

    public void requestAndDisplayAd() {
    }

    public final void s() {
        try {
            this.f15703u.setVisibility(8);
            this.f15679f.clearAnimation();
            this.f15679f.setAlpha(1.0f);
        } catch (Exception unused) {
        }
    }

    public final void t() {
        this.f15701t.startAnimation(this.f15643G0);
        this.f15701t.setVisibility(8);
        this.f15705v.clearFocus();
    }

    public final void u() {
        String str;
        try {
            String image_url = this.f15646I.getImage_url();
            if (image_url != null && !image_url.isEmpty()) {
                try {
                    D.get().load(image_url).fit().centerCrop().into(this.f15648J, new F(this));
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
            String stringExtra = getIntent().getStringExtra("title");
            if (stringExtra != null) {
                this.f15636D.setText(stringExtra);
            }
            int i2 = this.f15669X;
            if (i2 > 0) {
                if (i2 > 60) {
                    str = (this.f15669X / 60) + "h " + (this.f15669X % 60) + CmcdData.OBJECT_TYPE_MANIFEST;
                } else {
                    str = this.f15669X + CmcdData.OBJECT_TYPE_MANIFEST;
                }
                this.f15640F.setText(this.f15646I.getYear() + "  ·  " + str);
            } else {
                this.f15640F.setText(this.f15646I.getYear());
            }
            if (this.f15646I.isSeries() || this.f15646I.isAnime() || this.f15646I.drama) {
                String stringExtra2 = getIntent().getStringExtra("title_episode");
                this.f15680f0 = stringExtra2;
                if (stringExtra2 == null || stringExtra2.isEmpty()) {
                    return;
                }
                this.f15638E.setVisibility(0);
                this.f15638E.setText(this.f15680f0);
            }
        } catch (Exception unused) {
        }
    }

    public final void v() {
        PictureInPictureParams build;
        if (Build.VERSION.SDK_INT >= 26) {
            PictureInPictureParams.Builder c7 = AbstractC0052o.c();
            BetterVideoPlayer betterVideoPlayer = this.f15630A;
            if (betterVideoPlayer != null && betterVideoPlayer.getExoPlayer() != null) {
                VideoSize videoSize = this.f15630A.getExoPlayer().getVideoSize();
                if (videoSize.width > 0 && videoSize.height > 0) {
                    Rational rational = new Rational(videoSize.width, videoSize.height);
                    float floatValue = rational.floatValue();
                    if (floatValue > 2.39f) {
                        rational = new Rational(239, 100);
                    } else if (floatValue < 0.41841003f) {
                        rational = new Rational(100, 239);
                    }
                    c7.setAspectRatio(rational);
                }
            }
            build = c7.build();
            enterPictureInPictureMode(build);
        }
    }

    public final void w() {
        try {
            if (this.f15670Y != null) {
                App.getInstance().f14440s.edit().putInt(this.f15670Y, (int) this.f15630A.getCurrentPosition()).apply();
            }
            this.f15630A.getCurrentPosition();
            MenuItem findItem = this.f15630A.getToolbar().getMenu().findItem(R.id.play_pause_button);
            if (findItem != null) {
                findItem.setIcon(R.drawable.play_circle_40px);
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public final void x(int i2) {
        ArrayList arrayList = this.f15660P;
        m();
        this.f15653L0 = false;
        this.f15677e = true;
        this.f15647I0 = false;
        if (this.f15663R) {
            return;
        }
        this.f15663R = true;
        CountDownTimer countDownTimer = this.f15649J0;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.f15674b0 = false;
        this.f15706v0 = false;
        this.f15663R = true;
        q();
        this.f15686k0 = false;
        this.f15647I0 = false;
        this.f15630A.hideControls();
        this.f15630A.hideToolbar();
        this.f15630A.pause();
        this.f15630A.stop();
        this.f15630A.reset();
        if (this.f15682h0 > App.getInstance().f14446y.size() || App.getInstance().f14446y.isEmpty()) {
            AbstractC0995i.makeToast(this, "Error indexing episodes list", true);
            return;
        }
        ArrayList arrayList2 = this.f15697r;
        if (arrayList2 == null) {
            this.f15697r = new ArrayList();
        } else {
            arrayList2.clear();
        }
        App.f14417B.clear();
        this.f15633B0.clear();
        this.f15635C0 = -1;
        this.f15637D0 = false;
        this.f15630A.removeCaptions();
        H();
        this.f15704u0 = false;
        this.f15706v0 = false;
        this.f15654M.setVisibility(8);
        this.f15670Y = this.f15646I.getMovieId() + "" + this.f15681g0 + "" + this.f15682h0;
        String charSequence = this.f15636D.getText().toString();
        StringBuilder sb = new StringBuilder("S");
        sb.append(this.f15681g0);
        sb.append("E");
        sb.append(i2);
        this.f15636D.setText(charSequence.replace(sb.toString(), "S" + this.f15681g0 + "E" + this.f15682h0));
        try {
            Episode episode = (Episode) arrayList.get(this.f15682h0 - 1);
            if (episode != null) {
                this.f15638E.setText(episode.title);
                this.f15680f0 = episode.title;
            } else {
                this.f15638E.setText("Episode " + this.f15682h0);
            }
        } catch (Exception unused) {
            this.f15638E.setText("Episode " + this.f15682h0);
        }
        if (this.f15705v != null) {
            V v6 = new V(this, arrayList, this.f15682h0 - 1);
            this.f15658O = v6;
            this.f15705v.setAdapter(v6);
            this.f15705v.scrollToPosition(this.f15682h0 - 1);
        }
        D(false);
        new Handler().postDelayed(new RunnableC0055s(this, 1), ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        final Movie movie = this.f15646I;
        Episode episode2 = (Episode) App.getInstance().f14446y.get(this.f15682h0 - 1);
        final int i7 = this.f15681g0;
        final int i8 = this.f15682h0;
        this.f15697r.clear();
        App.f14417B.clear();
        if (movie.isDrama()) {
            new b5.b(this, movie, this).process(episode2.url);
        } else if (movie.isAnime()) {
            String str = episode2.url;
            if (str != null) {
                str = str.replace("www9.gogoanime.io", "gogoanime.pe").replace("gogoanime.io", "gogoanime.pe");
            }
            if (str != null) {
                new C0936b(this, this, movie).Process(str);
            }
        } else {
            if (movie.getImdbID() != null && !movie.getImdbID().isEmpty()) {
                new Handler().postDelayed(new Runnable() { // from class: B4.x
                    @Override // java.lang.Runnable
                    public final void run() {
                        boolean z6 = SimpleVideoPlayer.f15629Q0;
                        SimpleVideoPlayer simpleVideoPlayer = SimpleVideoPlayer.this;
                        simpleVideoPlayer.getClass();
                        SharedPreferences sharedPreferences = App.getInstance().f14440s;
                        String str2 = Constant.f16184b;
                        new d5.l(simpleVideoPlayer, simpleVideoPlayer, sharedPreferences.getString("pref_ml_host", simpleVideoPlayer.getString(R.string.ml_host))).process(movie.getImdbID(), i7, i8);
                    }
                }, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
            }
            if (RealDebridCommon.f15828m || PremiumizeCommon.f15822b || AllDebridCommon.f15806f || J4.b.f1541a) {
                new x(this, movie, this).process(i7, i8, 1);
                new p(this, movie, this).process(i7, i8, 1);
                new C0402h(this, movie, this).process(i7, i8, 1);
                new t(this, movie, this).process(i7, i8);
                new Z4.j(this, movie, this).process(i7, i8);
            }
            if (movie.getMovieId() > 0 || (movie.getImdbID() != null && !movie.getImdbID().isEmpty())) {
                String valueOf = (movie.getImdbID() == null || movie.getImdbID().isEmpty()) ? String.valueOf(movie.getMovieId()) : movie.getImdbID();
                new CloudnestraExtractor(this, this).fetchLinks(valueOf, i7 + "", i8 + "", true ^ movie.isSeries());
            }
            int season_count = movie.seasons != null ? movie.getSeason_count() : 0;
            new flix.com.vision.processors.english.q(this, movie, this).process(i7, i8);
            new C0738b(this, movie, this).process(i7, i8);
            new v(this, movie, this).process(i7, i8);
            new flix.com.vision.processors.english.B(this, movie, this).process(i7, i8, season_count, movie.last_air_date);
            new VixSrcExtractor(this, this, movie).extractEpisode(i7, i8);
        }
        new Handler(Looper.getMainLooper()).postDelayed(new RunnableC0055s(this, 2), 8000L);
        new Handler().postDelayed(new RunnableC0055s(this, 3), 30000L);
        this.f15674b0 = false;
        CountDownTimer countDownTimer2 = this.f15649J0;
        if (countDownTimer2 != null) {
            countDownTimer2.cancel();
        }
    }

    public final void y(VideoSource videoSource, boolean z6) {
        BetterVideoPlayer betterVideoPlayer;
        if (this.f15663R || (betterVideoPlayer = this.f15630A) == null) {
            this.f15689m0 = 0;
        } else {
            int currentPosition = (int) betterVideoPlayer.getCurrentPosition();
            if (currentPosition > 5000) {
                this.f15689m0 = currentPosition;
            }
        }
        this.f15687l0 = this.f15689m0 > 5000;
        BetterVideoPlayer betterVideoPlayer2 = this.f15630A;
        if (betterVideoPlayer2 != null) {
            betterVideoPlayer2.stop();
            this.f15630A.reset();
        }
        HashMap p6 = b.c.p("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36");
        String str = videoSource.referer;
        if (str != null && !str.isEmpty()) {
            p6.put(HttpHeaders.REFERER, videoSource.referer);
        }
        Map<String, String> map = videoSource.headers;
        if (map != null && !map.isEmpty()) {
            p6.putAll(videoSource.headers);
        }
        BetterVideoPlayer betterVideoPlayer3 = this.f15630A;
        if (betterVideoPlayer3 != null) {
            betterVideoPlayer3.setSource(Uri.parse(videoSource.streamUrl), p6);
            if (z6) {
                this.f15630A.removeCaptions();
            }
            BetterVideoPlayer.LOG("playSource: Preparing and starting playback", new Object[0]);
            this.f15630A.prepare();
            this.f15630A.start();
        }
    }

    public final void z(boolean z6) {
        if (z6) {
            if (this.f15645H0) {
                F();
                return;
            } else {
                this.f15699s.setVisibility(0);
                return;
            }
        }
        if (this.f15645H0) {
            s();
        } else {
            this.f15699s.setVisibility(8);
        }
    }

    @Override // U4.f
    public void OnSuccess(VideoSource videoSource) {
        if (videoSource.streamable) {
            runOnUiThread(new n(2, this, videoSource));
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent() {
        if (this.f15630A.isControlsShown()) {
            this.f15630A.hideControls();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(SubEvent subEvent) {
        int i2 = subEvent.color;
        if (i2 > 0) {
            this.f15630A.setSubColor(i2);
        }
        int i7 = subEvent.size_index;
        if (i7 > 0) {
            J(i7);
        }
        BetterVideoPlayer betterVideoPlayer = this.f15630A;
        if (betterVideoPlayer == null || !betterVideoPlayer.isCaptionActive()) {
            return;
        }
        this.f15630A.changeEncoding(subEvent.encoding);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(CastAction castAction) {
        String str;
        if (this.f15637D0) {
            return;
        }
        this.f15637D0 = true;
        if (castAction != null && (str = castAction.file) != null) {
            try {
                if (!str.endsWith(".srt") && !castAction.file.endsWith(".vtt")) {
                    N4.a.Success(this, "Only SRT and VTT format are supported. Please choose another file", null, 48, 1);
                    return;
                }
                BetterVideoPlayer betterVideoPlayer = this.f15630A;
                String str2 = castAction.file;
                betterVideoPlayer.setCaptionsPath(str2, str2.contains(".srt") ? CaptionsView.CMime.f15985b : CaptionsView.CMime.f15986e, "");
                H();
                this.f15630A.start();
                if (this.f15679f != null && this.f15645H0) {
                    this.f15703u.setVisibility(8);
                }
                this.f15650K.setVisibility(8);
                MenuItem findItem = this.f15630A.getToolbar().getMenu().findItem(R.id.play_pause_button);
                if (findItem != null) {
                    findItem.setIcon(R.drawable.pause_circle_40px);
                }
                this.f15630A.hideControls();
                this.f15652L.setVisibility(8);
                if (!this.f15646I.isSeries()) {
                    App.getInstance().f14440s.edit().putString(this.f15646I.getMovieId() + "subtitle", castAction.file).apply();
                } else {
                    App.getInstance().f14440s.edit().putString(i.B(this.f15646I.getMovieId() + "" + this.f15681g0 + "" + this.f15682h0, "subtitle"), castAction.file).apply();
                }
                N4.a.Success(this, "Subtitles Loaded", null, 48, 0);
                return;
            } catch (Exception unused) {
                return;
            }
        }
        if (castAction == null || castAction.file != null) {
            return;
        }
        B();
    }
}

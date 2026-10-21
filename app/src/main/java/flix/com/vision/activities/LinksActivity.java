package flix.com.vision.activities;

import A.i;
import A4.q;
import B4.C0059w;
import B4.DialogInterfaceOnClickListenerC0039b;
import B4.DialogInterfaceOnDismissListenerC0040c;
import C4.j0;
import Q4.d;
import R4.e;
import T4.o;
import U4.f;
import U4.g;
import U4.h;
import Z4.j;
import Z4.y;
import a5.C0398d;
import a5.C0402h;
import a5.l;
import a5.p;
import a5.t;
import a5.x;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.FragmentManager;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.Renderer;
import androidx.recyclerview.widget.RecyclerView;
import c5.C0738b;
import com.github.ybq.android.spinkit.SpinKitView;
import com.google.firebase.sessions.settings.RemoteSettings;
import e.r;
import e5.C0858b;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.LinksActivity;
import flix.com.vision.activities.player.SimpleVideoPlayer;
import flix.com.vision.activities.player.WebPlayerActivity;
import flix.com.vision.activities.player.WebPlayerActivitySuper;
import flix.com.vision.api.alldebrid.AllDebridCommon;
import flix.com.vision.api.premiumize.PremiumizeCommon;
import flix.com.vision.api.realdebrid.RealDebridCommon;
import flix.com.vision.events.SystemEvent$ACTION;
import flix.com.vision.extractors.CloudnestraExtractor;
import flix.com.vision.extractors.VixSrcExtractor;
import flix.com.vision.helpers.CenterLayoutManager;
import flix.com.vision.models.C4913m;
import flix.com.vision.models.Movie;
import flix.com.vision.models.MySourceArrayList;
import flix.com.vision.models.VideoSource;
import flix.com.vision.processors.english.B;
import flix.com.vision.processors.english.C0936b;
import flix.com.vision.processors.english.s;
import flix.com.vision.processors.english.v;
import flix.com.vision.subtitles.OpenSubtitles;
import flix.com.vision.tv.Constant;
import h5.AbstractC0995i;
import h5.AbstractC1000n;
import h5.C0996j;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Random;
import m4.D;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import x4.C1851d;
import y4.Q;
import y4.S;
import y4.T;

/* loaded from: classes2.dex */
public class LinksActivity extends flix.com.vision.activities.base.a implements f, h, g {

    /* renamed from: b0, reason: collision with root package name */
    public static final /* synthetic */ int f14702b0 = 0;

    /* renamed from: A, reason: collision with root package name */
    public ImageView f14703A;

    /* renamed from: B, reason: collision with root package name */
    public ImageView f14704B;

    /* renamed from: C, reason: collision with root package name */
    public int f14705C;

    /* renamed from: D, reason: collision with root package name */
    public int f14706D;

    /* renamed from: E, reason: collision with root package name */
    public int f14707E;

    /* renamed from: F, reason: collision with root package name */
    public String f14708F;

    /* renamed from: G, reason: collision with root package name */
    public ImageView f14709G;

    /* renamed from: H, reason: collision with root package name */
    public ImageView f14710H;

    /* renamed from: I, reason: collision with root package name */
    public TextView f14711I;

    /* renamed from: J, reason: collision with root package name */
    public TextView f14712J;

    /* renamed from: K, reason: collision with root package name */
    public TextView f14713K;

    /* renamed from: L, reason: collision with root package name */
    public Disposable f14714L;

    /* renamed from: P, reason: collision with root package name */
    public Bundle f14718P;

    /* renamed from: Q, reason: collision with root package name */
    public boolean f14719Q;

    /* renamed from: R, reason: collision with root package name */
    public Handler f14720R;

    /* renamed from: S, reason: collision with root package name */
    public T f14721S;

    /* renamed from: T, reason: collision with root package name */
    public boolean f14722T;

    /* renamed from: V, reason: collision with root package name */
    public String f14724V;

    /* renamed from: X, reason: collision with root package name */
    public int f14726X;

    /* renamed from: Y, reason: collision with root package name */
    public Menu f14727Y;

    /* renamed from: b, reason: collision with root package name */
    public LinearLayout f14730b;

    /* renamed from: e, reason: collision with root package name */
    public RelativeLayout f14731e;

    /* renamed from: f, reason: collision with root package name */
    public RelativeLayout f14732f;

    /* renamed from: j, reason: collision with root package name */
    public RelativeLayout f14733j;

    /* renamed from: m, reason: collision with root package name */
    public TextView f14734m;

    /* renamed from: n, reason: collision with root package name */
    public TextView f14735n;

    /* renamed from: p, reason: collision with root package name */
    public TextView f14736p;

    /* renamed from: q, reason: collision with root package name */
    public TextView f14737q;

    /* renamed from: r, reason: collision with root package name */
    public SpinKitView f14738r;

    /* renamed from: s, reason: collision with root package name */
    public C0996j f14739s;

    /* renamed from: t, reason: collision with root package name */
    public Typeface f14740t;

    /* renamed from: u, reason: collision with root package name */
    public Typeface f14741u;

    /* renamed from: v, reason: collision with root package name */
    public RecyclerView f14742v;

    /* renamed from: w, reason: collision with root package name */
    public MySourceArrayList f14743w;

    /* renamed from: x, reason: collision with root package name */
    public Movie f14744x;

    /* renamed from: y, reason: collision with root package name */
    public j0 f14745y;

    /* renamed from: z, reason: collision with root package name */
    public ImageView f14746z;

    /* renamed from: M, reason: collision with root package name */
    public String f14715M = null;

    /* renamed from: N, reason: collision with root package name */
    public String f14716N = null;

    /* renamed from: O, reason: collision with root package name */
    public String f14717O = App.getInstance().f14444w;

    /* renamed from: U, reason: collision with root package name */
    public int f14723U = 0;

    /* renamed from: W, reason: collision with root package name */
    public String f14725W = "";

    /* renamed from: Z, reason: collision with root package name */
    public ArrayList f14728Z = new ArrayList();

    /* renamed from: a0, reason: collision with root package name */
    public d f14729a0 = null;

    public static void PlayExternal(int i2, VideoSource videoSource, String str, Movie movie, Activity activity, int i7) {
        if (movie != null) {
            App.getInstance().f14432e = true;
            try {
                App.getInstance().f14439r.addtoWatching(movie);
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
        if (i2 == 1) {
            o.PlayMXPlayer(activity, str, videoSource.streamUrl, null, videoSource.referer, i7);
        } else if (i2 == 2) {
            o.PlayVLC(activity, str, videoSource.streamUrl, null, videoSource.referer, i7);
        } else {
            if (i2 != 3) {
                return;
            }
            o.PlayXPlayer(activity, null, videoSource.streamUrl);
        }
    }

    public static void setRDQtyLabel(VideoSource videoSource) {
        String str;
        if (videoSource == null || (str = videoSource.streamUrl) == null) {
            return;
        }
        if (str.contains("480p")) {
            videoSource.label = "480p - " + videoSource.label;
            videoSource.quality = 480;
            return;
        }
        if (videoSource.streamUrl.contains("720p")) {
            videoSource.quality = 720;
            videoSource.label = "720p - " + videoSource.label;
            return;
        }
        if (videoSource.streamUrl.contains("1080p")) {
            videoSource.quality = 1080;
            videoSource.label = "1080p - " + videoSource.label;
            return;
        }
        if (videoSource.streamUrl.contains("1440")) {
            videoSource.quality = 1440;
            videoSource.label = "1440 - " + videoSource.label;
            return;
        }
        if (videoSource.streamUrl.contains("2160p")) {
            videoSource.quality = 4000;
            videoSource.label = "4K - " + videoSource.label;
            return;
        }
        if (videoSource.streamUrl.contains("4320p")) {
            videoSource.quality = 8000;
            videoSource.label = "8K - " + videoSource.label;
            return;
        }
        if (videoSource.streamUrl.toLowerCase().contains(".sd")) {
            videoSource.quality = 720;
            videoSource.label = "720p - " + videoSource.label;
            return;
        }
        if (videoSource.streamUrl.toLowerCase().contains(".4k")) {
            videoSource.quality = 4000;
            videoSource.label = "4K - " + videoSource.label;
            return;
        }
        if (videoSource.streamUrl.toLowerCase().contains(".hdtv")) {
            videoSource.quality = 1080;
            videoSource.label = "1080p - " + videoSource.label;
            return;
        }
        if (videoSource.streamUrl.toLowerCase().contains(".hd")) {
            videoSource.quality = 1080;
            videoSource.label = "1080p - " + videoSource.label;
        }
    }

    @Override // U4.f
    public void OnError() {
    }

    @Override // U4.g
    public void OnM3USuccess(ArrayList<VideoSource> arrayList) {
        d dVar = this.f14729a0;
        if (dVar != null) {
            try {
                dVar.dismiss();
            } catch (Exception unused) {
            }
        }
        this.f14728Z = arrayList;
        try {
            ArrayList arrayList2 = new ArrayList();
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                arrayList2.add(arrayList.get(i2).label.toUpperCase(Locale.ROOT));
            }
            CharSequence[] charSequenceArr = (CharSequence[]) arrayList2.toArray(new CharSequence[arrayList2.size()]);
            r rVar = new r(new ContextThemeWrapper(this, R.style.AlertDialogNoHeader));
            rVar.setSingleChoiceItems(charSequenceArr, -1, new DialogInterfaceOnClickListenerC0039b(3, this, arrayList));
            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(3));
            rVar.show();
        } catch (Exception unused2) {
        }
    }

    @Override // U4.f
    public void OnSuccess(ArrayList<VideoSource> arrayList) {
        if (arrayList.size() > 0) {
            Iterator<VideoSource> it = arrayList.iterator();
            while (it.hasNext()) {
                VideoSource next = it.next();
                if (next.streamUrl.contains("google")) {
                    next.streamable = true;
                    if (new Random().nextBoolean()) {
                        next.label = "720p -  " + next.label;
                    } else {
                        next.label = "1080p -  " + next.label;
                    }
                }
                if (next.streamUrl.contains("loadvid") || next.streamUrl.contains("vidcloud") || next.streamUrl.contains("vcstream")) {
                    EventBus.getDefault().post(next);
                }
                if (next.label.contains("HLS")) {
                    this.f14743w.add(next);
                    App.f14417B.add(next);
                } else if (next.streamable) {
                    this.f14743w.add(0, next);
                    App.f14417B.add(next);
                } else {
                    this.f14743w.add(next);
                    App.f14417B.add(next);
                }
                if (next.streamable) {
                    this.f14723U++;
                }
            }
        }
    }

    public final void e(final VideoSource videoSource) {
        VideoSource videoSource2;
        if (videoSource.requireMXPlayer) {
            FragmentManager fragmentManager = getFragmentManager();
            d newInstance = d.newInstance(this, true);
            newInstance.setTitle("Play With MX Player");
            newInstance.setMessage("This File Format can only be played with MX Player. \nPlease make sure MX Player is installed");
            newInstance.setButton1("CANCEL", new q(6));
            final int i2 = 0;
            newInstance.setButton2("PLAY WITH MX Player", new View.OnClickListener(this) { // from class: y4.U

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ LinksActivity f21176e;

                {
                    this.f21176e = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    VideoSource videoSource3 = videoSource;
                    switch (i2) {
                        case 0:
                            int i7 = LinksActivity.f14702b0;
                            LinksActivity linksActivity = this.f21176e;
                            linksActivity.getClass();
                            try {
                                String title = linksActivity.f14744x.getTitle();
                                if (linksActivity.f14744x.isSeries()) {
                                    title = title + " - S" + linksActivity.f14705C + "E" + linksActivity.f14706D + " - " + linksActivity.f14725W;
                                }
                                T4.o.PlayMXPlayer(linksActivity, title, videoSource3.streamUrl, null, videoSource3.referer, App.getInstance().f14440s.getInt(linksActivity.f14716N, -1));
                                App.getInstance().f14432e = true;
                                try {
                                    App.getInstance().f14439r.addtoWatching(linksActivity.f14744x);
                                    break;
                                } catch (Exception e3) {
                                    e3.printStackTrace();
                                    return;
                                }
                            } catch (Exception unused) {
                                return;
                            }
                        default:
                            int i8 = LinksActivity.f14702b0;
                            LinksActivity linksActivity2 = this.f21176e;
                            linksActivity2.getClass();
                            try {
                                String title2 = linksActivity2.f14744x.getTitle();
                                if (linksActivity2.f14744x.isSeries()) {
                                    title2 = title2 + " - S" + linksActivity2.f14705C + "E" + linksActivity2.f14706D + " - " + linksActivity2.f14725W;
                                }
                                T4.o.PlayVLC(linksActivity2, title2, videoSource3.streamUrl, null, videoSource3.referer, App.getInstance().f14440s.getInt(linksActivity2.f14716N, -1));
                                App.getInstance().f14432e = true;
                                try {
                                    App.getInstance().f14439r.addtoWatching(linksActivity2.f14744x);
                                    break;
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                }
                            } catch (Exception unused2) {
                                return;
                            }
                    }
                }
            });
            try {
                newInstance.show(fragmentManager, "");
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        } else if (videoSource.requireVLC) {
            FragmentManager fragmentManager2 = getFragmentManager();
            d newInstance2 = d.newInstance(this, true);
            newInstance2.setTitle("Play With VLC");
            newInstance2.setMessage("This File Format can only be played with VLC. \nPlease make sure VLC is installed");
            newInstance2.setButton1("CANCEL", new q(6));
            final int i7 = 1;
            newInstance2.setButton2("PLAY WITH VLC", new View.OnClickListener(this) { // from class: y4.U

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ LinksActivity f21176e;

                {
                    this.f21176e = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    VideoSource videoSource3 = videoSource;
                    switch (i7) {
                        case 0:
                            int i72 = LinksActivity.f14702b0;
                            LinksActivity linksActivity = this.f21176e;
                            linksActivity.getClass();
                            try {
                                String title = linksActivity.f14744x.getTitle();
                                if (linksActivity.f14744x.isSeries()) {
                                    title = title + " - S" + linksActivity.f14705C + "E" + linksActivity.f14706D + " - " + linksActivity.f14725W;
                                }
                                T4.o.PlayMXPlayer(linksActivity, title, videoSource3.streamUrl, null, videoSource3.referer, App.getInstance().f14440s.getInt(linksActivity.f14716N, -1));
                                App.getInstance().f14432e = true;
                                try {
                                    App.getInstance().f14439r.addtoWatching(linksActivity.f14744x);
                                    break;
                                } catch (Exception e32) {
                                    e32.printStackTrace();
                                    return;
                                }
                            } catch (Exception unused) {
                                return;
                            }
                        default:
                            int i8 = LinksActivity.f14702b0;
                            LinksActivity linksActivity2 = this.f21176e;
                            linksActivity2.getClass();
                            try {
                                String title2 = linksActivity2.f14744x.getTitle();
                                if (linksActivity2.f14744x.isSeries()) {
                                    title2 = title2 + " - S" + linksActivity2.f14705C + "E" + linksActivity2.f14706D + " - " + linksActivity2.f14725W;
                                }
                                T4.o.PlayVLC(linksActivity2, title2, videoSource3.streamUrl, null, videoSource3.referer, App.getInstance().f14440s.getInt(linksActivity2.f14716N, -1));
                                App.getInstance().f14432e = true;
                                try {
                                    App.getInstance().f14439r.addtoWatching(linksActivity2.f14744x);
                                    break;
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                }
                            } catch (Exception unused2) {
                                return;
                            }
                    }
                }
            });
            try {
                newInstance2.show(fragmentManager2, "");
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        } else if (videoSource.isSplitted || !videoSource.isSplitable() || App.getInstance().f14440s.getBoolean("pref_adult_zone_always_play_best", true)) {
            int i8 = App.getInstance().f14440s.getInt("player_index", 0);
            if (i8 <= 0 || i8 >= 4) {
                if (i8 != 4) {
                    f(videoSource);
                    return;
                }
                try {
                    App.getInstance().f14432e = true;
                    try {
                        App.getInstance().f14439r.addtoWatching(this.f14744x);
                    } catch (Exception e8) {
                        e8.printStackTrace();
                    }
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(videoSource.streamUrl));
                    intent.setDataAndType(Uri.parse(videoSource.streamUrl), MimeTypes.VIDEO_MP4);
                    startActivity(intent);
                    return;
                } catch (Exception e9) {
                    AbstractC0995i.makeToast(this, e9.getMessage(), false);
                    return;
                }
            }
            String title = this.f14744x.getTitle();
            if (this.f14744x.isSeries()) {
                StringBuilder s6 = i.s(title, " - S");
                s6.append(this.f14705C);
                s6.append("E");
                s6.append(this.f14706D);
                s6.append(" - ");
                s6.append(this.f14725W);
                title = s6.toString();
            }
            try {
                videoSource2 = videoSource;
                try {
                    PlayExternal(i8, videoSource2, title, this.f14744x, this, App.getInstance().f14440s.getInt(this.f14716N, -1));
                } catch (Exception unused) {
                    Toast.makeText(getBaseContext(), "Failed to load external Player, Make sure it is installed", 1).show();
                    f(videoSource2);
                }
            } catch (Exception unused2) {
                videoSource2 = videoSource;
            }
        } else {
            FragmentManager fragmentManager3 = getFragmentManager();
            d newInstance3 = d.newInstance(this, false);
            this.f14729a0 = newInstance3;
            newInstance3.setloading();
            try {
                this.f14729a0.show(fragmentManager3, "");
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            Y4.c cVar = new Y4.c(this, this);
            cVar.setHindiM3uSpliCallBack(this);
            cVar.process(videoSource, videoSource.referer);
        }
    }

    public final void f(VideoSource videoSource) {
        String title = this.f14744x.getTitle();
        if (this.f14744x.isSeries()) {
            StringBuilder s6 = i.s(title, " · S");
            s6.append(this.f14705C);
            s6.append("E");
            s6.append(this.f14706D);
            title = s6.toString();
        }
        App.getInstance().f14432e = true;
        try {
            App.getInstance().f14439r.addtoWatching(this.f14744x);
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        Intent intent = new Intent(this, (Class<?>) SimpleVideoPlayer.class);
        intent.addFlags(335544320);
        intent.putExtra("mimeType", videoSource.mimeType);
        intent.putExtra("season_year", this.f14708F);
        intent.putExtra("movie", this.f14744x);
        intent.putExtra("title", title);
        intent.putExtra("language", videoSource.language);
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        if (videoSource.isHindiDirect) {
            Iterator<VideoSource> it = this.f14743w.iterator();
            while (it.hasNext()) {
                VideoSource next = it.next();
                if (next.streamable && next.isHindiDirect && next.isSplitted) {
                    arrayList.add(next);
                }
            }
            ArrayList arrayList2 = this.f14728Z;
            if (arrayList2 != null) {
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    VideoSource videoSource2 = (VideoSource) it2.next();
                    if (videoSource2.streamable && videoSource2.isHindiDirect && videoSource2.isSplitted) {
                        arrayList.add(videoSource2);
                    }
                }
            }
        } else {
            Iterator<VideoSource> it3 = this.f14743w.iterator();
            while (it3.hasNext()) {
                VideoSource next2 = it3.next();
                if (next2.streamable && !next2.requireVLC) {
                    arrayList.add(next2);
                }
            }
        }
        intent.putExtra("current_index", arrayList.indexOf(videoSource));
        intent.putParcelableArrayListExtra("sources", arrayList);
        if (this.f14744x.isAnime() || this.f14744x.drama) {
            this.f14724V = "Episode " + this.f14706D;
        }
        intent.putExtra("title_episode", this.f14724V);
        intent.putExtra("season_number", this.f14705C);
        intent.putExtra("episode_number", this.f14706D);
        intent.putExtra("episode_count", this.f14707E);
        intent.putExtra(OpenSubtitles.Params.Key.EPISODE, this.f14725W);
        int i2 = this.f14726X;
        if (i2 <= 0) {
            i2 = this.f14744x.getDuration();
        }
        intent.putExtra("runtime", i2);
        intent.putExtra("streamUrl", videoSource.streamUrl);
        intent.putExtra("movie_id", this.f14716N);
        if (AbstractC1000n.notNull(videoSource.referer)) {
            intent.putExtra(C4913m.f14515o, videoSource.referer);
        }
        String str = this.f14744x.certification;
        if (str != null && !str.isEmpty()) {
            intent.putExtra("movie_rating", this.f14744x.certification + "");
        }
        startActivity(intent);
    }

    public final void g(String str, String str2, String str3, String str4) {
        this.f14724V = str3;
        if (this.f14710H == null || this.f14711I == null || this.f14744x.getType() != 1) {
            return;
        }
        if (str.length() > 0) {
            try {
                D.get().load(str).fit().centerCrop().into(this.f14710H);
            } catch (OutOfMemoryError e3) {
                e3.printStackTrace();
            }
        }
        if (str2.length() > 0) {
            this.f14711I.setText(str2);
        }
        if (str3.length() > 0) {
            this.f14712J.setText("S" + this.f14705C + "E" + this.f14706D + " · " + str3);
        }
        if (str4 == null || str4.length() <= 0) {
            return;
        }
        this.f14713K.setText(str4);
    }

    public void linkClicked(VideoSource videoSource, boolean z6) {
        String title = this.f14744x.getTitle();
        if (this.f14744x.isSeries()) {
            StringBuilder s6 = i.s(title, " · S");
            s6.append(this.f14705C);
            s6.append("E");
            s6.append(this.f14706D);
            title = s6.toString();
        }
        App.getInstance().getClass();
        if (videoSource.streamable) {
            e(videoSource);
            return;
        }
        Intent intent = new Intent(this, (Class<?>) WebPlayerActivity.class);
        if (videoSource.label.contains("FLIXVISION1")) {
            intent = new Intent(this, (Class<?>) WebPlayerActivitySuper.class);
        }
        String image_url = this.f14744x.getType() > 2 ? this.f14744x.getImage_url() : this.f14744x.getCover();
        if (getResources().getConfiguration().orientation == 1) {
            image_url = this.f14744x.getImage_url() != null ? this.f14744x.getImage_url().replace("w185", "w500").replace("w342", "w500") : this.f14744x.getCover();
        }
        Movie movie = this.f14744x;
        if (movie.is_title_logo_available) {
            intent.putExtra("title_logo", movie.logoUrl);
        }
        String str = this.f14744x.certification;
        if (str != null && !str.isEmpty()) {
            intent.putExtra("movie_rating", this.f14744x.certification + "");
        }
        intent.putExtra("url", videoSource.streamUrl);
        intent.putExtra("move_clock", videoSource.move_clock_right);
        intent.putExtra("poster", image_url);
        intent.putExtra("episode_number", this.f14706D);
        intent.putExtra("season_number", this.f14705C);
        intent.putExtra("title", title);
        if (this.f14744x.isAnime() || this.f14744x.drama) {
            this.f14724V = "Episode " + this.f14706D;
        }
        intent.putExtra("title_episode", this.f14724V);
        intent.putExtra("movie_url", this.f14744x.getUrl());
        intent.putExtra("movie", this.f14744x);
        intent.putExtra("title_simple", this.f14744x.getTitle());
        intent.putExtra("img_url", this.f14744x.getImage_url());
        intent.putExtra("movie_url", this.f14744x.getUrl());
        App.getInstance().f14432e = true;
        try {
            App.getInstance().f14439r.addtoWatching(this.f14744x);
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        int i2 = this.f14726X;
        if (i2 <= 0) {
            i2 = this.f14744x.getDuration();
        }
        intent.putExtra("runtime", i2);
        intent.putExtra("BIG_POSTER_URL", "");
        startActivity(intent);
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i7, Intent intent) {
        String stringExtra;
        super.onActivityResult(i2, i7, intent);
        if (i2 == 6261) {
            if (i7 != -1 || intent == null || (stringExtra = intent.getStringExtra("end_by")) == null) {
                return;
            }
            if (!stringExtra.equals("user")) {
                if (!stringExtra.equals("playback_completion") || this.f14744x.isSeries()) {
                    return;
                }
                App.getInstance().f14439r.markAsWatched(this.f14744x);
                App.getInstance().f14440s.edit().remove(this.f14716N).apply();
                AbstractC0995i.makeToast(this, "Playback completed. Marking as Watched", false);
                return;
            }
            long longExtra = intent.getLongExtra("position", -1L);
            if (longExtra > 0) {
                if (((int) ((100 * longExtra) / (this.f14744x.getDuration() * ExoPlayer.DEFAULT_STUCK_PLAYING_NOT_ENDING_TIMEOUT_MS))) > 95 && !this.f14744x.isSeries()) {
                    App.getInstance().f14439r.markAsWatched(this.f14744x);
                    App.getInstance().f14440s.edit().remove(this.f14716N).apply();
                    return;
                }
                String str = this.f14716N;
                if (str == null || str.isEmpty()) {
                    return;
                }
                App.getInstance().f14440s.edit().putInt(this.f14716N, (int) longExtra).apply();
                return;
            }
            return;
        }
        if (i2 == 6565) {
            if (i7 == -1) {
                if (intent != null) {
                    long longExtra2 = intent.getLongExtra("extra_position", -1L);
                    if (longExtra2 > 0) {
                        if (((int) ((100 * longExtra2) / (this.f14744x.getDuration() * ExoPlayer.DEFAULT_STUCK_PLAYING_NOT_ENDING_TIMEOUT_MS))) > 95 && !this.f14744x.isSeries()) {
                            App.getInstance().f14439r.markAsWatched(this.f14744x);
                            App.getInstance().f14440s.edit().remove(this.f14716N).apply();
                            return;
                        }
                        String str2 = this.f14716N;
                        if (str2 == null || str2.isEmpty()) {
                            return;
                        }
                        App.getInstance().f14440s.edit().putInt(this.f14716N, (int) longExtra2).apply();
                        return;
                    }
                    return;
                }
                return;
            }
            if (i7 == 0) {
                AbstractC0995i.makeToast(this, "No compatible cpu, incorrect VLC abi variant installed", false);
                return;
            }
            if (i7 == 2) {
                AbstractC0995i.makeToast(this, "Connection failed to audio service", false);
                return;
            }
            if (i7 == 3) {
                AbstractC0995i.makeToast(this, "Error with hardware acceleration, user refused to switch to software decoding", false);
            } else if (i7 == 4) {
                AbstractC0995i.makeToast(this, "VLC is not able to play this file, it could be incorrect path/uri, not supported codec or broken file", false);
            } else {
                if (i7 != 5) {
                    return;
                }
                AbstractC0995i.makeToast(this, "VLC continues playback, but for audio track only. (Audio file detected or user chose to)", false);
            }
        }
    }

    @Override // U4.h
    public void onAdded() {
        e eVar = new e();
        eVar.f3129a = SystemEvent$ACTION.f15994f;
        EventBus.getDefault().post(eVar);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    @SuppressLint({"CheckResult"})
    public void onBackPressed() {
        HashSet hashSet;
        HashSet hashSet2;
        ArrayDeque arrayDeque;
        HashSet hashSet3;
        super.onBackPressed();
        EventBus.getDefault().post(new T4.e());
        if (AllDebridCommon.f15806f && (hashSet3 = AllDebridCommon.f15804b) != null && hashSet3.size() > 0) {
            App.deleteAllMagnetsAllDebrid();
        }
        if (RealDebridCommon.f15828m && (arrayDeque = RealDebridCommon.f15827j) != null && arrayDeque.size() > 0) {
            App.getInstance().deleteTorrentsRealDebridNew();
        }
        if (J4.b.f1541a && (hashSet2 = J4.b.f1543c) != null && hashSet2.size() > 0) {
            Iterator it = J4.b.f1543c.iterator();
            while (it.hasNext()) {
                D4.a.deleteTorboxTorrent((String) it.next()).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C1851d(6), new C1851d(7));
            }
            J4.b.f1543c.clear();
        }
        if (!G4.b.f1174a || (hashSet = G4.b.f1176c) == null || hashSet.size() <= 0) {
            return;
        }
        D4.a.deleteOffcloudDownloads(G4.b.f1176c).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C1851d(8), new C1851d(7));
        G4.b.f1176c.clear();
    }

    /* JADX WARN: Type inference failed for: r2v5, types: [y4.T] */
    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        MenuItem findItem;
        Movie movie;
        RelativeLayout relativeLayout;
        SpinKitView spinKitView;
        final int i2 = 3;
        final int i7 = 2;
        super.onCreate(bundle);
        this.f14718P = bundle;
        boolean z6 = true;
        z6 = true;
        z6 = true;
        z6 = true;
        z6 = true;
        final int i8 = 0;
        if (bundle == null) {
            ArrayList arrayList = App.f14423H;
            if (arrayList == null) {
                App.f14423H = new ArrayList();
            } else {
                arrayList.clear();
            }
            if (App.getInstance().f14440s.getBoolean("IS_RD_LOGGED_IN", false)) {
                App.getInstance().refreshTokenRD();
            }
            if (App.getInstance().f14440s.getBoolean("PREM_LOGGED_IN", false)) {
                PremiumizeCommon.f15822b = true;
                SharedPreferences sharedPreferences = App.getInstance().f14440s;
                String str = T4.f.f3687a;
                PremiumizeCommon.f15823e = sharedPreferences.getString("prem_apikey", null);
            }
            if (App.getInstance().f14440s.getBoolean("ALL_DEBRID_LOGGED_IN", false)) {
                AllDebridCommon.f15806f = true;
                SharedPreferences sharedPreferences2 = App.getInstance().f14440s;
                String str2 = T4.f.f3687a;
                AllDebridCommon.f15807j = sharedPreferences2.getString("all_debrid_apikey", null);
            }
        }
        App.f14417B.clear();
        this.f14717O = T4.f.f3687a;
        this.f14744x = (Movie) getIntent().getSerializableExtra("movie");
        SharedPreferences sharedPreferences3 = App.getInstance().f14440s;
        String str3 = Constant.f16184b;
        this.f14715M = sharedPreferences3.getString("autoembed_url", "https://autoembed.co");
        RealDebridCommon.f15828m = App.getInstance().f14440s.getBoolean("IS_RD_LOGGED_IN", false);
        Movie movie2 = this.f14744x;
        if (movie2 == null || !movie2.isSeries()) {
            setContentView(R.layout.activity_links_movies);
        } else {
            setContentView(R.layout.activity_links);
        }
        this.f14720R = new Handler();
        final int i9 = 4;
        this.f14721S = new Runnable(this) { // from class: y4.T

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ LinksActivity f21172e;

            {
                this.f21172e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                LinksActivity linksActivity = this.f21172e;
                switch (i9) {
                    case 0:
                        int i10 = LinksActivity.f14702b0;
                        linksActivity.getClass();
                        SharedPreferences sharedPreferences4 = App.getInstance().f14440s;
                        String str4 = Constant.f16184b;
                        new d5.f(linksActivity, linksActivity, sharedPreferences4.getString("pref_ml_host", linksActivity.getString(R.string.ml_host))).process(linksActivity.f14744x.getImdbID());
                        break;
                    case 1:
                        linksActivity.f14744x.getMovieId();
                        new VideoSource();
                        VideoSource videoSource = new VideoSource();
                        videoSource.streamUrl = "https://embed.smashystream.com/playere.php?tmdb=" + linksActivity.f14744x.getMovieId();
                        videoSource.label = "1080p - 720p - 480p [FLIXVISION2]";
                        videoSource.is_embed = true;
                        linksActivity.f14743w.add(videoSource);
                        String str5 = "https://vidsrc.xyz/embed/movie/" + linksActivity.f14744x.getMovieId();
                        VideoSource videoSource2 = new VideoSource();
                        videoSource2.streamUrl = str5;
                        videoSource2.label = "1080p - 720p - 480p [FLIXVISION5]";
                        videoSource2.is_embed = true;
                        linksActivity.f14743w.add(videoSource2);
                        linksActivity.f14745y.notifyDataSetChanged();
                        linksActivity.f14742v.setItemAnimator(null);
                        break;
                    case 2:
                        int i11 = LinksActivity.f14702b0;
                        linksActivity.getClass();
                        SharedPreferences sharedPreferences5 = App.getInstance().f14440s;
                        String str6 = Constant.f16184b;
                        new d5.l(linksActivity, linksActivity, sharedPreferences5.getString("pref_ml_host", linksActivity.getString(R.string.ml_host))).process(linksActivity.f14744x.getImdbID(), linksActivity.f14705C, linksActivity.f14706D);
                        break;
                    case 3:
                        linksActivity.f14744x.getMovieId();
                        VideoSource videoSource3 = new VideoSource();
                        videoSource3.streamUrl = "https://embed.smashystream.com/playere.php?tmdb=" + linksActivity.f14744x.getMovieId() + "&season=" + linksActivity.f14705C + "&episode=" + linksActivity.f14706D;
                        videoSource3.label = "1080p - 720p - 480p [FLIXVISION2]";
                        videoSource3.is_embed = true;
                        linksActivity.f14743w.add(videoSource3);
                        videoSource3.streamUrl = linksActivity.f14715M + "/tv/tmdb/" + linksActivity.f14744x.getMovieId() + "-" + linksActivity.f14705C + "-" + linksActivity.f14706D;
                        videoSource3.label = "1080p - 720p - 480p-[FLIXVISION3]";
                        videoSource3.is_embed = true;
                        linksActivity.f14743w.add(videoSource3);
                        String str7 = "https://vixsrc.to/tv/" + linksActivity.f14744x.getImdbID() + RemoteSettings.FORWARD_SLASH_STRING + linksActivity.f14705C + RemoteSettings.FORWARD_SLASH_STRING + linksActivity.f14706D;
                        VideoSource videoSource4 = new VideoSource();
                        videoSource4.streamUrl = str7;
                        videoSource4.label = "1080p - 720p - 480p - [FLIXVISION11]";
                        videoSource4.is_embed = true;
                        linksActivity.f14743w.add(videoSource4);
                        StringBuilder sb = new StringBuilder("https://vidsrc.sh/embed/tv/");
                        sb.append(linksActivity.f14744x.getMovieId());
                        sb.append(RemoteSettings.FORWARD_SLASH_STRING);
                        sb.append(linksActivity.f14705C);
                        sb.append("-");
                        String m7 = A.i.m(sb, linksActivity.f14706D, RemoteSettings.FORWARD_SLASH_STRING);
                        VideoSource videoSource5 = new VideoSource();
                        videoSource5.streamUrl = m7;
                        videoSource5.label = "1080p - 720p - 480p [FLIXVISION5]";
                        videoSource5.is_embed = true;
                        linksActivity.f14743w.add(videoSource5);
                        linksActivity.f14745y.notifyDataSetChanged();
                        linksActivity.f14742v.setItemAnimator(null);
                        break;
                    case 4:
                        SpinKitView spinKitView2 = linksActivity.f14738r;
                        if (spinKitView2 != null) {
                            spinKitView2.setVisibility(8);
                            RelativeLayout relativeLayout2 = linksActivity.f14733j;
                            if (relativeLayout2 != null) {
                                relativeLayout2.setVisibility(8);
                                break;
                            }
                        }
                        break;
                    default:
                        linksActivity.f14732f.setOnClickListener(new Q(linksActivity, 1));
                        break;
                }
            }
        };
        App.getInstance().f14440s.getInt("mouse_toggle_mode", 0);
        this.f14740t = Typeface.createFromAsset(getAssets(), "fonts/pproduct_sans_rregular.ttf");
        this.f14741u = Typeface.createFromAsset(getAssets(), "fonts/product_sans_bold.ttf");
        this.f14739s = new C0996j();
        EventBus.getDefault().register(this);
        this.f14704B = (ImageView) findViewById(R.id.settings_image_view);
        this.f14730b = (LinearLayout) findViewById(R.id.settings_button_movies_page);
        this.f14733j = (RelativeLayout) findViewById(R.id.stop_rd_fetch_button);
        this.f14742v = (RecyclerView) findViewById(R.id.listview_links);
        this.f14737q = (TextView) findViewById(R.id.links_act_page_title_rd);
        this.f14710H = (ImageView) findViewById(R.id.mini_poster);
        this.f14746z = (ImageView) findViewById(R.id.refresh_button_imageview);
        this.f14735n = (TextView) findViewById(R.id.links_act_page_title);
        this.f14736p = (TextView) findViewById(R.id.links_act_reload_text);
        this.f14703A = (ImageView) findViewById(R.id.settings_button_imageview);
        this.f14731e = (RelativeLayout) findViewById(R.id.settings_button_links_act);
        this.f14734m = (TextView) findViewById(R.id.links_act__settings_text);
        this.f14711I = (TextView) findViewById(R.id.plot_text);
        this.f14732f = (RelativeLayout) findViewById(R.id.reload_button_links_act);
        this.f14738r = (SpinKitView) findViewById(R.id.spin_kit_2);
        this.f14712J = (TextView) findViewById(R.id.episode_title);
        this.f14713K = (TextView) findViewById(R.id.aired_on);
        this.f14743w = new MySourceArrayList(this);
        this.f14709G = (ImageView) findViewById(R.id.background_image);
        if (bundle != null && (spinKitView = this.f14738r) != null) {
            spinKitView.setVisibility(8);
            this.f14733j.setVisibility(8);
        }
        j0 j0Var = new j0(this, this.f14743w);
        this.f14745y = j0Var;
        j0Var.setHasStableIds(true);
        this.f14742v.setAdapter(this.f14745y);
        this.f14742v.setLayoutManager(new CenterLayoutManager(this, 1, false));
        b.c.s(this.f14742v, 8);
        if (this.f14704B != null) {
            this.f14730b.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: y4.V

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ LinksActivity f21181e;

                {
                    this.f21181e = this;
                }

                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view, boolean z7) {
                    LinksActivity linksActivity = this.f21181e;
                    switch (i8) {
                        case 0:
                            int i10 = LinksActivity.f14702b0;
                            linksActivity.getClass();
                            try {
                                if (z7) {
                                    linksActivity.f14704B.setColorFilter(new PorterDuffColorFilter(A.h.getColor(linksActivity, R.color.black), PorterDuff.Mode.SRC_IN));
                                } else {
                                    linksActivity.f14704B.setColorFilter(new PorterDuffColorFilter(A.h.getColor(linksActivity, R.color.white), PorterDuff.Mode.SRC_IN));
                                }
                                break;
                            } catch (Exception unused) {
                                return;
                            }
                        case 1:
                            if (!z7) {
                                linksActivity.f14746z.setColorFilter(new PorterDuffColorFilter(A.h.getColor(linksActivity, R.color.white), PorterDuff.Mode.SRC_IN));
                                linksActivity.f14736p.setTextColor(linksActivity.getResources().getColor(R.color.white));
                                linksActivity.f14732f.animate().scaleX(1.0f).start();
                                linksActivity.f14732f.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                linksActivity.f14746z.setColorFilter(new PorterDuffColorFilter(A.h.getColor(linksActivity, R.color.black), PorterDuff.Mode.SRC_IN));
                                linksActivity.f14736p.setTextColor(linksActivity.getResources().getColor(R.color.black));
                                b.c.r(linksActivity.f14732f, 100L, 1.03f);
                                b.c.w(linksActivity.f14732f, 100L, 1.03f);
                                break;
                            }
                        default:
                            if (!z7) {
                                linksActivity.f14703A.setColorFilter(new PorterDuffColorFilter(A.h.getColor(linksActivity, R.color.white), PorterDuff.Mode.SRC_IN));
                                linksActivity.f14734m.setTextColor(linksActivity.getResources().getColor(R.color.white));
                                linksActivity.f14731e.animate().scaleX(1.0f).start();
                                linksActivity.f14731e.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                linksActivity.f14703A.setColorFilter(new PorterDuffColorFilter(A.h.getColor(linksActivity, R.color.black), PorterDuff.Mode.SRC_IN));
                                linksActivity.f14734m.setTextColor(linksActivity.getResources().getColor(R.color.black));
                                b.c.r(linksActivity.f14731e, 100L, 1.03f);
                                b.c.w(linksActivity.f14731e, 100L, 1.03f);
                                break;
                            }
                    }
                }
            });
        }
        LinearLayout linearLayout = this.f14730b;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new Q(this, i7));
        }
        Movie movie3 = this.f14744x;
        if (movie3 == null) {
            return;
        }
        String image_url = movie3.getType() > 2 ? this.f14744x.getImage_url() : this.f14744x.getCover();
        if (getResources().getConfiguration().orientation == 1 && this.f14744x.getImage_url() != null) {
            image_url = this.f14744x.getImage_url().replace("w185", "w500").replace("w342", "w500");
        }
        try {
            D.get().load(image_url).fit().centerCrop().into(this.f14709G);
        } catch (OutOfMemoryError e3) {
            e3.printStackTrace();
        }
        if (this.f14744x.isSeries()) {
            Disposable disposable = this.f14714L;
            if (disposable != null) {
                disposable.dispose();
            }
            String str4 = getIntent().getIntExtra("episode_id", -1) + "";
            this.f14714L = D4.a.getEpisode(this, this.f14744x.getMovieId() + "", getIntent().getIntExtra(OpenSubtitles.Params.Key.SEASON, -1) + "", str4).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new E4.c(this, 12), new C1851d(7));
        }
        if (this.f14744x.isSeries() || this.f14744x.isAnime() || this.f14744x.drama) {
            this.f14705C = getIntent().getIntExtra(OpenSubtitles.Params.Key.SEASON, 0);
            this.f14706D = getIntent().getIntExtra("episode_number", 0);
            this.f14708F = getIntent().getStringExtra("season_year");
            this.f14707E = getIntent().getIntExtra("episode_count", 0);
            this.f14744x.season = i.m(new StringBuilder(), this.f14705C, "");
        }
        if (bundle != null) {
            try {
                this.f14743w.addAll(bundle.getParcelableArrayList("sources"));
                this.f14745y.notifyDataSetChanged();
                this.f14742v.setItemAnimator(null);
                Menu menu = this.f14727Y;
                if (menu != null && (findItem = menu.findItem(R.id.action_count)) != null) {
                    findItem.setTitle(this.f14743w.size() + "");
                }
            } catch (Exception unused) {
            }
        } else if (this.f14744x.getType() == 3) {
            String stringExtra = getIntent().getStringExtra("url");
            if (stringExtra != null) {
                stringExtra = stringExtra.replace("www9.gogoanime.io", "gogoanime.pe").replace("gogoanime.io", "gogoanime.pe");
            }
            this.f14706D = getIntent().getIntExtra("episode_number", 0);
            if (stringExtra != null) {
                new C0936b(this, this, this.f14744x).Process(stringExtra);
            }
        } else if (this.f14744x.isDrama()) {
            new b5.b(this, this.f14744x, this).process(getIntent().getStringExtra("url"));
        } else if (!App.getInstance().f14440s.getBoolean("pref_show_debrid_links_only", false)) {
            boolean z7 = App.getInstance().f14440s.getBoolean("hindi_include_english", true);
            if (this.f14744x.getType() == 0) {
                if (this.f14744x.getMovieId() > 0 || (this.f14744x.getImdbID() != null && !this.f14744x.getImdbID().isEmpty())) {
                    new CloudnestraExtractor(this, this).fetchLinks((this.f14744x.getImdbID() == null || this.f14744x.getImdbID().isEmpty()) ? String.valueOf(this.f14744x.getMovieId()) : this.f14744x.getImdbID(), null, null, !this.f14744x.isSeries());
                }
                if (this.f14744x.getImdbID() != null && this.f14744x.getImdbID().length() > 0) {
                    new Handler().postDelayed(new Runnable(this) { // from class: y4.T

                        /* renamed from: e, reason: collision with root package name */
                        public final /* synthetic */ LinksActivity f21172e;

                        {
                            this.f21172e = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            LinksActivity linksActivity = this.f21172e;
                            switch (i8) {
                                case 0:
                                    int i10 = LinksActivity.f14702b0;
                                    linksActivity.getClass();
                                    SharedPreferences sharedPreferences4 = App.getInstance().f14440s;
                                    String str42 = Constant.f16184b;
                                    new d5.f(linksActivity, linksActivity, sharedPreferences4.getString("pref_ml_host", linksActivity.getString(R.string.ml_host))).process(linksActivity.f14744x.getImdbID());
                                    break;
                                case 1:
                                    linksActivity.f14744x.getMovieId();
                                    new VideoSource();
                                    VideoSource videoSource = new VideoSource();
                                    videoSource.streamUrl = "https://embed.smashystream.com/playere.php?tmdb=" + linksActivity.f14744x.getMovieId();
                                    videoSource.label = "1080p - 720p - 480p [FLIXVISION2]";
                                    videoSource.is_embed = true;
                                    linksActivity.f14743w.add(videoSource);
                                    String str5 = "https://vidsrc.xyz/embed/movie/" + linksActivity.f14744x.getMovieId();
                                    VideoSource videoSource2 = new VideoSource();
                                    videoSource2.streamUrl = str5;
                                    videoSource2.label = "1080p - 720p - 480p [FLIXVISION5]";
                                    videoSource2.is_embed = true;
                                    linksActivity.f14743w.add(videoSource2);
                                    linksActivity.f14745y.notifyDataSetChanged();
                                    linksActivity.f14742v.setItemAnimator(null);
                                    break;
                                case 2:
                                    int i11 = LinksActivity.f14702b0;
                                    linksActivity.getClass();
                                    SharedPreferences sharedPreferences5 = App.getInstance().f14440s;
                                    String str6 = Constant.f16184b;
                                    new d5.l(linksActivity, linksActivity, sharedPreferences5.getString("pref_ml_host", linksActivity.getString(R.string.ml_host))).process(linksActivity.f14744x.getImdbID(), linksActivity.f14705C, linksActivity.f14706D);
                                    break;
                                case 3:
                                    linksActivity.f14744x.getMovieId();
                                    VideoSource videoSource3 = new VideoSource();
                                    videoSource3.streamUrl = "https://embed.smashystream.com/playere.php?tmdb=" + linksActivity.f14744x.getMovieId() + "&season=" + linksActivity.f14705C + "&episode=" + linksActivity.f14706D;
                                    videoSource3.label = "1080p - 720p - 480p [FLIXVISION2]";
                                    videoSource3.is_embed = true;
                                    linksActivity.f14743w.add(videoSource3);
                                    videoSource3.streamUrl = linksActivity.f14715M + "/tv/tmdb/" + linksActivity.f14744x.getMovieId() + "-" + linksActivity.f14705C + "-" + linksActivity.f14706D;
                                    videoSource3.label = "1080p - 720p - 480p-[FLIXVISION3]";
                                    videoSource3.is_embed = true;
                                    linksActivity.f14743w.add(videoSource3);
                                    String str7 = "https://vixsrc.to/tv/" + linksActivity.f14744x.getImdbID() + RemoteSettings.FORWARD_SLASH_STRING + linksActivity.f14705C + RemoteSettings.FORWARD_SLASH_STRING + linksActivity.f14706D;
                                    VideoSource videoSource4 = new VideoSource();
                                    videoSource4.streamUrl = str7;
                                    videoSource4.label = "1080p - 720p - 480p - [FLIXVISION11]";
                                    videoSource4.is_embed = true;
                                    linksActivity.f14743w.add(videoSource4);
                                    StringBuilder sb = new StringBuilder("https://vidsrc.sh/embed/tv/");
                                    sb.append(linksActivity.f14744x.getMovieId());
                                    sb.append(RemoteSettings.FORWARD_SLASH_STRING);
                                    sb.append(linksActivity.f14705C);
                                    sb.append("-");
                                    String m7 = A.i.m(sb, linksActivity.f14706D, RemoteSettings.FORWARD_SLASH_STRING);
                                    VideoSource videoSource5 = new VideoSource();
                                    videoSource5.streamUrl = m7;
                                    videoSource5.label = "1080p - 720p - 480p [FLIXVISION5]";
                                    videoSource5.is_embed = true;
                                    linksActivity.f14743w.add(videoSource5);
                                    linksActivity.f14745y.notifyDataSetChanged();
                                    linksActivity.f14742v.setItemAnimator(null);
                                    break;
                                case 4:
                                    SpinKitView spinKitView2 = linksActivity.f14738r;
                                    if (spinKitView2 != null) {
                                        spinKitView2.setVisibility(8);
                                        RelativeLayout relativeLayout2 = linksActivity.f14733j;
                                        if (relativeLayout2 != null) {
                                            relativeLayout2.setVisibility(8);
                                            break;
                                        }
                                    }
                                    break;
                                default:
                                    linksActivity.f14732f.setOnClickListener(new Q(linksActivity, 1));
                                    break;
                            }
                        }
                    }, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
                    String str5 = "https://vidsrc-embed.ru/embed/movie/" + this.f14744x.getImdbID();
                    VideoSource videoSource = new VideoSource();
                    videoSource.streamUrl = str5;
                    videoSource.label = "1080p - 720p - 480p -[FLIXVISION]";
                    videoSource.is_embed = true;
                    this.f14743w.add(videoSource);
                    String str6 = "https://vidsrc-embed.ru/embed/movie/" + this.f14744x.getImdbID();
                    VideoSource videoSource2 = new VideoSource();
                    videoSource2.streamUrl = str6;
                    videoSource2.label = "1080p - 720p - 480p - [FLIXVISION1-1]";
                    videoSource2.is_embed = true;
                    this.f14743w.add(videoSource2);
                    String str7 = "https://vixsrc.to/movie/" + this.f14744x.getImdbID();
                    VideoSource videoSource3 = new VideoSource();
                    videoSource3.streamUrl = str7;
                    videoSource3.label = "1080p - 720p - 480p - [FLIXVISION1-11]";
                    videoSource3.is_embed = true;
                    this.f14743w.add(videoSource3);
                    String str8 = "https://cinesrc.st/embed/movie/" + this.f14744x.getMovieId() + "?autoplay=true";
                    VideoSource videoSource4 = new VideoSource();
                    videoSource4.streamUrl = str8;
                    videoSource4.label = "1080p - 720p - 480p - [FLIXVISION1-12]";
                    videoSource4.is_embed = true;
                    this.f14743w.add(videoSource4);
                    String str9 = this.f14717O + "/se_player.php?video_id=" + this.f14744x.getImdbID();
                    VideoSource videoSource5 = new VideoSource();
                    videoSource5.streamUrl = str9;
                    videoSource5.label = "1080p - 720p - 480p - [FLIXVISION1]";
                    videoSource5.is_embed = true;
                    this.f14743w.add(0, videoSource5);
                }
                if (this.f14744x.getMovieId() > 0 && z7) {
                    Handler handler = new Handler();
                    final int i10 = z6 ? 1 : 0;
                    handler.postDelayed(new Runnable(this) { // from class: y4.T

                        /* renamed from: e, reason: collision with root package name */
                        public final /* synthetic */ LinksActivity f21172e;

                        {
                            this.f21172e = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            LinksActivity linksActivity = this.f21172e;
                            switch (i10) {
                                case 0:
                                    int i102 = LinksActivity.f14702b0;
                                    linksActivity.getClass();
                                    SharedPreferences sharedPreferences4 = App.getInstance().f14440s;
                                    String str42 = Constant.f16184b;
                                    new d5.f(linksActivity, linksActivity, sharedPreferences4.getString("pref_ml_host", linksActivity.getString(R.string.ml_host))).process(linksActivity.f14744x.getImdbID());
                                    break;
                                case 1:
                                    linksActivity.f14744x.getMovieId();
                                    new VideoSource();
                                    VideoSource videoSource6 = new VideoSource();
                                    videoSource6.streamUrl = "https://embed.smashystream.com/playere.php?tmdb=" + linksActivity.f14744x.getMovieId();
                                    videoSource6.label = "1080p - 720p - 480p [FLIXVISION2]";
                                    videoSource6.is_embed = true;
                                    linksActivity.f14743w.add(videoSource6);
                                    String str52 = "https://vidsrc.xyz/embed/movie/" + linksActivity.f14744x.getMovieId();
                                    VideoSource videoSource22 = new VideoSource();
                                    videoSource22.streamUrl = str52;
                                    videoSource22.label = "1080p - 720p - 480p [FLIXVISION5]";
                                    videoSource22.is_embed = true;
                                    linksActivity.f14743w.add(videoSource22);
                                    linksActivity.f14745y.notifyDataSetChanged();
                                    linksActivity.f14742v.setItemAnimator(null);
                                    break;
                                case 2:
                                    int i11 = LinksActivity.f14702b0;
                                    linksActivity.getClass();
                                    SharedPreferences sharedPreferences5 = App.getInstance().f14440s;
                                    String str62 = Constant.f16184b;
                                    new d5.l(linksActivity, linksActivity, sharedPreferences5.getString("pref_ml_host", linksActivity.getString(R.string.ml_host))).process(linksActivity.f14744x.getImdbID(), linksActivity.f14705C, linksActivity.f14706D);
                                    break;
                                case 3:
                                    linksActivity.f14744x.getMovieId();
                                    VideoSource videoSource32 = new VideoSource();
                                    videoSource32.streamUrl = "https://embed.smashystream.com/playere.php?tmdb=" + linksActivity.f14744x.getMovieId() + "&season=" + linksActivity.f14705C + "&episode=" + linksActivity.f14706D;
                                    videoSource32.label = "1080p - 720p - 480p [FLIXVISION2]";
                                    videoSource32.is_embed = true;
                                    linksActivity.f14743w.add(videoSource32);
                                    videoSource32.streamUrl = linksActivity.f14715M + "/tv/tmdb/" + linksActivity.f14744x.getMovieId() + "-" + linksActivity.f14705C + "-" + linksActivity.f14706D;
                                    videoSource32.label = "1080p - 720p - 480p-[FLIXVISION3]";
                                    videoSource32.is_embed = true;
                                    linksActivity.f14743w.add(videoSource32);
                                    String str72 = "https://vixsrc.to/tv/" + linksActivity.f14744x.getImdbID() + RemoteSettings.FORWARD_SLASH_STRING + linksActivity.f14705C + RemoteSettings.FORWARD_SLASH_STRING + linksActivity.f14706D;
                                    VideoSource videoSource42 = new VideoSource();
                                    videoSource42.streamUrl = str72;
                                    videoSource42.label = "1080p - 720p - 480p - [FLIXVISION11]";
                                    videoSource42.is_embed = true;
                                    linksActivity.f14743w.add(videoSource42);
                                    StringBuilder sb = new StringBuilder("https://vidsrc.sh/embed/tv/");
                                    sb.append(linksActivity.f14744x.getMovieId());
                                    sb.append(RemoteSettings.FORWARD_SLASH_STRING);
                                    sb.append(linksActivity.f14705C);
                                    sb.append("-");
                                    String m7 = A.i.m(sb, linksActivity.f14706D, RemoteSettings.FORWARD_SLASH_STRING);
                                    VideoSource videoSource52 = new VideoSource();
                                    videoSource52.streamUrl = m7;
                                    videoSource52.label = "1080p - 720p - 480p [FLIXVISION5]";
                                    videoSource52.is_embed = true;
                                    linksActivity.f14743w.add(videoSource52);
                                    linksActivity.f14745y.notifyDataSetChanged();
                                    linksActivity.f14742v.setItemAnimator(null);
                                    break;
                                case 4:
                                    SpinKitView spinKitView2 = linksActivity.f14738r;
                                    if (spinKitView2 != null) {
                                        spinKitView2.setVisibility(8);
                                        RelativeLayout relativeLayout2 = linksActivity.f14733j;
                                        if (relativeLayout2 != null) {
                                            relativeLayout2.setVisibility(8);
                                            break;
                                        }
                                    }
                                    break;
                                default:
                                    linksActivity.f14732f.setOnClickListener(new Q(linksActivity, 1));
                                    break;
                            }
                        }
                    }, 5000L);
                }
                if (App.getInstance().f14440s.getBoolean("pref_show_hindi_dubbed", false)) {
                    new e5.f(this, this.f14744x, this).process();
                    new e5.h(this, this.f14744x, this).process();
                    new C0858b(this, this.f14744x, this).process();
                    new e5.d(this, this.f14744x, this).process();
                }
                if (z7) {
                    if (RealDebridCommon.f15828m || PremiumizeCommon.f15822b || AllDebridCommon.f15806f || J4.b.f1541a || G4.b.f1174a) {
                        new y(this, this.f14744x, this).process(1);
                        new t(this, this.f14744x, this).process(1);
                        new l(this, this.f14744x, this).process(1);
                        new C0398d(this, this.f14744x, this).process(1);
                        new Z4.o(this, this.f14744x, this).process(1);
                        new Z4.e(this, this.f14744x, this).process(1);
                    }
                    new b5.d(this, this.f14744x, this).process();
                    new s(this, this.f14744x, this).process();
                    new flix.com.vision.processors.english.y(this, this.f14744x, this).process();
                    new VixSrcExtractor(this, this, this.f14744x).extract();
                }
            } else {
                if (this.f14744x.getMovieId() > 0 || (this.f14744x.getImdbID() != null && !this.f14744x.getImdbID().isEmpty())) {
                    new CloudnestraExtractor(this, this).fetchLinks((this.f14744x.getImdbID() == null || this.f14744x.getImdbID().isEmpty()) ? String.valueOf(this.f14744x.getMovieId()) : this.f14744x.getImdbID(), i.m(new StringBuilder(), this.f14705C, ""), i.m(new StringBuilder(), this.f14706D, ""), !this.f14744x.isSeries());
                }
                if (this.f14744x.getImdbID() != null && this.f14744x.getImdbID().length() > 0) {
                    new Handler().postDelayed(new Runnable(this) { // from class: y4.T

                        /* renamed from: e, reason: collision with root package name */
                        public final /* synthetic */ LinksActivity f21172e;

                        {
                            this.f21172e = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            LinksActivity linksActivity = this.f21172e;
                            switch (i7) {
                                case 0:
                                    int i102 = LinksActivity.f14702b0;
                                    linksActivity.getClass();
                                    SharedPreferences sharedPreferences4 = App.getInstance().f14440s;
                                    String str42 = Constant.f16184b;
                                    new d5.f(linksActivity, linksActivity, sharedPreferences4.getString("pref_ml_host", linksActivity.getString(R.string.ml_host))).process(linksActivity.f14744x.getImdbID());
                                    break;
                                case 1:
                                    linksActivity.f14744x.getMovieId();
                                    new VideoSource();
                                    VideoSource videoSource6 = new VideoSource();
                                    videoSource6.streamUrl = "https://embed.smashystream.com/playere.php?tmdb=" + linksActivity.f14744x.getMovieId();
                                    videoSource6.label = "1080p - 720p - 480p [FLIXVISION2]";
                                    videoSource6.is_embed = true;
                                    linksActivity.f14743w.add(videoSource6);
                                    String str52 = "https://vidsrc.xyz/embed/movie/" + linksActivity.f14744x.getMovieId();
                                    VideoSource videoSource22 = new VideoSource();
                                    videoSource22.streamUrl = str52;
                                    videoSource22.label = "1080p - 720p - 480p [FLIXVISION5]";
                                    videoSource22.is_embed = true;
                                    linksActivity.f14743w.add(videoSource22);
                                    linksActivity.f14745y.notifyDataSetChanged();
                                    linksActivity.f14742v.setItemAnimator(null);
                                    break;
                                case 2:
                                    int i11 = LinksActivity.f14702b0;
                                    linksActivity.getClass();
                                    SharedPreferences sharedPreferences5 = App.getInstance().f14440s;
                                    String str62 = Constant.f16184b;
                                    new d5.l(linksActivity, linksActivity, sharedPreferences5.getString("pref_ml_host", linksActivity.getString(R.string.ml_host))).process(linksActivity.f14744x.getImdbID(), linksActivity.f14705C, linksActivity.f14706D);
                                    break;
                                case 3:
                                    linksActivity.f14744x.getMovieId();
                                    VideoSource videoSource32 = new VideoSource();
                                    videoSource32.streamUrl = "https://embed.smashystream.com/playere.php?tmdb=" + linksActivity.f14744x.getMovieId() + "&season=" + linksActivity.f14705C + "&episode=" + linksActivity.f14706D;
                                    videoSource32.label = "1080p - 720p - 480p [FLIXVISION2]";
                                    videoSource32.is_embed = true;
                                    linksActivity.f14743w.add(videoSource32);
                                    videoSource32.streamUrl = linksActivity.f14715M + "/tv/tmdb/" + linksActivity.f14744x.getMovieId() + "-" + linksActivity.f14705C + "-" + linksActivity.f14706D;
                                    videoSource32.label = "1080p - 720p - 480p-[FLIXVISION3]";
                                    videoSource32.is_embed = true;
                                    linksActivity.f14743w.add(videoSource32);
                                    String str72 = "https://vixsrc.to/tv/" + linksActivity.f14744x.getImdbID() + RemoteSettings.FORWARD_SLASH_STRING + linksActivity.f14705C + RemoteSettings.FORWARD_SLASH_STRING + linksActivity.f14706D;
                                    VideoSource videoSource42 = new VideoSource();
                                    videoSource42.streamUrl = str72;
                                    videoSource42.label = "1080p - 720p - 480p - [FLIXVISION11]";
                                    videoSource42.is_embed = true;
                                    linksActivity.f14743w.add(videoSource42);
                                    StringBuilder sb = new StringBuilder("https://vidsrc.sh/embed/tv/");
                                    sb.append(linksActivity.f14744x.getMovieId());
                                    sb.append(RemoteSettings.FORWARD_SLASH_STRING);
                                    sb.append(linksActivity.f14705C);
                                    sb.append("-");
                                    String m7 = A.i.m(sb, linksActivity.f14706D, RemoteSettings.FORWARD_SLASH_STRING);
                                    VideoSource videoSource52 = new VideoSource();
                                    videoSource52.streamUrl = m7;
                                    videoSource52.label = "1080p - 720p - 480p [FLIXVISION5]";
                                    videoSource52.is_embed = true;
                                    linksActivity.f14743w.add(videoSource52);
                                    linksActivity.f14745y.notifyDataSetChanged();
                                    linksActivity.f14742v.setItemAnimator(null);
                                    break;
                                case 4:
                                    SpinKitView spinKitView2 = linksActivity.f14738r;
                                    if (spinKitView2 != null) {
                                        spinKitView2.setVisibility(8);
                                        RelativeLayout relativeLayout2 = linksActivity.f14733j;
                                        if (relativeLayout2 != null) {
                                            relativeLayout2.setVisibility(8);
                                            break;
                                        }
                                    }
                                    break;
                                default:
                                    linksActivity.f14732f.setOnClickListener(new Q(linksActivity, 1));
                                    break;
                            }
                        }
                    }, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
                }
                if (RealDebridCommon.f15828m || PremiumizeCommon.f15822b || AllDebridCommon.f15806f || J4.b.f1541a || G4.b.f1174a) {
                    new Z4.D(this, this.f14744x, this).process(1, this.f14705C, this.f14706D);
                    new x(this, this.f14744x, this).process(this.f14705C, this.f14706D, 1);
                    new p(this, this.f14744x, this).process(this.f14705C, this.f14706D, 1);
                    new C0402h(this, this.f14744x, this).process(this.f14705C, this.f14706D, 1);
                    new Z4.t(this, this.f14744x, this).process(this.f14705C, this.f14706D);
                    new j(this, this.f14744x, this).process(this.f14705C, this.f14706D);
                }
                new flix.com.vision.processors.english.q(this, this.f14744x, this).process(this.f14705C, this.f14706D);
                new C0738b(this, this.f14744x, this).process(this.f14705C, this.f14706D);
                new v(this, this.f14744x, this).process(this.f14705C, this.f14706D);
                Movie movie4 = this.f14744x;
                new B(this, this.f14744x, this).process(this.f14705C, this.f14706D, movie4.seasons != null ? movie4.getSeason_count() : 0, this.f14744x.last_air_date);
                new VixSrcExtractor(this, this, this.f14744x).extractEpisode(this.f14705C, this.f14706D);
                if (this.f14744x.getMovieId() > 0) {
                    new Handler().postDelayed(new Runnable(this) { // from class: y4.T

                        /* renamed from: e, reason: collision with root package name */
                        public final /* synthetic */ LinksActivity f21172e;

                        {
                            this.f21172e = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            LinksActivity linksActivity = this.f21172e;
                            switch (i2) {
                                case 0:
                                    int i102 = LinksActivity.f14702b0;
                                    linksActivity.getClass();
                                    SharedPreferences sharedPreferences4 = App.getInstance().f14440s;
                                    String str42 = Constant.f16184b;
                                    new d5.f(linksActivity, linksActivity, sharedPreferences4.getString("pref_ml_host", linksActivity.getString(R.string.ml_host))).process(linksActivity.f14744x.getImdbID());
                                    break;
                                case 1:
                                    linksActivity.f14744x.getMovieId();
                                    new VideoSource();
                                    VideoSource videoSource6 = new VideoSource();
                                    videoSource6.streamUrl = "https://embed.smashystream.com/playere.php?tmdb=" + linksActivity.f14744x.getMovieId();
                                    videoSource6.label = "1080p - 720p - 480p [FLIXVISION2]";
                                    videoSource6.is_embed = true;
                                    linksActivity.f14743w.add(videoSource6);
                                    String str52 = "https://vidsrc.xyz/embed/movie/" + linksActivity.f14744x.getMovieId();
                                    VideoSource videoSource22 = new VideoSource();
                                    videoSource22.streamUrl = str52;
                                    videoSource22.label = "1080p - 720p - 480p [FLIXVISION5]";
                                    videoSource22.is_embed = true;
                                    linksActivity.f14743w.add(videoSource22);
                                    linksActivity.f14745y.notifyDataSetChanged();
                                    linksActivity.f14742v.setItemAnimator(null);
                                    break;
                                case 2:
                                    int i11 = LinksActivity.f14702b0;
                                    linksActivity.getClass();
                                    SharedPreferences sharedPreferences5 = App.getInstance().f14440s;
                                    String str62 = Constant.f16184b;
                                    new d5.l(linksActivity, linksActivity, sharedPreferences5.getString("pref_ml_host", linksActivity.getString(R.string.ml_host))).process(linksActivity.f14744x.getImdbID(), linksActivity.f14705C, linksActivity.f14706D);
                                    break;
                                case 3:
                                    linksActivity.f14744x.getMovieId();
                                    VideoSource videoSource32 = new VideoSource();
                                    videoSource32.streamUrl = "https://embed.smashystream.com/playere.php?tmdb=" + linksActivity.f14744x.getMovieId() + "&season=" + linksActivity.f14705C + "&episode=" + linksActivity.f14706D;
                                    videoSource32.label = "1080p - 720p - 480p [FLIXVISION2]";
                                    videoSource32.is_embed = true;
                                    linksActivity.f14743w.add(videoSource32);
                                    videoSource32.streamUrl = linksActivity.f14715M + "/tv/tmdb/" + linksActivity.f14744x.getMovieId() + "-" + linksActivity.f14705C + "-" + linksActivity.f14706D;
                                    videoSource32.label = "1080p - 720p - 480p-[FLIXVISION3]";
                                    videoSource32.is_embed = true;
                                    linksActivity.f14743w.add(videoSource32);
                                    String str72 = "https://vixsrc.to/tv/" + linksActivity.f14744x.getImdbID() + RemoteSettings.FORWARD_SLASH_STRING + linksActivity.f14705C + RemoteSettings.FORWARD_SLASH_STRING + linksActivity.f14706D;
                                    VideoSource videoSource42 = new VideoSource();
                                    videoSource42.streamUrl = str72;
                                    videoSource42.label = "1080p - 720p - 480p - [FLIXVISION11]";
                                    videoSource42.is_embed = true;
                                    linksActivity.f14743w.add(videoSource42);
                                    StringBuilder sb = new StringBuilder("https://vidsrc.sh/embed/tv/");
                                    sb.append(linksActivity.f14744x.getMovieId());
                                    sb.append(RemoteSettings.FORWARD_SLASH_STRING);
                                    sb.append(linksActivity.f14705C);
                                    sb.append("-");
                                    String m7 = A.i.m(sb, linksActivity.f14706D, RemoteSettings.FORWARD_SLASH_STRING);
                                    VideoSource videoSource52 = new VideoSource();
                                    videoSource52.streamUrl = m7;
                                    videoSource52.label = "1080p - 720p - 480p [FLIXVISION5]";
                                    videoSource52.is_embed = true;
                                    linksActivity.f14743w.add(videoSource52);
                                    linksActivity.f14745y.notifyDataSetChanged();
                                    linksActivity.f14742v.setItemAnimator(null);
                                    break;
                                case 4:
                                    SpinKitView spinKitView2 = linksActivity.f14738r;
                                    if (spinKitView2 != null) {
                                        spinKitView2.setVisibility(8);
                                        RelativeLayout relativeLayout2 = linksActivity.f14733j;
                                        if (relativeLayout2 != null) {
                                            relativeLayout2.setVisibility(8);
                                            break;
                                        }
                                    }
                                    break;
                                default:
                                    linksActivity.f14732f.setOnClickListener(new Q(linksActivity, 1));
                                    break;
                            }
                        }
                    }, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
                }
                if (this.f14744x.getImdbID() != null && this.f14744x.getImdbID().length() > 0) {
                    StringBuilder sb = new StringBuilder("https://vidsrc.sh/embed/tv/");
                    sb.append(this.f14744x.getImdbID());
                    sb.append(RemoteSettings.FORWARD_SLASH_STRING);
                    sb.append(this.f14705C);
                    sb.append(RemoteSettings.FORWARD_SLASH_STRING);
                    String m7 = i.m(sb, this.f14706D, RemoteSettings.FORWARD_SLASH_STRING);
                    VideoSource videoSource6 = new VideoSource();
                    videoSource6.streamUrl = m7;
                    videoSource6.label = "1080p - 720p - 480p [FLIXVISION5-1]";
                    videoSource6.is_embed = true;
                    this.f14743w.add(videoSource6);
                    String str10 = "https://vidsrc-embed.ru/embed/tv/" + this.f14744x.getImdbID() + RemoteSettings.FORWARD_SLASH_STRING + this.f14705C + "-" + this.f14706D;
                    VideoSource videoSource7 = new VideoSource();
                    videoSource7.streamUrl = str10;
                    videoSource7.label = "1080p - 720p - 480p [FLIXVISION]";
                    videoSource7.is_embed = true;
                    this.f14743w.add(0, videoSource7);
                }
            }
        } else if (this.f14744x.isSeries()) {
            if (this.f14744x.getImdbID() != null && this.f14744x.getImdbID().length() > 0) {
                SharedPreferences sharedPreferences4 = App.getInstance().f14440s;
                String str11 = Constant.f16184b;
                new d5.l(this, this, sharedPreferences4.getString("pref_ml_host", getString(R.string.ml_host))).process(this.f14744x.getImdbID(), this.f14705C, this.f14706D);
            }
            if (RealDebridCommon.f15828m || PremiumizeCommon.f15822b || AllDebridCommon.f15806f || J4.b.f1541a || G4.b.f1174a) {
                new Z4.D(this, this.f14744x, this).process(this.f14705C, this.f14706D, 1);
                new x(this, this.f14744x, this).process(this.f14705C, this.f14706D, 1);
                new p(this, this.f14744x, this).process(this.f14705C, this.f14706D, 1);
                new C0402h(this, this.f14744x, this).process(this.f14705C, this.f14706D, 1);
                new Z4.t(this, this.f14744x, this).process(this.f14705C, this.f14706D);
                new j(this, this.f14744x, this).process(this.f14705C, this.f14706D);
            }
        } else {
            SharedPreferences sharedPreferences5 = App.getInstance().f14440s;
            String str12 = Constant.f16184b;
            new d5.f(this, this, sharedPreferences5.getString("pref_ml_host", getString(R.string.ml_host))).process(this.f14744x.getImdbID());
            if (RealDebridCommon.f15828m || PremiumizeCommon.f15822b || AllDebridCommon.f15806f || J4.b.f1541a || G4.b.f1174a) {
                new y(this, this.f14744x, this).process(1);
                new t(this, this.f14744x, this).process(1);
                new l(this, this.f14744x, this).process(1);
                new C0398d(this, this.f14744x, this).process(1);
                new Z4.o(this, this.f14744x, this).process(1);
                new Z4.e(this, this.f14744x, this).process(1);
            }
        }
        Movie movie5 = this.f14744x;
        if (movie5 != null) {
            if (movie5.isSeries()) {
                this.f14716N = this.f14744x.getMovieId() + "" + this.f14705C + "" + this.f14706D;
            } else {
                this.f14716N = this.f14744x.getMovieId() + "";
            }
        }
        this.f14742v.requestFocus();
        TextView textView = this.f14736p;
        if (textView != null) {
            this.f14739s.applyFontToView(textView, this.f14740t);
        }
        TextView textView2 = this.f14734m;
        if (textView2 != null) {
            this.f14739s.applyFontToView(textView2, this.f14740t);
        }
        TextView textView3 = this.f14735n;
        if (textView3 != null) {
            this.f14739s.applyFontToView(textView3, this.f14740t);
        }
        this.f14739s.applyFontToView(this.f14711I, this.f14740t);
        this.f14739s.applyFontToView(this.f14712J, this.f14741u);
        this.f14739s.applyFontToView(this.f14713K, this.f14740t);
        RelativeLayout relativeLayout2 = this.f14731e;
        if (relativeLayout2 != null) {
            relativeLayout2.setOnClickListener(new Q(this, i2));
        }
        if (this.f14732f != null) {
            final int i11 = 5;
            new Handler().postDelayed(new Runnable(this) { // from class: y4.T

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ LinksActivity f21172e;

                {
                    this.f21172e = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    LinksActivity linksActivity = this.f21172e;
                    switch (i11) {
                        case 0:
                            int i102 = LinksActivity.f14702b0;
                            linksActivity.getClass();
                            SharedPreferences sharedPreferences42 = App.getInstance().f14440s;
                            String str42 = Constant.f16184b;
                            new d5.f(linksActivity, linksActivity, sharedPreferences42.getString("pref_ml_host", linksActivity.getString(R.string.ml_host))).process(linksActivity.f14744x.getImdbID());
                            break;
                        case 1:
                            linksActivity.f14744x.getMovieId();
                            new VideoSource();
                            VideoSource videoSource62 = new VideoSource();
                            videoSource62.streamUrl = "https://embed.smashystream.com/playere.php?tmdb=" + linksActivity.f14744x.getMovieId();
                            videoSource62.label = "1080p - 720p - 480p [FLIXVISION2]";
                            videoSource62.is_embed = true;
                            linksActivity.f14743w.add(videoSource62);
                            String str52 = "https://vidsrc.xyz/embed/movie/" + linksActivity.f14744x.getMovieId();
                            VideoSource videoSource22 = new VideoSource();
                            videoSource22.streamUrl = str52;
                            videoSource22.label = "1080p - 720p - 480p [FLIXVISION5]";
                            videoSource22.is_embed = true;
                            linksActivity.f14743w.add(videoSource22);
                            linksActivity.f14745y.notifyDataSetChanged();
                            linksActivity.f14742v.setItemAnimator(null);
                            break;
                        case 2:
                            int i112 = LinksActivity.f14702b0;
                            linksActivity.getClass();
                            SharedPreferences sharedPreferences52 = App.getInstance().f14440s;
                            String str62 = Constant.f16184b;
                            new d5.l(linksActivity, linksActivity, sharedPreferences52.getString("pref_ml_host", linksActivity.getString(R.string.ml_host))).process(linksActivity.f14744x.getImdbID(), linksActivity.f14705C, linksActivity.f14706D);
                            break;
                        case 3:
                            linksActivity.f14744x.getMovieId();
                            VideoSource videoSource32 = new VideoSource();
                            videoSource32.streamUrl = "https://embed.smashystream.com/playere.php?tmdb=" + linksActivity.f14744x.getMovieId() + "&season=" + linksActivity.f14705C + "&episode=" + linksActivity.f14706D;
                            videoSource32.label = "1080p - 720p - 480p [FLIXVISION2]";
                            videoSource32.is_embed = true;
                            linksActivity.f14743w.add(videoSource32);
                            videoSource32.streamUrl = linksActivity.f14715M + "/tv/tmdb/" + linksActivity.f14744x.getMovieId() + "-" + linksActivity.f14705C + "-" + linksActivity.f14706D;
                            videoSource32.label = "1080p - 720p - 480p-[FLIXVISION3]";
                            videoSource32.is_embed = true;
                            linksActivity.f14743w.add(videoSource32);
                            String str72 = "https://vixsrc.to/tv/" + linksActivity.f14744x.getImdbID() + RemoteSettings.FORWARD_SLASH_STRING + linksActivity.f14705C + RemoteSettings.FORWARD_SLASH_STRING + linksActivity.f14706D;
                            VideoSource videoSource42 = new VideoSource();
                            videoSource42.streamUrl = str72;
                            videoSource42.label = "1080p - 720p - 480p - [FLIXVISION11]";
                            videoSource42.is_embed = true;
                            linksActivity.f14743w.add(videoSource42);
                            StringBuilder sb2 = new StringBuilder("https://vidsrc.sh/embed/tv/");
                            sb2.append(linksActivity.f14744x.getMovieId());
                            sb2.append(RemoteSettings.FORWARD_SLASH_STRING);
                            sb2.append(linksActivity.f14705C);
                            sb2.append("-");
                            String m72 = A.i.m(sb2, linksActivity.f14706D, RemoteSettings.FORWARD_SLASH_STRING);
                            VideoSource videoSource52 = new VideoSource();
                            videoSource52.streamUrl = m72;
                            videoSource52.label = "1080p - 720p - 480p [FLIXVISION5]";
                            videoSource52.is_embed = true;
                            linksActivity.f14743w.add(videoSource52);
                            linksActivity.f14745y.notifyDataSetChanged();
                            linksActivity.f14742v.setItemAnimator(null);
                            break;
                        case 4:
                            SpinKitView spinKitView2 = linksActivity.f14738r;
                            if (spinKitView2 != null) {
                                spinKitView2.setVisibility(8);
                                RelativeLayout relativeLayout22 = linksActivity.f14733j;
                                if (relativeLayout22 != null) {
                                    relativeLayout22.setVisibility(8);
                                    break;
                                }
                            }
                            break;
                        default:
                            linksActivity.f14732f.setOnClickListener(new Q(linksActivity, 1));
                            break;
                    }
                }
            }, Renderer.DEFAULT_DURATION_TO_PROGRESS_US);
            RelativeLayout relativeLayout3 = this.f14732f;
            final int i12 = z6 ? 1 : 0;
            relativeLayout3.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: y4.V

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ LinksActivity f21181e;

                {
                    this.f21181e = this;
                }

                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view, boolean z72) {
                    LinksActivity linksActivity = this.f21181e;
                    switch (i12) {
                        case 0:
                            int i102 = LinksActivity.f14702b0;
                            linksActivity.getClass();
                            try {
                                if (z72) {
                                    linksActivity.f14704B.setColorFilter(new PorterDuffColorFilter(A.h.getColor(linksActivity, R.color.black), PorterDuff.Mode.SRC_IN));
                                } else {
                                    linksActivity.f14704B.setColorFilter(new PorterDuffColorFilter(A.h.getColor(linksActivity, R.color.white), PorterDuff.Mode.SRC_IN));
                                }
                                break;
                            } catch (Exception unused2) {
                                return;
                            }
                        case 1:
                            if (!z72) {
                                linksActivity.f14746z.setColorFilter(new PorterDuffColorFilter(A.h.getColor(linksActivity, R.color.white), PorterDuff.Mode.SRC_IN));
                                linksActivity.f14736p.setTextColor(linksActivity.getResources().getColor(R.color.white));
                                linksActivity.f14732f.animate().scaleX(1.0f).start();
                                linksActivity.f14732f.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                linksActivity.f14746z.setColorFilter(new PorterDuffColorFilter(A.h.getColor(linksActivity, R.color.black), PorterDuff.Mode.SRC_IN));
                                linksActivity.f14736p.setTextColor(linksActivity.getResources().getColor(R.color.black));
                                b.c.r(linksActivity.f14732f, 100L, 1.03f);
                                b.c.w(linksActivity.f14732f, 100L, 1.03f);
                                break;
                            }
                        default:
                            if (!z72) {
                                linksActivity.f14703A.setColorFilter(new PorterDuffColorFilter(A.h.getColor(linksActivity, R.color.white), PorterDuff.Mode.SRC_IN));
                                linksActivity.f14734m.setTextColor(linksActivity.getResources().getColor(R.color.white));
                                linksActivity.f14731e.animate().scaleX(1.0f).start();
                                linksActivity.f14731e.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                linksActivity.f14703A.setColorFilter(new PorterDuffColorFilter(A.h.getColor(linksActivity, R.color.black), PorterDuff.Mode.SRC_IN));
                                linksActivity.f14734m.setTextColor(linksActivity.getResources().getColor(R.color.black));
                                b.c.r(linksActivity.f14731e, 100L, 1.03f);
                                b.c.w(linksActivity.f14731e, 100L, 1.03f);
                                break;
                            }
                    }
                }
            });
            this.f14731e.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: y4.V

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ LinksActivity f21181e;

                {
                    this.f21181e = this;
                }

                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view, boolean z72) {
                    LinksActivity linksActivity = this.f21181e;
                    switch (i7) {
                        case 0:
                            int i102 = LinksActivity.f14702b0;
                            linksActivity.getClass();
                            try {
                                if (z72) {
                                    linksActivity.f14704B.setColorFilter(new PorterDuffColorFilter(A.h.getColor(linksActivity, R.color.black), PorterDuff.Mode.SRC_IN));
                                } else {
                                    linksActivity.f14704B.setColorFilter(new PorterDuffColorFilter(A.h.getColor(linksActivity, R.color.white), PorterDuff.Mode.SRC_IN));
                                }
                                break;
                            } catch (Exception unused2) {
                                return;
                            }
                        case 1:
                            if (!z72) {
                                linksActivity.f14746z.setColorFilter(new PorterDuffColorFilter(A.h.getColor(linksActivity, R.color.white), PorterDuff.Mode.SRC_IN));
                                linksActivity.f14736p.setTextColor(linksActivity.getResources().getColor(R.color.white));
                                linksActivity.f14732f.animate().scaleX(1.0f).start();
                                linksActivity.f14732f.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                linksActivity.f14746z.setColorFilter(new PorterDuffColorFilter(A.h.getColor(linksActivity, R.color.black), PorterDuff.Mode.SRC_IN));
                                linksActivity.f14736p.setTextColor(linksActivity.getResources().getColor(R.color.black));
                                b.c.r(linksActivity.f14732f, 100L, 1.03f);
                                b.c.w(linksActivity.f14732f, 100L, 1.03f);
                                break;
                            }
                        default:
                            if (!z72) {
                                linksActivity.f14703A.setColorFilter(new PorterDuffColorFilter(A.h.getColor(linksActivity, R.color.white), PorterDuff.Mode.SRC_IN));
                                linksActivity.f14734m.setTextColor(linksActivity.getResources().getColor(R.color.white));
                                linksActivity.f14731e.animate().scaleX(1.0f).start();
                                linksActivity.f14731e.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                linksActivity.f14703A.setColorFilter(new PorterDuffColorFilter(A.h.getColor(linksActivity, R.color.black), PorterDuff.Mode.SRC_IN));
                                linksActivity.f14734m.setTextColor(linksActivity.getResources().getColor(R.color.black));
                                b.c.r(linksActivity.f14731e, 100L, 1.03f);
                                b.c.w(linksActivity.f14731e, 100L, 1.03f);
                                break;
                            }
                    }
                }
            });
        }
        RelativeLayout relativeLayout4 = this.f14733j;
        if (relativeLayout4 != null) {
            relativeLayout4.setOnClickListener(new Q(this, i8));
        }
        if (!RealDebridCommon.f15828m && !AllDebridCommon.f15806f && !PremiumizeCommon.f15822b && !J4.b.f1541a && !G4.b.f1174a) {
            z6 = false;
        }
        this.f14719Q = z6;
        if (!z6 || (movie = this.f14744x) == null || movie.isAnime() || this.f14744x.isDrama() || (relativeLayout = this.f14733j) == null) {
            return;
        }
        relativeLayout.setVisibility(0);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.links, menu);
        this.f14727Y = menu;
        return true;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(e eVar) {
        RelativeLayout relativeLayout;
        TextView textView;
        try {
            SystemEvent$ACTION systemEvent$ACTION = eVar.f3129a;
            if (systemEvent$ACTION == SystemEvent$ACTION.f15993e || systemEvent$ACTION == SystemEvent$ACTION.f15994f) {
                this.f14745y.notifyDataSetChanged();
                this.f14742v.setItemAnimator(null);
                SpinKitView spinKitView = this.f14738r;
                if (spinKitView != null) {
                    spinKitView.setVisibility(0);
                }
                if (RealDebridCommon.f15828m && (relativeLayout = this.f14733j) != null) {
                    relativeLayout.setVisibility(0);
                }
                this.f14720R.removeCallbacks(this.f14721S);
                this.f14720R.postDelayed(this.f14721S, this.f14719Q ? 35000L : 12000L);
                TextView textView2 = this.f14735n;
                if (textView2 != null) {
                    textView2.setText("" + this.f14723U);
                }
                TextView textView3 = this.f14737q;
                if (textView3 != null && this.f14743w.premium_link_count > 0) {
                    textView3.setText(this.f14743w.premium_link_count + "");
                }
            }
            if (!this.f14722T || (textView = this.f14737q) == null) {
                return;
            }
            textView.setVisibility(0);
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return true;
        }
        finish();
        return true;
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, android.app.Activity
    public void onResume() {
        if (this.f14718P == null && App.getInstance().f14432e) {
            SharedPreferences sharedPreferences = App.getInstance().f14440s;
            if (((int) ((sharedPreferences.getInt(this.f14744x.getMovieId() + "", -1) * 100) / (this.f14744x.getDuration() * ExoPlayer.DEFAULT_STUCK_PLAYING_NOT_ENDING_TIMEOUT_MS))) > 95 && !this.f14744x.isSeries()) {
                App.getInstance().f14439r.markAsWatched(this.f14744x);
                App.getInstance().f14440s.edit().remove(this.f14716N).apply();
            }
        }
        super.onResume();
    }

    @Override // androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelableArrayList("sources", this.f14743w);
    }

    public void unlockLinkAllRebrid(VideoSource videoSource) {
        if (App.isADSupported(videoSource.streamUrl)) {
            videoSource.streamUrl.contains("rapidgator.net");
            D4.a.unlockLinkAllDebrid(videoSource.streamUrl).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.newThread()).subscribe(new S(this, videoSource, 0), new C1851d(7));
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(R4.c cVar) {
        throw null;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(VideoSource videoSource) {
        if (videoSource.streamable) {
            this.f14723U++;
        }
        this.f14743w.add(videoSource);
        App.f14417B.add(videoSource);
    }

    @Override // U4.f
    public void OnSuccess(VideoSource videoSource) {
        boolean z6 = videoSource.streamable;
        if (z6) {
            this.f14723U++;
            this.f14743w.add(0, videoSource);
            App.f14417B.add(0, videoSource);
        } else if (videoSource.isPremiumSupported) {
            if (RealDebridCommon.f15828m && (videoSource.rd_checked || App.isRdSupported(videoSource.streamUrl))) {
                D4.a.getLinkRealDebrid(videoSource.streamUrl, RealDebridCommon.f15826f, RealDebridCommon.f15824b).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.newThread()).subscribe(new S(this, videoSource, 1), new C0059w(1, videoSource));
            }
            if (AllDebridCommon.f15806f) {
                unlockLinkAllRebrid(videoSource);
            }
        } else {
            if (z6) {
                this.f14723U++;
            }
            this.f14743w.add(videoSource);
            App.f14417B.add(videoSource);
        }
        if ((videoSource.isPremiumize || videoSource.isRealDebrid || videoSource.isAllDebrid || videoSource.isTorbox || videoSource.isOffCloud) && videoSource.streamable) {
            this.f14722T = true;
        }
    }
}

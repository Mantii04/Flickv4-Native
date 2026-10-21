package flix.com.vision.activities;

import A.i;
import B4.DialogInterfaceOnDismissListenerC0040c;
import C4.h0;
import Q4.d;
import T4.f;
import T4.k;
import U4.j;
import android.app.FragmentManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.view.ContextThemeWrapper;
import android.view.MenuItem;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.Toast;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import e.r;
import f1.RunnableC0883a;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.UserTorrentsActivity;
import flix.com.vision.activities.player.SimpleVideoPlayer;
import flix.com.vision.api.alldebrid.AllDebridCommon;
import flix.com.vision.api.premiumize.PremiumizeCommon;
import flix.com.vision.api.realdebrid.RealDebridCommon;
import flix.com.vision.models.Movie;
import flix.com.vision.models.VideoSource;
import flix.com.vision.models.torrent.UserTorrent;
import flix.com.vision.processors.english.BaseProcessor$TorrentServiceType;
import h5.AbstractC0995i;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import y4.H0;
import y4.u1;
import y4.v1;
import y4.w1;
import y4.y1;
import y4.z1;

/* loaded from: classes2.dex */
public class UserTorrentsActivity extends flix.com.vision.activities.base.a implements j {

    /* renamed from: y, reason: collision with root package name */
    public static final /* synthetic */ int f15279y = 0;

    /* renamed from: e, reason: collision with root package name */
    public RecyclerView f15281e;

    /* renamed from: f, reason: collision with root package name */
    public RelativeLayout f15282f;

    /* renamed from: j, reason: collision with root package name */
    public RelativeLayout f15283j;

    /* renamed from: m, reason: collision with root package name */
    public RelativeLayout f15284m;

    /* renamed from: n, reason: collision with root package name */
    public RelativeLayout f15285n;

    /* renamed from: p, reason: collision with root package name */
    public RelativeLayout f15286p;

    /* renamed from: q, reason: collision with root package name */
    public Disposable f15287q;

    /* renamed from: r, reason: collision with root package name */
    public h0 f15288r;

    /* renamed from: s, reason: collision with root package name */
    public BaseProcessor$TorrentServiceType f15289s;

    /* renamed from: u, reason: collision with root package name */
    public HashMap f15291u;

    /* renamed from: v, reason: collision with root package name */
    public UserTorrent f15292v;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f15280b = new ArrayList();

    /* renamed from: t, reason: collision with root package name */
    public String f15290t = null;

    /* renamed from: w, reason: collision with root package name */
    public d f15293w = null;

    /* renamed from: x, reason: collision with root package name */
    public final ArrayList f15294x = new ArrayList();

    public final void e(ArrayList arrayList) {
        try {
            ArrayList arrayList2 = new ArrayList();
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                arrayList2.add(((VideoSource) arrayList.get(i2)).label.toUpperCase(Locale.ROOT));
            }
            CharSequence[] charSequenceArr = (CharSequence[]) arrayList2.toArray(new CharSequence[arrayList2.size()]);
            r rVar = new r(new ContextThemeWrapper(this, R.style.AlertDialogNoHeader));
            rVar.setSingleChoiceItems(charSequenceArr, -1, new w1(this, arrayList, 1));
            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(5));
            rVar.setCancelable(true);
            rVar.show();
        } catch (Exception unused) {
        }
    }

    public final void f(final String str, final ArrayList arrayList) {
        try {
            ArrayList arrayList2 = new ArrayList();
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                arrayList2.add(((VideoSource) arrayList.get(i2)).label);
            }
            CharSequence[] charSequenceArr = (CharSequence[]) arrayList2.toArray(new CharSequence[0]);
            r rVar = new r(new ContextThemeWrapper(this, R.style.AlertDialogNoHeader));
            rVar.setSingleChoiceItems(charSequenceArr, -1, new DialogInterface.OnClickListener() { // from class: y4.x1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i7) {
                    int i8 = UserTorrentsActivity.f15279y;
                    UserTorrentsActivity userTorrentsActivity = UserTorrentsActivity.this;
                    userTorrentsActivity.getClass();
                    dialogInterface.dismiss();
                    VideoSource videoSource = (VideoSource) arrayList.get(i7);
                    userTorrentsActivity.k();
                    D4.a.getTorboxDownloadLink(str, videoSource.streamUrl).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new A4.u(8, userTorrentsActivity, videoSource), new u1(userTorrentsActivity, 10));
                }
            });
            rVar.setCancelable(true);
            rVar.show();
        } catch (Exception unused) {
        }
    }

    @Override // U4.j
    public void favoriteDeleted(int i2) {
    }

    public final void g() {
        HashMap hashMap = this.f15291u;
        if (hashMap != null) {
            hashMap.clear();
        }
        Disposable disposable = this.f15287q;
        if (disposable != null) {
            disposable.dispose();
        }
        k();
        if (this.f15289s == BaseProcessor$TorrentServiceType.f16066b) {
            this.f15287q = D4.a.getMagnetsRealDebridLatest(RealDebridCommon.f15826f, RealDebridCommon.f15824b, 100).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new u1(this, 11), new u1(this, 12));
        }
        if (this.f15289s == BaseProcessor$TorrentServiceType.f16067e) {
            this.f15287q = D4.a.getUserTorrentPrem(this.f15290t).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new u1(this, 13), new u1(this, 14));
        }
        if (this.f15289s == BaseProcessor$TorrentServiceType.f16068f) {
            D4.a.getAllMagnetAllDebrid().observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.newThread()).subscribe(new u1(this, 15), new u1(this, 0));
        }
        if (this.f15289s == BaseProcessor$TorrentServiceType.f16069j) {
            this.f15287q = D4.a.getTorboxUserTorrents(J4.b.f1542b).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new u1(this, 1), new u1(this, 2));
        }
        if (this.f15289s == BaseProcessor$TorrentServiceType.f16070m) {
            this.f15287q = D4.a.getOffcloudUserTorrents().subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new u1(this, 3), new u1(this, 4));
        }
    }

    public void getMagnetPrem(String str) {
        App.getInstance().getRequestQueue().add(new y1(i.k("https://www.premiumize.me/api/transfer/directdl?apikey=", PremiumizeCommon.f15823e), new v1(this, str, 0), new androidx.media3.exoplayer.source.chunk.a(28), str));
    }

    public final void h() {
        d dVar = this.f15293w;
        if (dVar != null) {
            try {
                dVar.dismiss();
            } catch (Exception unused) {
            }
        }
    }

    public final void i(VideoSource videoSource) {
        VideoSource videoSource2;
        int i2 = App.getInstance().f14440s.getInt("player_index", 0);
        if (i2 <= 0 || i2 >= 4) {
            j(videoSource);
            return;
        }
        try {
            videoSource2 = videoSource;
            try {
                LinksActivity.PlayExternal(i2, videoSource2, videoSource.label, null, this, -1);
            } catch (Exception unused) {
                Toast.makeText(getBaseContext(), "Failed to load external Player, Make sure it is installed", 1).show();
                j(videoSource2);
            }
        } catch (Exception unused2) {
            videoSource2 = videoSource;
        }
    }

    public final void j(VideoSource videoSource) {
        String str = videoSource.label;
        UserTorrent userTorrent = this.f15292v;
        if (userTorrent != null) {
            str = userTorrent.filename;
        }
        Intent intent = new Intent(this, (Class<?>) SimpleVideoPlayer.class);
        intent.putExtra("movie_id", str);
        intent.putExtra("title", str);
        intent.putExtra("language", videoSource.language);
        intent.putExtra("streamUrl", videoSource.streamUrl);
        intent.putExtra("is_torrent", true);
        startActivity(intent);
    }

    public final void k() {
        h();
        FragmentManager fragmentManager = getFragmentManager();
        d newInstance = d.newInstance(this, false);
        this.f15293w = newInstance;
        newInstance.setloading();
        try {
            this.f15293w.show(fragmentManager, "");
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_user_torrents);
        this.f15291u = new HashMap();
        SharedPreferences sharedPreferences = App.getInstance().f14440s;
        String str = f.f3687a;
        this.f15290t = sharedPreferences.getString("prem_apikey", null);
        BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType = BaseProcessor$TorrentServiceType.f16066b;
        this.f15289s = baseProcessor$TorrentServiceType;
        this.f15284m = (RelativeLayout) findViewById(R.id.alldebrid_button);
        this.f15283j = (RelativeLayout) findViewById(R.id.prem_button);
        this.f15282f = (RelativeLayout) findViewById(R.id.rd_button);
        this.f15285n = (RelativeLayout) findViewById(R.id.torbox_button);
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.offcloud_button);
        this.f15286p = relativeLayout;
        if (G4.b.f1174a) {
            this.f15289s = BaseProcessor$TorrentServiceType.f16070m;
        } else {
            relativeLayout.setVisibility(8);
        }
        if (AllDebridCommon.f15806f) {
            this.f15289s = BaseProcessor$TorrentServiceType.f16068f;
        } else {
            this.f15284m.setVisibility(8);
        }
        if (RealDebridCommon.f15828m) {
            this.f15289s = baseProcessor$TorrentServiceType;
        } else {
            this.f15282f.setVisibility(8);
        }
        if (PremiumizeCommon.f15822b) {
            this.f15289s = BaseProcessor$TorrentServiceType.f16067e;
        } else {
            this.f15283j.setVisibility(8);
        }
        RelativeLayout relativeLayout2 = this.f15285n;
        if (relativeLayout2 != null) {
            if (J4.b.f1541a) {
                this.f15289s = BaseProcessor$TorrentServiceType.f16069j;
            } else {
                relativeLayout2.setVisibility(8);
            }
        }
        final int i2 = 0;
        this.f15282f.setOnClickListener(new View.OnClickListener(this) { // from class: y4.t1

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ UserTorrentsActivity f21290e;

            {
                this.f21290e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i2) {
                    case 0:
                        BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType2 = BaseProcessor$TorrentServiceType.f16066b;
                        UserTorrentsActivity userTorrentsActivity = this.f21290e;
                        userTorrentsActivity.f15289s = baseProcessor$TorrentServiceType2;
                        userTorrentsActivity.f15280b.clear();
                        userTorrentsActivity.f15288r.notifyDataSetChanged();
                        userTorrentsActivity.g();
                        break;
                    case 1:
                        BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType3 = BaseProcessor$TorrentServiceType.f16067e;
                        UserTorrentsActivity userTorrentsActivity2 = this.f21290e;
                        userTorrentsActivity2.f15289s = baseProcessor$TorrentServiceType3;
                        userTorrentsActivity2.f15280b.clear();
                        userTorrentsActivity2.f15288r.notifyDataSetChanged();
                        userTorrentsActivity2.g();
                        break;
                    case 2:
                        BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType4 = BaseProcessor$TorrentServiceType.f16068f;
                        UserTorrentsActivity userTorrentsActivity3 = this.f21290e;
                        userTorrentsActivity3.f15289s = baseProcessor$TorrentServiceType4;
                        userTorrentsActivity3.f15280b.clear();
                        userTorrentsActivity3.f15288r.notifyDataSetChanged();
                        userTorrentsActivity3.g();
                        break;
                    case 3:
                        BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType5 = BaseProcessor$TorrentServiceType.f16069j;
                        UserTorrentsActivity userTorrentsActivity4 = this.f21290e;
                        userTorrentsActivity4.f15289s = baseProcessor$TorrentServiceType5;
                        userTorrentsActivity4.f15280b.clear();
                        userTorrentsActivity4.f15288r.notifyDataSetChanged();
                        userTorrentsActivity4.g();
                        break;
                    default:
                        BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType6 = BaseProcessor$TorrentServiceType.f16070m;
                        UserTorrentsActivity userTorrentsActivity5 = this.f21290e;
                        userTorrentsActivity5.f15289s = baseProcessor$TorrentServiceType6;
                        userTorrentsActivity5.f15280b.clear();
                        userTorrentsActivity5.f15288r.notifyDataSetChanged();
                        userTorrentsActivity5.g();
                        break;
                }
            }
        });
        final int i7 = 1;
        this.f15283j.setOnClickListener(new View.OnClickListener(this) { // from class: y4.t1

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ UserTorrentsActivity f21290e;

            {
                this.f21290e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i7) {
                    case 0:
                        BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType2 = BaseProcessor$TorrentServiceType.f16066b;
                        UserTorrentsActivity userTorrentsActivity = this.f21290e;
                        userTorrentsActivity.f15289s = baseProcessor$TorrentServiceType2;
                        userTorrentsActivity.f15280b.clear();
                        userTorrentsActivity.f15288r.notifyDataSetChanged();
                        userTorrentsActivity.g();
                        break;
                    case 1:
                        BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType3 = BaseProcessor$TorrentServiceType.f16067e;
                        UserTorrentsActivity userTorrentsActivity2 = this.f21290e;
                        userTorrentsActivity2.f15289s = baseProcessor$TorrentServiceType3;
                        userTorrentsActivity2.f15280b.clear();
                        userTorrentsActivity2.f15288r.notifyDataSetChanged();
                        userTorrentsActivity2.g();
                        break;
                    case 2:
                        BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType4 = BaseProcessor$TorrentServiceType.f16068f;
                        UserTorrentsActivity userTorrentsActivity3 = this.f21290e;
                        userTorrentsActivity3.f15289s = baseProcessor$TorrentServiceType4;
                        userTorrentsActivity3.f15280b.clear();
                        userTorrentsActivity3.f15288r.notifyDataSetChanged();
                        userTorrentsActivity3.g();
                        break;
                    case 3:
                        BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType5 = BaseProcessor$TorrentServiceType.f16069j;
                        UserTorrentsActivity userTorrentsActivity4 = this.f21290e;
                        userTorrentsActivity4.f15289s = baseProcessor$TorrentServiceType5;
                        userTorrentsActivity4.f15280b.clear();
                        userTorrentsActivity4.f15288r.notifyDataSetChanged();
                        userTorrentsActivity4.g();
                        break;
                    default:
                        BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType6 = BaseProcessor$TorrentServiceType.f16070m;
                        UserTorrentsActivity userTorrentsActivity5 = this.f21290e;
                        userTorrentsActivity5.f15289s = baseProcessor$TorrentServiceType6;
                        userTorrentsActivity5.f15280b.clear();
                        userTorrentsActivity5.f15288r.notifyDataSetChanged();
                        userTorrentsActivity5.g();
                        break;
                }
            }
        });
        final int i8 = 2;
        this.f15284m.setOnClickListener(new View.OnClickListener(this) { // from class: y4.t1

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ UserTorrentsActivity f21290e;

            {
                this.f21290e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i8) {
                    case 0:
                        BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType2 = BaseProcessor$TorrentServiceType.f16066b;
                        UserTorrentsActivity userTorrentsActivity = this.f21290e;
                        userTorrentsActivity.f15289s = baseProcessor$TorrentServiceType2;
                        userTorrentsActivity.f15280b.clear();
                        userTorrentsActivity.f15288r.notifyDataSetChanged();
                        userTorrentsActivity.g();
                        break;
                    case 1:
                        BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType3 = BaseProcessor$TorrentServiceType.f16067e;
                        UserTorrentsActivity userTorrentsActivity2 = this.f21290e;
                        userTorrentsActivity2.f15289s = baseProcessor$TorrentServiceType3;
                        userTorrentsActivity2.f15280b.clear();
                        userTorrentsActivity2.f15288r.notifyDataSetChanged();
                        userTorrentsActivity2.g();
                        break;
                    case 2:
                        BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType4 = BaseProcessor$TorrentServiceType.f16068f;
                        UserTorrentsActivity userTorrentsActivity3 = this.f21290e;
                        userTorrentsActivity3.f15289s = baseProcessor$TorrentServiceType4;
                        userTorrentsActivity3.f15280b.clear();
                        userTorrentsActivity3.f15288r.notifyDataSetChanged();
                        userTorrentsActivity3.g();
                        break;
                    case 3:
                        BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType5 = BaseProcessor$TorrentServiceType.f16069j;
                        UserTorrentsActivity userTorrentsActivity4 = this.f21290e;
                        userTorrentsActivity4.f15289s = baseProcessor$TorrentServiceType5;
                        userTorrentsActivity4.f15280b.clear();
                        userTorrentsActivity4.f15288r.notifyDataSetChanged();
                        userTorrentsActivity4.g();
                        break;
                    default:
                        BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType6 = BaseProcessor$TorrentServiceType.f16070m;
                        UserTorrentsActivity userTorrentsActivity5 = this.f21290e;
                        userTorrentsActivity5.f15289s = baseProcessor$TorrentServiceType6;
                        userTorrentsActivity5.f15280b.clear();
                        userTorrentsActivity5.f15288r.notifyDataSetChanged();
                        userTorrentsActivity5.g();
                        break;
                }
            }
        });
        RelativeLayout relativeLayout3 = this.f15285n;
        if (relativeLayout3 != null) {
            final int i9 = 3;
            relativeLayout3.setOnClickListener(new View.OnClickListener(this) { // from class: y4.t1

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ UserTorrentsActivity f21290e;

                {
                    this.f21290e = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    switch (i9) {
                        case 0:
                            BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType2 = BaseProcessor$TorrentServiceType.f16066b;
                            UserTorrentsActivity userTorrentsActivity = this.f21290e;
                            userTorrentsActivity.f15289s = baseProcessor$TorrentServiceType2;
                            userTorrentsActivity.f15280b.clear();
                            userTorrentsActivity.f15288r.notifyDataSetChanged();
                            userTorrentsActivity.g();
                            break;
                        case 1:
                            BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType3 = BaseProcessor$TorrentServiceType.f16067e;
                            UserTorrentsActivity userTorrentsActivity2 = this.f21290e;
                            userTorrentsActivity2.f15289s = baseProcessor$TorrentServiceType3;
                            userTorrentsActivity2.f15280b.clear();
                            userTorrentsActivity2.f15288r.notifyDataSetChanged();
                            userTorrentsActivity2.g();
                            break;
                        case 2:
                            BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType4 = BaseProcessor$TorrentServiceType.f16068f;
                            UserTorrentsActivity userTorrentsActivity3 = this.f21290e;
                            userTorrentsActivity3.f15289s = baseProcessor$TorrentServiceType4;
                            userTorrentsActivity3.f15280b.clear();
                            userTorrentsActivity3.f15288r.notifyDataSetChanged();
                            userTorrentsActivity3.g();
                            break;
                        case 3:
                            BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType5 = BaseProcessor$TorrentServiceType.f16069j;
                            UserTorrentsActivity userTorrentsActivity4 = this.f21290e;
                            userTorrentsActivity4.f15289s = baseProcessor$TorrentServiceType5;
                            userTorrentsActivity4.f15280b.clear();
                            userTorrentsActivity4.f15288r.notifyDataSetChanged();
                            userTorrentsActivity4.g();
                            break;
                        default:
                            BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType6 = BaseProcessor$TorrentServiceType.f16070m;
                            UserTorrentsActivity userTorrentsActivity5 = this.f21290e;
                            userTorrentsActivity5.f15289s = baseProcessor$TorrentServiceType6;
                            userTorrentsActivity5.f15280b.clear();
                            userTorrentsActivity5.f15288r.notifyDataSetChanged();
                            userTorrentsActivity5.g();
                            break;
                    }
                }
            });
        }
        final int i10 = 4;
        this.f15286p.setOnClickListener(new View.OnClickListener(this) { // from class: y4.t1

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ UserTorrentsActivity f21290e;

            {
                this.f21290e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i10) {
                    case 0:
                        BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType2 = BaseProcessor$TorrentServiceType.f16066b;
                        UserTorrentsActivity userTorrentsActivity = this.f21290e;
                        userTorrentsActivity.f15289s = baseProcessor$TorrentServiceType2;
                        userTorrentsActivity.f15280b.clear();
                        userTorrentsActivity.f15288r.notifyDataSetChanged();
                        userTorrentsActivity.g();
                        break;
                    case 1:
                        BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType3 = BaseProcessor$TorrentServiceType.f16067e;
                        UserTorrentsActivity userTorrentsActivity2 = this.f21290e;
                        userTorrentsActivity2.f15289s = baseProcessor$TorrentServiceType3;
                        userTorrentsActivity2.f15280b.clear();
                        userTorrentsActivity2.f15288r.notifyDataSetChanged();
                        userTorrentsActivity2.g();
                        break;
                    case 2:
                        BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType4 = BaseProcessor$TorrentServiceType.f16068f;
                        UserTorrentsActivity userTorrentsActivity3 = this.f21290e;
                        userTorrentsActivity3.f15289s = baseProcessor$TorrentServiceType4;
                        userTorrentsActivity3.f15280b.clear();
                        userTorrentsActivity3.f15288r.notifyDataSetChanged();
                        userTorrentsActivity3.g();
                        break;
                    case 3:
                        BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType5 = BaseProcessor$TorrentServiceType.f16069j;
                        UserTorrentsActivity userTorrentsActivity4 = this.f21290e;
                        userTorrentsActivity4.f15289s = baseProcessor$TorrentServiceType5;
                        userTorrentsActivity4.f15280b.clear();
                        userTorrentsActivity4.f15288r.notifyDataSetChanged();
                        userTorrentsActivity4.g();
                        break;
                    default:
                        BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType6 = BaseProcessor$TorrentServiceType.f16070m;
                        UserTorrentsActivity userTorrentsActivity5 = this.f21290e;
                        userTorrentsActivity5.f15289s = baseProcessor$TorrentServiceType6;
                        userTorrentsActivity5.f15280b.clear();
                        userTorrentsActivity5.f15288r.notifyDataSetChanged();
                        userTorrentsActivity5.g();
                        break;
                }
            }
        });
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.recyclerview_cast);
        this.f15281e = recyclerView;
        recyclerView.addItemDecoration(new k(App.f14424I ? 12 : 8));
        this.f15288r = new h0(this, this.f15280b);
        this.f15281e.setLayoutManager(new LinearLayoutManager(this));
        this.f15281e.setAdapter(this.f15288r);
        this.f15282f.requestFocus();
        g();
    }

    @Override // U4.j
    public void onMediaSelected(Movie movie) {
        Intent intent = new Intent(this, (Class<?>) MovieDetailActivity.class);
        intent.putExtra("movie", movie);
        intent.setFlags(268435456);
        startActivity(intent);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
        }
        return true;
    }

    public void torrentClicked(UserTorrent userTorrent) {
        String str;
        String str2;
        this.f15292v = userTorrent;
        BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType = userTorrent.source_type;
        BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType2 = BaseProcessor$TorrentServiceType.f16066b;
        if (baseProcessor$TorrentServiceType == baseProcessor$TorrentServiceType2 && (str2 = userTorrent.status) != null && str2.equals("error")) {
            Toast.makeText(this, "Cannot be played!", 0).show();
            return;
        }
        BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType3 = userTorrent.source_type;
        BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType4 = BaseProcessor$TorrentServiceType.f16068f;
        if (baseProcessor$TorrentServiceType3 == baseProcessor$TorrentServiceType4 && (str = userTorrent.status) != null && !str.equals("Ready") && !userTorrent.status.equals("Downloading")) {
            Toast.makeText(this, "Cannot be played now!", 0).show();
            return;
        }
        BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType5 = userTorrent.source_type;
        BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType6 = BaseProcessor$TorrentServiceType.f16069j;
        ArrayList arrayList = this.f15294x;
        if (baseProcessor$TorrentServiceType5 == baseProcessor$TorrentServiceType6) {
            String str3 = userTorrent.status;
            if (str3 != null && !str3.equals("completed") && !userTorrent.status.equals("cached")) {
                Toast.makeText(this, "Torrent is not ready yet. Status: " + userTorrent.status, 0).show();
                return;
            } else {
                String str4 = userTorrent.file_id;
                arrayList.clear();
                k();
                App.getInstance().getRequestQueue().add(new z1(0, "https://api.torbox.app/v1/api/torrents/mylist?id=" + str4, new v1(this, str4, 1), new d6.a(this)));
                return;
            }
        }
        if (baseProcessor$TorrentServiceType5 == BaseProcessor$TorrentServiceType.f16070m) {
            String str5 = userTorrent.status;
            if (str5 != null && !str5.equalsIgnoreCase("downloaded")) {
                Toast.makeText(this, "Torrent is still processing. Status: " + userTorrent.status, 0).show();
                return;
            } else {
                String str6 = userTorrent.file_id;
                arrayList.clear();
                k();
                D4.a.exploreOffcloudTorrent(str6).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new u1(this, 6), new u1(this, 7));
                return;
            }
        }
        if (userTorrent.streamable) {
            VideoSource videoSource = userTorrent.toVideoSource();
            if (videoSource == null) {
                return;
            }
            i(videoSource);
            return;
        }
        if (baseProcessor$TorrentServiceType5 == BaseProcessor$TorrentServiceType.f16067e) {
            ArrayList arrayList2 = (ArrayList) this.f15291u.get(userTorrent.file_id);
            if (arrayList2 == null || arrayList2.size() == 0) {
                getMagnetPrem(userTorrent.file_id);
                return;
            } else {
                e(arrayList2);
                return;
            }
        }
        if (baseProcessor$TorrentServiceType5 == baseProcessor$TorrentServiceType4) {
            ArrayList arrayList3 = (ArrayList) this.f15291u.get(userTorrent.file_id);
            if (arrayList3 != null && arrayList3.size() != 0) {
                e(arrayList3);
                return;
            }
            String str7 = userTorrent.file_id;
            arrayList.clear();
            k();
            new Handler().postDelayed(new RunnableC0883a(this, 12), 5000L);
            D4.a.getMagnetStatusAllDebrid(str7).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.newThread()).subscribe(new u1(this, 5), new H0(5));
            return;
        }
        if (baseProcessor$TorrentServiceType5 == baseProcessor$TorrentServiceType2) {
            if (userTorrent.src.size() <= 0) {
                AbstractC0995i.makeToast(this, "No download link found for this torrent", true);
                return;
            }
            ArrayList<String> arrayList4 = userTorrent.src;
            try {
                CharSequence[] charSequenceArr = (CharSequence[]) arrayList4.toArray(new CharSequence[arrayList4.size()]);
                r rVar = new r(new ContextThemeWrapper(this, R.style.AlertDialogNoHeader));
                rVar.setSingleChoiceItems(charSequenceArr, -1, new w1(this, arrayList4, 0));
                rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(5));
                rVar.setCancelable(true);
                rVar.show();
            } catch (Exception unused) {
            }
        }
    }

    public void unlockLinkAllRebrid(String str) {
        D4.a.unlockLinkAllDebrid(str).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.newThread()).subscribe(new u1(this, 8), new H0(5));
    }
}

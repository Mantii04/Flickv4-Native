package flix.com.vision.activities.adult;

import B4.DialogInterfaceOnClickListenerC0039b;
import B4.DialogInterfaceOnDismissListenerC0040c;
import C4.C0084h;
import Q4.d;
import T4.l;
import T4.o;
import U4.b;
import U4.c;
import X4.e;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.app.FragmentManager;
import android.content.Intent;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.ExoPlayer;
import com.malinskiy.superrecyclerview.SuperRecyclerView;
import d4.InterfaceC0807a;
import e.r;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.SettingsActivity;
import flix.com.vision.activities.adult.AdultHistoryActivity;
import flix.com.vision.activities.adult.AdultVideosActivity;
import flix.com.vision.activities.adult.AdultVideosFavoritesActivity;
import flix.com.vision.activities.adult.AdultVideosSearchActivity;
import flix.com.vision.activities.base.a;
import flix.com.vision.activities.player.AdultVideoPlayerActivity;
import flix.com.vision.helpers.CenterGridLayoutManager;
import flix.com.vision.models.adult.AdultLink;
import flix.com.vision.models.adult.AdultVideo;
import flix.com.vision.tv.Constant;
import h5.C0996j;
import java.util.ArrayList;
import java.util.Locale;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import z4.C2001j;
import z4.RunnableC1999h;

/* loaded from: classes2.dex */
public class AdultVideosActivity extends a implements c, InterfaceC0807a, U4.a, b {

    /* renamed from: C, reason: collision with root package name */
    public static final /* synthetic */ int f15347C = 0;

    /* renamed from: A, reason: collision with root package name */
    public int f15348A;

    /* renamed from: B, reason: collision with root package name */
    public d f15349B;

    /* renamed from: b, reason: collision with root package name */
    public RelativeLayout f15350b;

    /* renamed from: e, reason: collision with root package name */
    public RelativeLayout f15351e;

    /* renamed from: f, reason: collision with root package name */
    public RelativeLayout f15352f;

    /* renamed from: j, reason: collision with root package name */
    public RelativeLayout f15353j;

    /* renamed from: m, reason: collision with root package name */
    public RelativeLayout f15354m;

    /* renamed from: p, reason: collision with root package name */
    public C0996j f15356p;

    /* renamed from: q, reason: collision with root package name */
    public Typeface f15357q;

    /* renamed from: r, reason: collision with root package name */
    public TextView f15358r;

    /* renamed from: t, reason: collision with root package name */
    public SuperRecyclerView f15360t;

    /* renamed from: u, reason: collision with root package name */
    public C0084h f15361u;

    /* renamed from: v, reason: collision with root package name */
    public String f15362v;

    /* renamed from: w, reason: collision with root package name */
    public String f15363w;

    /* renamed from: n, reason: collision with root package name */
    public final ArrayList f15355n = new ArrayList();

    /* renamed from: s, reason: collision with root package name */
    public final ArrayList f15359s = new ArrayList();

    /* renamed from: x, reason: collision with root package name */
    public int f15364x = 0;

    /* renamed from: y, reason: collision with root package name */
    public int f15365y = 0;

    /* renamed from: z, reason: collision with root package name */
    public boolean f15366z = false;

    @Override // U4.a
    public void OnStreamResolvedSuccess(ArrayList<AdultLink> arrayList) {
        d dVar = this.f15349B;
        if (dVar != null) {
            try {
                dVar.dismiss();
            } catch (Exception unused) {
            }
        }
        ArrayList arrayList2 = this.f15355n;
        arrayList2.clear();
        arrayList2.addAll(arrayList);
        C2001j c2001j = new C2001j(this);
        c2001j.f21454a = true;
        EventBus.getDefault().post(c2001j);
    }

    @Override // U4.c
    public void OnVideoListSuccess(ArrayList<AdultVideo> arrayList) {
        C2001j c2001j = new C2001j(this);
        c2001j.f21455b = arrayList;
        c2001j.f21454a = false;
        EventBus.getDefault().post(c2001j);
    }

    public final void e(String str) {
        Intent intent = new Intent(this, (Class<?>) AdultVideoPlayerActivity.class);
        intent.putExtra("url", str);
        ArrayList arrayList = this.f15359s;
        intent.putExtra("videoUrl", ((AdultVideo) arrayList.get(this.f15365y)).url);
        intent.putExtra("title", ((AdultVideo) arrayList.get(this.f15365y)).title);
        intent.putExtra("image_url", ((AdultVideo) arrayList.get(this.f15365y)).img_url);
        startActivity(intent);
    }

    public void getVideos(int i2) {
        new e(this, this).process(this.f15362v, i2);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f15366z) {
            this.f15366z = false;
            super.onBackPressed();
            finish();
            return;
        }
        if (this.f15359s.size() < 200) {
            this.f15360t.getRecyclerView().smoothScrollToPosition(0);
        } else {
            this.f15360t.getRecyclerView().scrollToPosition(0);
        }
        this.f15366z = true;
        this.f15350b.requestFocus();
        this.f15360t.clearFocus();
        Toast.makeText(getBaseContext(), "Press Back again to Exit", 0).show();
        new Handler().postDelayed(new RunnableC1999h(this, 2), ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    @SuppressLint({"SetTextI18n"})
    public void onCreate(Bundle bundle) {
        final int i2 = 2;
        final int i7 = 1;
        final int i8 = 0;
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        AssetManager assets = getAssets();
        String str = Constant.f16184b;
        this.f15357q = Typeface.createFromAsset(assets, "fonts/product_sans_bold.ttf");
        this.f15356p = new C0996j();
        setContentView(R.layout.activity_adult_categories);
        this.f15362v = getIntent().getStringExtra("categoryUrl");
        this.f15363w = getIntent().getStringExtra("categoryTitle");
        this.f15361u = new C0084h(this, this, this.f15359s);
        this.f15354m = (RelativeLayout) findViewById(R.id.history_button_adult);
        this.f15353j = (RelativeLayout) findViewById(R.id.settings_button_adult);
        this.f15352f = (RelativeLayout) findViewById(R.id.activity_player);
        this.f15351e = (RelativeLayout) findViewById(R.id.favorites_button_adult);
        this.f15350b = (RelativeLayout) findViewById(R.id.search_button_adult);
        this.f15360t = (SuperRecyclerView) findViewById(R.id.recyclerview_categories);
        TextView textView = (TextView) findViewById(R.id.adult_page_title);
        this.f15358r = textView;
        this.f15356p.applyFontToView(textView, this.f15357q);
        this.f15354m.setOnClickListener(new View.OnClickListener(this) { // from class: z4.i

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ AdultVideosActivity f21453e;

            {
                this.f21453e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AdultVideosActivity adultVideosActivity = this.f21453e;
                switch (i8) {
                    case 0:
                        int i9 = AdultVideosActivity.f15347C;
                        adultVideosActivity.getClass();
                        adultVideosActivity.startActivity(new Intent(adultVideosActivity, (Class<?>) AdultHistoryActivity.class));
                        break;
                    case 1:
                        int i10 = AdultVideosActivity.f15347C;
                        adultVideosActivity.getClass();
                        if (App.getInstance().f14439r.getAdultVideosFavoritesFromDb().size() != 0) {
                            adultVideosActivity.startActivity(new Intent(adultVideosActivity, (Class<?>) AdultVideosFavoritesActivity.class));
                            break;
                        } else {
                            Toast.makeText(adultVideosActivity.getBaseContext(), "Long press on Video to add to your favorites", 1).show();
                            break;
                        }
                    case 2:
                        int i11 = AdultVideosActivity.f15347C;
                        adultVideosActivity.getClass();
                        adultVideosActivity.startActivity(new Intent(adultVideosActivity, (Class<?>) AdultVideosSearchActivity.class));
                        break;
                    default:
                        int i12 = AdultVideosActivity.f15347C;
                        adultVideosActivity.getClass();
                        adultVideosActivity.startActivity(new Intent(adultVideosActivity, (Class<?>) SettingsActivity.class));
                        break;
                }
            }
        });
        this.f15351e.setOnClickListener(new View.OnClickListener(this) { // from class: z4.i

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ AdultVideosActivity f21453e;

            {
                this.f21453e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AdultVideosActivity adultVideosActivity = this.f21453e;
                switch (i7) {
                    case 0:
                        int i9 = AdultVideosActivity.f15347C;
                        adultVideosActivity.getClass();
                        adultVideosActivity.startActivity(new Intent(adultVideosActivity, (Class<?>) AdultHistoryActivity.class));
                        break;
                    case 1:
                        int i10 = AdultVideosActivity.f15347C;
                        adultVideosActivity.getClass();
                        if (App.getInstance().f14439r.getAdultVideosFavoritesFromDb().size() != 0) {
                            adultVideosActivity.startActivity(new Intent(adultVideosActivity, (Class<?>) AdultVideosFavoritesActivity.class));
                            break;
                        } else {
                            Toast.makeText(adultVideosActivity.getBaseContext(), "Long press on Video to add to your favorites", 1).show();
                            break;
                        }
                    case 2:
                        int i11 = AdultVideosActivity.f15347C;
                        adultVideosActivity.getClass();
                        adultVideosActivity.startActivity(new Intent(adultVideosActivity, (Class<?>) AdultVideosSearchActivity.class));
                        break;
                    default:
                        int i12 = AdultVideosActivity.f15347C;
                        adultVideosActivity.getClass();
                        adultVideosActivity.startActivity(new Intent(adultVideosActivity, (Class<?>) SettingsActivity.class));
                        break;
                }
            }
        });
        this.f15350b.setOnClickListener(new View.OnClickListener(this) { // from class: z4.i

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ AdultVideosActivity f21453e;

            {
                this.f21453e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AdultVideosActivity adultVideosActivity = this.f21453e;
                switch (i2) {
                    case 0:
                        int i9 = AdultVideosActivity.f15347C;
                        adultVideosActivity.getClass();
                        adultVideosActivity.startActivity(new Intent(adultVideosActivity, (Class<?>) AdultHistoryActivity.class));
                        break;
                    case 1:
                        int i10 = AdultVideosActivity.f15347C;
                        adultVideosActivity.getClass();
                        if (App.getInstance().f14439r.getAdultVideosFavoritesFromDb().size() != 0) {
                            adultVideosActivity.startActivity(new Intent(adultVideosActivity, (Class<?>) AdultVideosFavoritesActivity.class));
                            break;
                        } else {
                            Toast.makeText(adultVideosActivity.getBaseContext(), "Long press on Video to add to your favorites", 1).show();
                            break;
                        }
                    case 2:
                        int i11 = AdultVideosActivity.f15347C;
                        adultVideosActivity.getClass();
                        adultVideosActivity.startActivity(new Intent(adultVideosActivity, (Class<?>) AdultVideosSearchActivity.class));
                        break;
                    default:
                        int i12 = AdultVideosActivity.f15347C;
                        adultVideosActivity.getClass();
                        adultVideosActivity.startActivity(new Intent(adultVideosActivity, (Class<?>) SettingsActivity.class));
                        break;
                }
            }
        });
        final int i9 = 3;
        this.f15353j.setOnClickListener(new View.OnClickListener(this) { // from class: z4.i

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ AdultVideosActivity f21453e;

            {
                this.f21453e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AdultVideosActivity adultVideosActivity = this.f21453e;
                switch (i9) {
                    case 0:
                        int i92 = AdultVideosActivity.f15347C;
                        adultVideosActivity.getClass();
                        adultVideosActivity.startActivity(new Intent(adultVideosActivity, (Class<?>) AdultHistoryActivity.class));
                        break;
                    case 1:
                        int i10 = AdultVideosActivity.f15347C;
                        adultVideosActivity.getClass();
                        if (App.getInstance().f14439r.getAdultVideosFavoritesFromDb().size() != 0) {
                            adultVideosActivity.startActivity(new Intent(adultVideosActivity, (Class<?>) AdultVideosFavoritesActivity.class));
                            break;
                        } else {
                            Toast.makeText(adultVideosActivity.getBaseContext(), "Long press on Video to add to your favorites", 1).show();
                            break;
                        }
                    case 2:
                        int i11 = AdultVideosActivity.f15347C;
                        adultVideosActivity.getClass();
                        adultVideosActivity.startActivity(new Intent(adultVideosActivity, (Class<?>) AdultVideosSearchActivity.class));
                        break;
                    default:
                        int i12 = AdultVideosActivity.f15347C;
                        adultVideosActivity.getClass();
                        adultVideosActivity.startActivity(new Intent(adultVideosActivity, (Class<?>) SettingsActivity.class));
                        break;
                }
            }
        });
        this.f15360t.setAdapter(this.f15361u);
        this.f15360t.setLayoutManager(new CenterGridLayoutManager(this, Math.round((b.c.d(getWindowManager().getDefaultDisplay()).widthPixels / getResources().getDisplayMetrics().density) / (!App.getInstance().f14440s.getBoolean("pref_adult_show_big_pictures", false) ? 130 : 260))));
        this.f15360t.addItemDecoration(new l(5));
        this.f15360t.setupMoreListener(this, 28);
        setBackgroundColor();
        new Handler().postDelayed(new RunnableC1999h(this, 0), 1000L);
        if (getResources().getConfiguration().orientation == 2) {
            this.f15358r.setText("AdultZone · " + this.f15363w);
        }
        getVideos(this.f15364x);
        new Handler().postDelayed(new RunnableC1999h(this, 1), 5000L);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(C2001j c2001j) {
        ArrayList arrayList = this.f15359s;
        int size = arrayList.size();
        ArrayList arrayList2 = c2001j.f21455b;
        if (arrayList2 != null && arrayList2.size() > 0) {
            arrayList.addAll(c2001j.f21455b);
            this.f15361u.notifyItemRangeInserted(size, c2001j.f21455b.size());
            return;
        }
        if (c2001j.f21454a) {
            ArrayList arrayList3 = this.f15355n;
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
            rVar.setSingleChoiceItems(charSequenceArr, -1, new DialogInterfaceOnClickListenerC0039b(5, this, arrayList3));
            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(7));
            rVar.show();
        }
    }

    @Override // d4.InterfaceC0807a
    public void onMoreAsked(int i2, int i7, int i8) {
        new Handler().postDelayed(new RunnableC1999h(this, 3), 200L);
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // U4.b
    public void openAdultVideo(int i2) {
        this.f15365y = i2;
        FragmentManager fragmentManager = getFragmentManager();
        d newInstance = d.newInstance(this, false);
        this.f15349B = newInstance;
        newInstance.setloading();
        try {
            this.f15349B.show(fragmentManager, "");
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        new X4.c(this, this).process(((AdultVideo) this.f15359s.get(i2)).url);
    }

    public void playAdultLink(String str) {
        String str2;
        int i2 = App.getInstance().f14440s.getInt("pref_adult_zone_player", 0);
        if (i2 <= 0 || i2 >= 4) {
            if (i2 != 4) {
                e(str);
                return;
            }
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.setDataAndType(Uri.parse(str), MimeTypes.VIDEO_MP4);
            startActivity(intent);
            return;
        }
        if (i2 == 1) {
            try {
                o.PlayMXPlayer(this, null, str, null, null, -1);
                return;
            } catch (Exception unused) {
                str2 = str;
            }
        } else if (i2 == 2) {
            str2 = str;
            try {
                o.PlayVLC(this, null, str2, null, null, -1);
                return;
            } catch (Exception unused2) {
            }
        } else {
            if (i2 != 3) {
                return;
            }
            try {
                o.PlayXPlayer(this, null, str);
                return;
            } catch (Exception unused3) {
                str2 = str;
            }
        }
        Toast.makeText(getBaseContext(), "Failed to load external Player, Make sure it is installed", 1).show();
        e(str2);
    }

    public void setBackgroundColor() {
        this.f15348A = 2505092;
        ValueAnimator ofObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(this.f15348A), 0);
        ofObject.setDuration(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        ofObject.addUpdateListener(new A3.a(this, 22));
        ofObject.start();
        this.f15348A = 0;
    }
}

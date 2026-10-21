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
import android.app.FragmentManager;
import android.content.Intent;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.RelativeLayout;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.media3.exoplayer.ExoPlayer;
import com.malinskiy.superrecyclerview.SuperRecyclerView;
import d4.InterfaceC0807a;
import e.r;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.base.a;
import flix.com.vision.activities.player.AdultVideoPlayerActivity;
import flix.com.vision.helpers.CenterGridLayoutManager;
import flix.com.vision.materialsearchview.MaterialSearchView;
import flix.com.vision.models.adult.AdultLink;
import flix.com.vision.models.adult.AdultVideo;
import flix.com.vision.tv.Constant;
import h5.C0996j;
import java.util.ArrayList;
import java.util.Locale;
import org.apache.commons.lang3.StringUtils;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import z4.C2004m;
import z4.C2005n;
import z4.RunnableC2003l;

/* loaded from: classes2.dex */
public class AdultVideosSearchActivity extends a implements c, InterfaceC0807a, U4.a, b {

    /* renamed from: y, reason: collision with root package name */
    public static final /* synthetic */ int f15380y = 0;

    /* renamed from: b, reason: collision with root package name */
    public RelativeLayout f15381b;

    /* renamed from: e, reason: collision with root package name */
    public Toolbar f15382e;

    /* renamed from: f, reason: collision with root package name */
    public MaterialSearchView f15383f;

    /* renamed from: n, reason: collision with root package name */
    public SuperRecyclerView f15386n;

    /* renamed from: p, reason: collision with root package name */
    public C0084h f15387p;

    /* renamed from: q, reason: collision with root package name */
    public String f15388q;

    /* renamed from: w, reason: collision with root package name */
    public int f15394w;

    /* renamed from: x, reason: collision with root package name */
    public d f15395x;

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f15384j = new ArrayList();

    /* renamed from: m, reason: collision with root package name */
    public final ArrayList f15385m = new ArrayList();

    /* renamed from: r, reason: collision with root package name */
    public String f15389r = "https://www.xvideos.com/?k=";

    /* renamed from: s, reason: collision with root package name */
    public int f15390s = 0;

    /* renamed from: t, reason: collision with root package name */
    public String f15391t = "";

    /* renamed from: u, reason: collision with root package name */
    public int f15392u = 0;

    /* renamed from: v, reason: collision with root package name */
    public boolean f15393v = false;

    @Override // U4.a
    public void OnStreamResolvedSuccess(ArrayList<AdultLink> arrayList) {
        d dVar = this.f15395x;
        if (dVar != null) {
            try {
                dVar.dismiss();
            } catch (Exception unused) {
            }
        }
        ArrayList arrayList2 = this.f15384j;
        arrayList2.clear();
        arrayList2.addAll(arrayList);
        C2005n c2005n = new C2005n(this);
        c2005n.f21460a = true;
        EventBus.getDefault().post(c2005n);
    }

    @Override // U4.c
    public void OnVideoListSuccess(ArrayList<AdultVideo> arrayList) {
        d dVar = this.f15395x;
        if (dVar != null) {
            try {
                dVar.dismiss();
            } catch (Exception unused) {
            }
        }
        C2005n c2005n = new C2005n(this);
        c2005n.f21461b = arrayList;
        c2005n.f21460a = false;
        EventBus.getDefault().post(c2005n);
    }

    public final void e(String str) {
        Intent intent = new Intent(this, (Class<?>) AdultVideoPlayerActivity.class);
        intent.putExtra("url", str);
        ArrayList arrayList = this.f15385m;
        intent.putExtra("videoUrl", ((AdultVideo) arrayList.get(this.f15392u)).url);
        intent.putExtra("title", ((AdultVideo) arrayList.get(this.f15392u)).title);
        intent.putExtra("image_url", ((AdultVideo) arrayList.get(this.f15392u)).img_url);
        startActivity(intent);
    }

    public final void f() {
        FragmentManager fragmentManager = getFragmentManager();
        d newInstance = d.newInstance(this, false);
        this.f15395x = newInstance;
        newInstance.setloading();
        try {
            this.f15395x.show(fragmentManager, "");
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public void getVideos(int i2) {
        this.f15388q = this.f15389r + this.f15391t.replace(StringUtils.SPACE, "+") + "&p=" + i2;
        new e(this, this).process(this.f15388q, i2);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f15383f.isOpen()) {
            this.f15383f.closeSearch();
            return;
        }
        if (this.f15393v) {
            this.f15393v = false;
            super.onBackPressed();
            finish();
            return;
        }
        if (this.f15385m.size() < 200) {
            this.f15386n.getRecyclerView().smoothScrollToPosition(0);
        } else {
            this.f15386n.getRecyclerView().scrollToPosition(0);
        }
        this.f15393v = true;
        this.f15386n.clearFocus();
        this.f15382e.requestFocus();
        Toast.makeText(getBaseContext(), "Press Back again to Exit", 0).show();
        new Handler().postDelayed(new RunnableC2003l(this, 0), ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        this.f15389r = "https://www.xvideos.com/?k=";
        AssetManager assets = getAssets();
        String str = Constant.f16184b;
        Typeface.createFromAsset(assets, "fonts/pproduct_sans_rregular.ttf");
        new C0996j();
        setContentView(R.layout.activity_adult_search);
        this.f15387p = new C0084h(this, this, this.f15385m);
        MaterialSearchView materialSearchView = (MaterialSearchView) findViewById(R.id.search_view);
        this.f15383f = materialSearchView;
        materialSearchView.setShouldKeepHistory(false);
        this.f15383f.setTintAlpha(1);
        this.f15383f.setHint("Search for any adult video...");
        this.f15383f.setOnQueryTextListener(new C2004m(this));
        this.f15381b = (RelativeLayout) findViewById(R.id.activity_player);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        this.f15382e = toolbar;
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setTitle("Adult Video Search");
        SuperRecyclerView superRecyclerView = (SuperRecyclerView) findViewById(R.id.recyclerview_categories);
        this.f15386n = superRecyclerView;
        superRecyclerView.setAdapter(this.f15387p);
        this.f15386n.setLayoutManager(new CenterGridLayoutManager(this, Math.round((b.c.d(getWindowManager().getDefaultDisplay()).widthPixels / getResources().getDisplayMetrics().density) / (!App.getInstance().f14440s.getBoolean("pref_adult_show_big_pictures", false) ? 130 : 260))));
        this.f15386n.addItemDecoration(new l(5));
        this.f15386n.setupMoreListener(this, 28);
        setBackgroundColor();
        new Handler().postDelayed(new RunnableC2003l(this, 1), 500L);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.adult_search_menu, menu);
        return true;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(C2005n c2005n) {
        ArrayList arrayList = this.f15385m;
        int size = arrayList.size();
        ArrayList arrayList2 = c2005n.f21461b;
        if (arrayList2 != null && arrayList2.size() > 0) {
            arrayList.addAll(c2005n.f21461b);
            this.f15387p.notifyItemRangeInserted(size, c2005n.f21461b.size());
            return;
        }
        if (c2005n.f21460a) {
            ArrayList arrayList3 = this.f15384j;
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
            rVar.setSingleChoiceItems(charSequenceArr, -1, new DialogInterfaceOnClickListenerC0039b(7, this, arrayList3));
            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(9));
            rVar.show();
        }
    }

    @Override // d4.InterfaceC0807a
    public void onMoreAsked(int i2, int i7, int i8) {
        new Handler().postDelayed(new RunnableC2003l(this, 2), 200L);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.id.action_search) {
            this.f15383f.openSearch();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // U4.b
    public void openAdultVideo(int i2) {
        this.f15392u = i2;
        f();
        new X4.c(this, this).process(((AdultVideo) this.f15385m.get(i2)).url);
    }

    public void playAdultLink(String str) {
        String str2;
        int i2 = App.getInstance().f14440s.getInt("pref_adult_zone_player", 0);
        if (i2 <= 0) {
            e(str);
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
        this.f15394w = 2505092;
        ValueAnimator ofObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(this.f15394w), 0);
        ofObject.setDuration(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        ofObject.addUpdateListener(new A3.a(this, 24));
        ofObject.start();
        this.f15394w = 0;
    }
}

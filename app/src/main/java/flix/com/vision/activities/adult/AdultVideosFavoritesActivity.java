package flix.com.vision.activities.adult;

import A4.q;
import B4.DialogInterfaceOnClickListenerC0039b;
import B4.DialogInterfaceOnDismissListenerC0040c;
import B4.ViewOnClickListenerC0038a;
import C4.C0084h;
import C4.ViewOnClickListenerC0088l;
import Q4.d;
import T4.l;
import T4.o;
import U4.b;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.app.FragmentManager;
import android.content.Intent;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import android.view.ContextThemeWrapper;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.media3.exoplayer.ExoPlayer;
import b.c;
import com.malinskiy.superrecyclerview.SuperRecyclerView;
import e.r;
import f1.RunnableC0883a;
import flix.com.vision.App;
import flix.com.vision.R;
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
import z4.C2002k;

/* loaded from: classes2.dex */
public class AdultVideosFavoritesActivity extends a implements U4.a, b {

    /* renamed from: v, reason: collision with root package name */
    public static final /* synthetic */ int f15367v = 0;

    /* renamed from: b, reason: collision with root package name */
    public RelativeLayout f15368b;

    /* renamed from: e, reason: collision with root package name */
    public RelativeLayout f15369e;

    /* renamed from: j, reason: collision with root package name */
    public C0996j f15371j;

    /* renamed from: m, reason: collision with root package name */
    public Typeface f15372m;

    /* renamed from: n, reason: collision with root package name */
    public TextView f15373n;

    /* renamed from: q, reason: collision with root package name */
    public SuperRecyclerView f15375q;

    /* renamed from: r, reason: collision with root package name */
    public C0084h f15376r;

    /* renamed from: t, reason: collision with root package name */
    public int f15378t;

    /* renamed from: u, reason: collision with root package name */
    public d f15379u;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f15370f = new ArrayList();

    /* renamed from: p, reason: collision with root package name */
    public final ArrayList f15374p = new ArrayList();

    /* renamed from: s, reason: collision with root package name */
    public int f15377s = 0;

    @Override // U4.a
    public void OnStreamResolvedSuccess(ArrayList<AdultLink> arrayList) {
        d dVar = this.f15379u;
        if (dVar != null) {
            try {
                dVar.dismiss();
            } catch (Exception unused) {
            }
        }
        ArrayList arrayList2 = this.f15370f;
        arrayList2.clear();
        arrayList2.addAll(arrayList);
        C2002k c2002k = new C2002k(this);
        c2002k.f21456a = true;
        EventBus.getDefault().post(c2002k);
    }

    public final void e(String str) {
        Intent intent = new Intent(this, (Class<?>) AdultVideoPlayerActivity.class);
        intent.putExtra("url", str);
        ArrayList arrayList = this.f15374p;
        intent.putExtra("videoUrl", ((AdultVideo) arrayList.get(this.f15377s)).url);
        intent.putExtra("title", ((AdultVideo) arrayList.get(this.f15377s)).title);
        intent.putExtra("image_url", ((AdultVideo) arrayList.get(this.f15377s)).img_url);
        startActivity(intent);
    }

    public void getVideos() {
        ArrayList<AdultVideo> adultVideosFavoritesFromDb = App.getInstance().f14439r.getAdultVideosFavoritesFromDb();
        if (adultVideosFavoritesFromDb != null && adultVideosFavoritesFromDb.size() > 0) {
            this.f15374p.addAll(adultVideosFavoritesFromDb);
        }
        this.f15376r.notifyDataSetChanged();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        finish();
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        AssetManager assets = getAssets();
        String str = Constant.f16184b;
        this.f15372m = Typeface.createFromAsset(assets, "fonts/product_sans_bold.ttf");
        this.f15371j = new C0996j();
        setContentView(R.layout.activity_adult_video_favorites);
        this.f15376r = new C0084h(this, this, this.f15374p);
        this.f15369e = (RelativeLayout) findViewById(R.id.activity_player);
        this.f15368b = (RelativeLayout) findViewById(R.id.search_button_adult);
        this.f15375q = (SuperRecyclerView) findViewById(R.id.recyclerview_categories);
        TextView textView = (TextView) findViewById(R.id.adult_page_title);
        this.f15373n = textView;
        this.f15371j.applyFontToView(textView, this.f15372m);
        this.f15368b.setOnClickListener(new ViewOnClickListenerC0038a(this, 17));
        this.f15375q.setAdapter(this.f15376r);
        this.f15375q.setLayoutManager(new CenterGridLayoutManager(this, Math.round((c.d(getWindowManager().getDefaultDisplay()).widthPixels / getResources().getDisplayMetrics().density) / (!App.getInstance().f14440s.getBoolean("pref_adult_show_big_pictures", false) ? 130 : 260))));
        this.f15375q.addItemDecoration(new l(5));
        new Handler().postDelayed(new RunnableC0883a(this, 16), 1000L);
        setBackgroundColor();
        this.f15373n.setText("Adult Zone · Favorites");
        getVideos();
    }

    public void onFavoritesLongPress(int i2) {
        ArrayList arrayList = this.f15374p;
        if (i2 >= arrayList.size()) {
            return;
        }
        AdultVideo adultVideo = (AdultVideo) arrayList.get(i2);
        FragmentManager fragmentManager = getFragmentManager();
        d newInstance = d.newInstance(this, true);
        newInstance.setTitle(adultVideo.title);
        newInstance.setMessage("What would you like to Do?");
        newInstance.setButton1("REMOVE FAVORITE", new ViewOnClickListenerC0088l(this, adultVideo, i2, 6));
        newInstance.setButton2("CANCEL", new q(13));
        try {
            newInstance.show(fragmentManager, "");
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(C2002k c2002k) {
        this.f15374p.size();
        c2002k.getClass();
        if (c2002k.f21456a) {
            ArrayList arrayList = this.f15370f;
            if (App.getInstance().f14440s.getBoolean("pref_adult_zone_always_play_best", true) && arrayList.size() > 0) {
                playAdultLink(((AdultLink) arrayList.get(0)).stream_url);
                return;
            }
            ArrayList arrayList2 = new ArrayList();
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                arrayList2.add(((AdultLink) arrayList.get(i2)).label.toUpperCase(Locale.ROOT));
            }
            CharSequence[] charSequenceArr = (CharSequence[]) arrayList2.toArray(new CharSequence[arrayList2.size()]);
            r rVar = new r(new ContextThemeWrapper(this, R.style.AlertDialogCustom));
            rVar.setSingleChoiceItems(charSequenceArr, -1, new DialogInterfaceOnClickListenerC0039b(6, this, arrayList));
            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(8));
            rVar.show();
        }
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // U4.b
    public void openAdultVideo(int i2) {
        ArrayList arrayList = this.f15374p;
        if (i2 >= arrayList.size()) {
            i2 = 0;
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.f15377s = i2;
        FragmentManager fragmentManager = getFragmentManager();
        d newInstance = d.newInstance(this, false);
        this.f15379u = newInstance;
        newInstance.setloading();
        try {
            this.f15379u.show(fragmentManager, "");
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        new X4.c(this, this).process(((AdultVideo) arrayList.get(i2)).url);
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
        this.f15378t = 2505092;
        ValueAnimator ofObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(this.f15378t), 0);
        ofObject.setDuration(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        ofObject.addUpdateListener(new A3.a(this, 23));
        ofObject.start();
        this.f15378t = 0;
    }
}

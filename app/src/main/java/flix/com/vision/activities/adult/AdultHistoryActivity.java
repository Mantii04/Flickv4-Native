package flix.com.vision.activities.adult;

import A4.m;
import B4.DialogInterfaceOnClickListenerC0039b;
import B4.DialogInterfaceOnDismissListenerC0040c;
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
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.View;
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
import flix.com.vision.activities.adult.AdultHistoryActivity;
import flix.com.vision.activities.adult.AdultVideosSearchActivity;
import flix.com.vision.activities.base.a;
import flix.com.vision.activities.player.AdultVideoPlayerActivity;
import flix.com.vision.helpers.CenterGridLayoutManager;
import flix.com.vision.models.adult.AdultLink;
import flix.com.vision.models.adult.AdultVideo;
import flix.com.vision.tv.Constant;
import h5.AbstractC0995i;
import h5.C0996j;
import java.util.ArrayList;
import java.util.Locale;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import z4.C1996e;

/* loaded from: classes2.dex */
public class AdultHistoryActivity extends a implements U4.a, b {

    /* renamed from: v, reason: collision with root package name */
    public static final /* synthetic */ int f15323v = 0;

    /* renamed from: b, reason: collision with root package name */
    public RelativeLayout f15324b;

    /* renamed from: e, reason: collision with root package name */
    public RelativeLayout f15325e;

    /* renamed from: f, reason: collision with root package name */
    public RelativeLayout f15326f;

    /* renamed from: m, reason: collision with root package name */
    public C0996j f15328m;

    /* renamed from: n, reason: collision with root package name */
    public Typeface f15329n;

    /* renamed from: q, reason: collision with root package name */
    public SuperRecyclerView f15331q;

    /* renamed from: r, reason: collision with root package name */
    public C0084h f15332r;

    /* renamed from: t, reason: collision with root package name */
    public int f15334t;

    /* renamed from: u, reason: collision with root package name */
    public d f15335u;

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f15327j = new ArrayList();

    /* renamed from: p, reason: collision with root package name */
    public final ArrayList f15330p = new ArrayList();

    /* renamed from: s, reason: collision with root package name */
    public int f15333s = 0;

    @Override // U4.a
    public void OnStreamResolvedSuccess(ArrayList<AdultLink> arrayList) {
        d dVar = this.f15335u;
        if (dVar != null) {
            try {
                dVar.dismiss();
            } catch (Exception unused) {
            }
        }
        ArrayList arrayList2 = this.f15327j;
        arrayList2.clear();
        arrayList2.addAll(arrayList);
        C1996e c1996e = new C1996e(this);
        c1996e.f21445a = true;
        EventBus.getDefault().post(c1996e);
    }

    public final void e(String str) {
        Intent intent = new Intent(this, (Class<?>) AdultVideoPlayerActivity.class);
        intent.putExtra("url", str);
        ArrayList arrayList = this.f15330p;
        intent.putExtra("videoUrl", ((AdultVideo) arrayList.get(this.f15333s)).url);
        intent.putExtra("title", ((AdultVideo) arrayList.get(this.f15333s)).title);
        intent.putExtra("image_url", ((AdultVideo) arrayList.get(this.f15333s)).img_url);
        startActivity(intent);
    }

    public void getVideos() {
        ArrayList<AdultVideo> adultHistoryFromDb = App.getInstance().f14439r.getAdultHistoryFromDb();
        if (adultHistoryFromDb != null && adultHistoryFromDb.size() > 0) {
            ArrayList arrayList = this.f15330p;
            arrayList.clear();
            arrayList.addAll(adultHistoryFromDb);
        }
        this.f15332r.notifyDataSetChanged();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        finish();
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        final int i2 = 0;
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        final int i7 = 1;
        if (!App.getInstance().f14440s.getBoolean("pref_adult_zone_keep_history", true)) {
            AbstractC0995i.makeToast(this, "HISTORY IS CURRENTLY OFF. Please enable it in Settings", true);
        }
        AssetManager assets = getAssets();
        String str = Constant.f16184b;
        this.f15329n = Typeface.createFromAsset(assets, "fonts/product_sans_bold.ttf");
        this.f15328m = new C0996j();
        setContentView(R.layout.activity_adult_history);
        this.f15332r = new C0084h(this, this, this.f15330p);
        this.f15326f = (RelativeLayout) findViewById(R.id.button_adult_clear_history);
        this.f15325e = (RelativeLayout) findViewById(R.id.activity_player);
        this.f15324b = (RelativeLayout) findViewById(R.id.search_button_adult);
        this.f15331q = (SuperRecyclerView) findViewById(R.id.recyclerview_categories);
        this.f15328m.applyFontToView((TextView) findViewById(R.id.adult_page_title), this.f15329n);
        this.f15324b.setOnClickListener(new View.OnClickListener(this) { // from class: z4.d

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ AdultHistoryActivity f21444e;

            {
                this.f21444e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AdultHistoryActivity adultHistoryActivity = this.f21444e;
                switch (i2) {
                    case 0:
                        int i8 = AdultHistoryActivity.f15323v;
                        adultHistoryActivity.getClass();
                        adultHistoryActivity.startActivity(new Intent(adultHistoryActivity, (Class<?>) AdultVideosSearchActivity.class));
                        break;
                    default:
                        adultHistoryActivity.f15330p.clear();
                        adultHistoryActivity.f15332r.notifyDataSetChanged();
                        App.getInstance().f14439r.clearHistoryAdult();
                        adultHistoryActivity.finish();
                        break;
                }
            }
        });
        this.f15326f.setOnClickListener(new View.OnClickListener(this) { // from class: z4.d

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ AdultHistoryActivity f21444e;

            {
                this.f21444e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AdultHistoryActivity adultHistoryActivity = this.f21444e;
                switch (i7) {
                    case 0:
                        int i8 = AdultHistoryActivity.f15323v;
                        adultHistoryActivity.getClass();
                        adultHistoryActivity.startActivity(new Intent(adultHistoryActivity, (Class<?>) AdultVideosSearchActivity.class));
                        break;
                    default:
                        adultHistoryActivity.f15330p.clear();
                        adultHistoryActivity.f15332r.notifyDataSetChanged();
                        App.getInstance().f14439r.clearHistoryAdult();
                        adultHistoryActivity.finish();
                        break;
                }
            }
        });
        this.f15331q.setAdapter(this.f15332r);
        this.f15331q.setLayoutManager(new CenterGridLayoutManager(this, Math.round((c.d(getWindowManager().getDefaultDisplay()).widthPixels / getResources().getDisplayMetrics().density) / (!App.getInstance().f14440s.getBoolean("pref_adult_show_big_pictures", false) ? 130 : 260))));
        this.f15331q.addItemDecoration(new l(5));
        new Handler().postDelayed(new RunnableC0883a(this, 15), 1000L);
        setBackgroundColor();
        getVideos();
    }

    public void onHistoryLongPress(int i2) {
        ArrayList arrayList = this.f15330p;
        if (arrayList == null || i2 < 0 || i2 >= arrayList.size()) {
            Log.e("AdultHistory", "Invalid long press position: " + i2);
            return;
        }
        AdultVideo adultVideo = (AdultVideo) arrayList.get(i2);
        FragmentManager fragmentManager = getFragmentManager();
        d newInstance = d.newInstance(this, true);
        newInstance.setTitle(adultVideo.title);
        newInstance.setMessage("What would you like to Do?");
        newInstance.setButton1("DELETE FROM HISTORY", new ViewOnClickListenerC0088l(this, adultVideo, i2, 5));
        newInstance.setButton2("ADD TO FAVORITES", new m(22, this, adultVideo));
        try {
            newInstance.show(fragmentManager, "");
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(C1996e c1996e) {
        this.f15330p.size();
        c1996e.getClass();
        if (c1996e.f21445a) {
            ArrayList arrayList = this.f15327j;
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
            rVar.setSingleChoiceItems(charSequenceArr, -1, new DialogInterfaceOnClickListenerC0039b(4, this, arrayList));
            rVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0040c(6));
            rVar.show();
        }
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, android.app.Activity
    public void onResume() {
        super.onResume();
        getVideos();
    }

    @Override // U4.b
    public void openAdultVideo(int i2) {
        ArrayList arrayList = this.f15330p;
        if (i2 >= arrayList.size()) {
            i2 = 0;
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.f15333s = i2;
        FragmentManager fragmentManager = getFragmentManager();
        d newInstance = d.newInstance(this, false);
        this.f15335u = newInstance;
        newInstance.setloading();
        try {
            this.f15335u.show(fragmentManager, "");
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
        this.f15334t = 2505092;
        ValueAnimator ofObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(this.f15334t), 0);
        ofObject.setDuration(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        ofObject.addUpdateListener(new A3.a(this, 21));
        ofObject.start();
        this.f15334t = 0;
    }
}

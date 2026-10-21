package flix.com.vision.activities;

import C4.C0101z;
import C4.I;
import U4.e;
import U4.i;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.uwetrottmann.trakt5.TraktV2;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.DramaSearchResultActivity;
import flix.com.vision.helpers.CenterGridLayoutManager;
import flix.com.vision.models.Drama;
import flix.com.vision.tv.Constant;
import java.util.ArrayList;
import org.apache.commons.lang3.StringUtils;
import y4.H;

/* loaded from: classes2.dex */
public class DramaSearchResultActivity extends flix.com.vision.activities.base.a implements i, e {

    /* renamed from: z, reason: collision with root package name */
    public static final /* synthetic */ int f14638z = 0;

    /* renamed from: b, reason: collision with root package name */
    public RecyclerView f14639b;

    /* renamed from: e, reason: collision with root package name */
    public RecyclerView f14640e;

    /* renamed from: f, reason: collision with root package name */
    public RelativeLayout f14641f;

    /* renamed from: j, reason: collision with root package name */
    public RelativeLayout f14642j;

    /* renamed from: m, reason: collision with root package name */
    public RelativeLayout f14643m;

    /* renamed from: n, reason: collision with root package name */
    public RelativeLayout f14644n;

    /* renamed from: r, reason: collision with root package name */
    public ProgressBar f14647r;

    /* renamed from: s, reason: collision with root package name */
    public ArrayList f14648s;

    /* renamed from: t, reason: collision with root package name */
    public RecyclerView f14649t;

    /* renamed from: u, reason: collision with root package name */
    public TextView f14650u;

    /* renamed from: v, reason: collision with root package name */
    public TextView f14651v;

    /* renamed from: w, reason: collision with root package name */
    public LinearLayout f14652w;

    /* renamed from: p, reason: collision with root package name */
    public final ArrayList f14645p = new ArrayList();

    /* renamed from: q, reason: collision with root package name */
    public final ArrayList f14646q = new ArrayList();

    /* renamed from: x, reason: collision with root package name */
    public String f14653x = "";

    /* renamed from: y, reason: collision with root package name */
    public String f14654y = "https://kissasiantv.to";

    public static String removeLastChar(String str) {
        return (str == null || str.length() == 0) ? "" : A.i.d(1, 0, str);
    }

    public final void e() {
        this.f14650u.setText(this.f14653x);
        if (this.f14653x.isEmpty()) {
            this.f14650u.setText("Search Drama Show or Movie by title");
        }
    }

    public void extractDominantColor() {
        ValueAnimator ofObject = ValueAnimator.ofObject(new ArgbEvaluator(), 0, 2505092);
        ofObject.setDuration(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        ofObject.addUpdateListener(new A3.a(this, 13));
        ofObject.addListener(new H());
        ofObject.start();
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        final int i2 = 1;
        final int i7 = 0;
        super.onCreate(bundle);
        setContentView(R.layout.activity_search_tv_drama);
        SharedPreferences sharedPreferences = App.getInstance().f14440s;
        String str = Constant.f16184b;
        this.f14654y = sharedPreferences.getString("pref_drama_host", "https://kissasiantv.to");
        ArrayList arrayList = new ArrayList();
        this.f14648s = arrayList;
        new C0101z(arrayList, this, this);
        this.f14649t = (RecyclerView) findViewById(R.id.recyclerview);
        this.f14651v = (TextView) findViewById(R.id.discover_text_view);
        this.f14644n = (RelativeLayout) findViewById(R.id.search_button);
        this.f14650u = (TextView) findViewById(R.id.query_text_view);
        this.f14652w = (LinearLayout) findViewById(R.id.main_relative_view);
        this.f14647r = (ProgressBar) findViewById(R.id.loader);
        this.f14640e = (RecyclerView) findViewById(R.id.recycler_view_letters_numeric);
        this.f14639b = (RecyclerView) findViewById(R.id.recycler_view_letters);
        this.f14647r = (ProgressBar) findViewById(R.id.loader);
        this.f14647r = (ProgressBar) findViewById(R.id.loader);
        this.f14652w = (LinearLayout) findViewById(R.id.main_relative_view);
        this.f14643m = (RelativeLayout) findViewById(R.id.clear_button);
        this.f14641f = (RelativeLayout) findViewById(R.id.button_blank_space);
        this.f14642j = (RelativeLayout) findViewById(R.id.button_back_space);
        this.f14650u = (TextView) findViewById(R.id.query_text_view);
        this.f14639b = (RecyclerView) findViewById(R.id.recycler_view_letters);
        this.f14640e = (RecyclerView) findViewById(R.id.recycler_view_letters_numeric);
        extractDominantColor();
        ArrayList arrayList2 = this.f14645p;
        this.f14639b.setAdapter(new I(this, this, arrayList2));
        this.f14639b.setLayoutManager(new GridLayoutManager(this, 7));
        ArrayList arrayList3 = this.f14646q;
        this.f14640e.setAdapter(new I(this, this, arrayList3));
        this.f14640e.setLayoutManager(new GridLayoutManager(this, 7));
        this.f14649t.setAdapter(new C0101z(this.f14648s, this, this));
        RecyclerView recyclerView = this.f14649t;
        getWindowManager().getDefaultDisplay().getMetrics(new DisplayMetrics());
        recyclerView.setLayoutManager(new CenterGridLayoutManager(this, Math.round(((r6.widthPixels / getResources().getDisplayMetrics().density) / 140) * 0.7f)));
        arrayList2.add(CmcdData.OBJECT_TYPE_AUDIO_ONLY);
        arrayList2.add("b");
        b.c.u(arrayList2, "c", "d", "e", "f");
        b.c.u(arrayList2, "g", CmcdData.STREAMING_FORMAT_HLS, CmcdData.OBJECT_TYPE_INIT_SEGMENT, "j");
        b.c.u(arrayList2, "k", CmcdData.STREAM_TYPE_LIVE, CmcdData.OBJECT_TYPE_MANIFEST, "n");
        b.c.u(arrayList2, "o", "p", "q", "r");
        b.c.u(arrayList2, CmcdData.STREAMING_FORMAT_SS, "t", "u", "v");
        b.c.u(arrayList2, "w", "x", "y", "z");
        b.c.u(arrayList3, "1", TraktV2.API_VERSION, "3", "4");
        b.c.u(arrayList3, "5", "6", "7", "8");
        arrayList3.add("9");
        arrayList3.add("0");
        this.f14644n.setOnClickListener(new View.OnClickListener(this) { // from class: y4.G

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ DramaSearchResultActivity f21127e;

            {
                this.f21127e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DramaSearchResultActivity dramaSearchResultActivity = this.f21127e;
                switch (i7) {
                    case 0:
                        String str2 = dramaSearchResultActivity.f14653x;
                        if (str2 != null && !str2.isEmpty() && str2.length() >= 3) {
                            dramaSearchResultActivity.f14647r.setVisibility(0);
                            new I(dramaSearchResultActivity, false, str2.replace("'", "")).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                            break;
                        } else if (str2 != null && str2.length() < 3) {
                            Toast.makeText(dramaSearchResultActivity, "enter at least 3 characters", 0).show();
                            break;
                        }
                        break;
                    case 1:
                        int i8 = DramaSearchResultActivity.f14638z;
                        dramaSearchResultActivity.onLetterClicked(StringUtils.SPACE);
                        break;
                    case 2:
                        dramaSearchResultActivity.f14653x = DramaSearchResultActivity.removeLastChar(dramaSearchResultActivity.f14653x);
                        dramaSearchResultActivity.e();
                        break;
                    default:
                        if (!dramaSearchResultActivity.f14653x.isEmpty()) {
                            dramaSearchResultActivity.f14653x = "";
                            dramaSearchResultActivity.e();
                            break;
                        }
                        break;
                }
            }
        });
        this.f14641f.setOnClickListener(new View.OnClickListener(this) { // from class: y4.G

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ DramaSearchResultActivity f21127e;

            {
                this.f21127e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DramaSearchResultActivity dramaSearchResultActivity = this.f21127e;
                switch (i2) {
                    case 0:
                        String str2 = dramaSearchResultActivity.f14653x;
                        if (str2 != null && !str2.isEmpty() && str2.length() >= 3) {
                            dramaSearchResultActivity.f14647r.setVisibility(0);
                            new I(dramaSearchResultActivity, false, str2.replace("'", "")).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                            break;
                        } else if (str2 != null && str2.length() < 3) {
                            Toast.makeText(dramaSearchResultActivity, "enter at least 3 characters", 0).show();
                            break;
                        }
                        break;
                    case 1:
                        int i8 = DramaSearchResultActivity.f14638z;
                        dramaSearchResultActivity.onLetterClicked(StringUtils.SPACE);
                        break;
                    case 2:
                        dramaSearchResultActivity.f14653x = DramaSearchResultActivity.removeLastChar(dramaSearchResultActivity.f14653x);
                        dramaSearchResultActivity.e();
                        break;
                    default:
                        if (!dramaSearchResultActivity.f14653x.isEmpty()) {
                            dramaSearchResultActivity.f14653x = "";
                            dramaSearchResultActivity.e();
                            break;
                        }
                        break;
                }
            }
        });
        final int i8 = 2;
        this.f14642j.setOnClickListener(new View.OnClickListener(this) { // from class: y4.G

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ DramaSearchResultActivity f21127e;

            {
                this.f21127e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DramaSearchResultActivity dramaSearchResultActivity = this.f21127e;
                switch (i8) {
                    case 0:
                        String str2 = dramaSearchResultActivity.f14653x;
                        if (str2 != null && !str2.isEmpty() && str2.length() >= 3) {
                            dramaSearchResultActivity.f14647r.setVisibility(0);
                            new I(dramaSearchResultActivity, false, str2.replace("'", "")).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                            break;
                        } else if (str2 != null && str2.length() < 3) {
                            Toast.makeText(dramaSearchResultActivity, "enter at least 3 characters", 0).show();
                            break;
                        }
                        break;
                    case 1:
                        int i82 = DramaSearchResultActivity.f14638z;
                        dramaSearchResultActivity.onLetterClicked(StringUtils.SPACE);
                        break;
                    case 2:
                        dramaSearchResultActivity.f14653x = DramaSearchResultActivity.removeLastChar(dramaSearchResultActivity.f14653x);
                        dramaSearchResultActivity.e();
                        break;
                    default:
                        if (!dramaSearchResultActivity.f14653x.isEmpty()) {
                            dramaSearchResultActivity.f14653x = "";
                            dramaSearchResultActivity.e();
                            break;
                        }
                        break;
                }
            }
        });
        final int i9 = 3;
        this.f14643m.setOnClickListener(new View.OnClickListener(this) { // from class: y4.G

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ DramaSearchResultActivity f21127e;

            {
                this.f21127e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DramaSearchResultActivity dramaSearchResultActivity = this.f21127e;
                switch (i9) {
                    case 0:
                        String str2 = dramaSearchResultActivity.f14653x;
                        if (str2 != null && !str2.isEmpty() && str2.length() >= 3) {
                            dramaSearchResultActivity.f14647r.setVisibility(0);
                            new I(dramaSearchResultActivity, false, str2.replace("'", "")).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                            break;
                        } else if (str2 != null && str2.length() < 3) {
                            Toast.makeText(dramaSearchResultActivity, "enter at least 3 characters", 0).show();
                            break;
                        }
                        break;
                    case 1:
                        int i82 = DramaSearchResultActivity.f14638z;
                        dramaSearchResultActivity.onLetterClicked(StringUtils.SPACE);
                        break;
                    case 2:
                        dramaSearchResultActivity.f14653x = DramaSearchResultActivity.removeLastChar(dramaSearchResultActivity.f14653x);
                        dramaSearchResultActivity.e();
                        break;
                    default:
                        if (!dramaSearchResultActivity.f14653x.isEmpty()) {
                            dramaSearchResultActivity.f14653x = "";
                            dramaSearchResultActivity.e();
                            break;
                        }
                        break;
                }
            }
        });
        new y4.I(this, true, A.i.o(new StringBuilder(), this.f14654y, "/drama-list/new-hot.html")).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    @Override // flix.com.vision.activities.base.a, e.AbstractActivityC0842v, androidx.fragment.app.H, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // U4.i
    public void onLetterClicked(String str) {
        this.f14653x = A.i.o(new StringBuilder(), this.f14653x, str);
        e();
    }

    @Override // androidx.fragment.app.H, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // U4.e
    public void openDrama(Drama drama) {
        Intent intent = new Intent(this, (Class<?>) DramaDetailActivity.class);
        intent.putExtra("drama", drama);
        intent.setFlags(268435456);
        startActivity(intent);
    }

    @Override // U4.e
    public void removeDramaFromFavorites(Drama drama) {
    }
}

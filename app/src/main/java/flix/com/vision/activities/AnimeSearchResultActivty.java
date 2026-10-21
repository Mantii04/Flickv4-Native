package flix.com.vision.activities;

import C4.C0087k;
import C4.I;
import U4.d;
import U4.i;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.content.Intent;
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
import flix.com.vision.activities.AnimeSearchResultActivty;
import flix.com.vision.helpers.CenterGridLayoutManager;
import flix.com.vision.models.Anime;
import java.util.ArrayList;
import java.util.Collections;
import org.apache.commons.lang3.StringUtils;
import y4.C1911k;

/* loaded from: classes2.dex */
public class AnimeSearchResultActivty extends flix.com.vision.activities.base.a implements i, d {

    /* renamed from: z, reason: collision with root package name */
    public static final /* synthetic */ int f14484z = 0;

    /* renamed from: b, reason: collision with root package name */
    public RecyclerView f14485b;

    /* renamed from: e, reason: collision with root package name */
    public RecyclerView f14486e;

    /* renamed from: f, reason: collision with root package name */
    public RelativeLayout f14487f;

    /* renamed from: j, reason: collision with root package name */
    public RelativeLayout f14488j;

    /* renamed from: m, reason: collision with root package name */
    public RelativeLayout f14489m;

    /* renamed from: n, reason: collision with root package name */
    public RelativeLayout f14490n;

    /* renamed from: r, reason: collision with root package name */
    public ProgressBar f14493r;

    /* renamed from: s, reason: collision with root package name */
    public ArrayList f14494s;

    /* renamed from: t, reason: collision with root package name */
    public RecyclerView f14495t;

    /* renamed from: u, reason: collision with root package name */
    public TextView f14496u;

    /* renamed from: v, reason: collision with root package name */
    public TextView f14497v;

    /* renamed from: x, reason: collision with root package name */
    public LinearLayout f14499x;

    /* renamed from: p, reason: collision with root package name */
    public final ArrayList f14491p = new ArrayList();

    /* renamed from: q, reason: collision with root package name */
    public final ArrayList f14492q = new ArrayList();

    /* renamed from: w, reason: collision with root package name */
    public final int f14498w = 100;

    /* renamed from: y, reason: collision with root package name */
    public String f14500y = "";

    public static String removeLastChar(String str) {
        return (str == null || str.length() == 0) ? "" : A.i.d(1, 0, str);
    }

    public final void e() {
        this.f14496u.setText(this.f14500y);
        if (this.f14500y.isEmpty()) {
            this.f14496u.setText("Search by title or people");
        }
    }

    public void extractDominantColor() {
        ValueAnimator ofObject = ValueAnimator.ofObject(new ArgbEvaluator(), 0, 2505092);
        ofObject.setDuration(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        ofObject.addUpdateListener(new A3.a(this, 8));
        ofObject.addListener(new C1911k());
        ofObject.start();
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_search_tv_anime);
        this.f14494s = new ArrayList();
        new C0087k(getBaseContext(), this.f14494s, this, this.f14498w, null);
        this.f14495t = (RecyclerView) findViewById(R.id.recyclerview);
        this.f14497v = (TextView) findViewById(R.id.discover_text_view);
        this.f14490n = (RelativeLayout) findViewById(R.id.search_button);
        this.f14496u = (TextView) findViewById(R.id.query_text_view);
        this.f14499x = (LinearLayout) findViewById(R.id.main_relative_view);
        this.f14493r = (ProgressBar) findViewById(R.id.loader);
        this.f14486e = (RecyclerView) findViewById(R.id.recycler_view_letters_numeric);
        this.f14485b = (RecyclerView) findViewById(R.id.recycler_view_letters);
        this.f14493r = (ProgressBar) findViewById(R.id.loader);
        this.f14493r = (ProgressBar) findViewById(R.id.loader);
        this.f14499x = (LinearLayout) findViewById(R.id.main_relative_view);
        this.f14489m = (RelativeLayout) findViewById(R.id.clear_button);
        this.f14487f = (RelativeLayout) findViewById(R.id.button_blank_space);
        this.f14488j = (RelativeLayout) findViewById(R.id.button_back_space);
        this.f14496u = (TextView) findViewById(R.id.query_text_view);
        this.f14485b = (RecyclerView) findViewById(R.id.recycler_view_letters);
        this.f14486e = (RecyclerView) findViewById(R.id.recycler_view_letters_numeric);
        extractDominantColor();
        ArrayList arrayList = this.f14491p;
        this.f14485b.setAdapter(new I(this, this, arrayList));
        this.f14485b.setLayoutManager(new GridLayoutManager(this, 7));
        ArrayList arrayList2 = this.f14492q;
        this.f14486e.setAdapter(new I(this, this, arrayList2));
        this.f14486e.setLayoutManager(new GridLayoutManager(this, 7));
        this.f14495t.setAdapter(new C0087k(this, this.f14494s, this, 1111, this));
        RecyclerView recyclerView = this.f14495t;
        getWindowManager().getDefaultDisplay().getMetrics(new DisplayMetrics());
        float f3 = r5.widthPixels / getResources().getDisplayMetrics().density;
        ArrayList arrayList3 = App.f14430z;
        recyclerView.setLayoutManager(new CenterGridLayoutManager(this, Math.round((f3 / 140) * 0.7f)));
        arrayList.add(CmcdData.OBJECT_TYPE_AUDIO_ONLY);
        arrayList.add("b");
        b.c.u(arrayList, "c", "d", "e", "f");
        b.c.u(arrayList, "g", CmcdData.STREAMING_FORMAT_HLS, CmcdData.OBJECT_TYPE_INIT_SEGMENT, "j");
        b.c.u(arrayList, "k", CmcdData.STREAM_TYPE_LIVE, CmcdData.OBJECT_TYPE_MANIFEST, "n");
        b.c.u(arrayList, "o", "p", "q", "r");
        b.c.u(arrayList, CmcdData.STREAMING_FORMAT_SS, "t", "u", "v");
        b.c.u(arrayList, "w", "x", "y", "z");
        b.c.u(arrayList2, "1", TraktV2.API_VERSION, "3", "4");
        b.c.u(arrayList2, "5", "6", "7", "8");
        arrayList2.add("9");
        arrayList2.add("0");
        final int i2 = 0;
        this.f14490n.setOnClickListener(new View.OnClickListener(this) { // from class: y4.j

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ AnimeSearchResultActivty f21241e;

            {
                this.f21241e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AnimeSearchResultActivty animeSearchResultActivty = this.f21241e;
                switch (i2) {
                    case 0:
                        String str = animeSearchResultActivty.f14500y;
                        if (str != null && !str.isEmpty() && str.length() >= 3) {
                            animeSearchResultActivty.f14493r.setVisibility(0);
                            animeSearchResultActivty.f14494s.addAll(App.getInstance().f14439r.searchGoAnime(str.replace("'", "")));
                            animeSearchResultActivty.f14493r.setVisibility(8);
                            if (animeSearchResultActivty.f14494s.size() < 1) {
                                animeSearchResultActivty.f14497v.setText("No anime found");
                                animeSearchResultActivty.f14497v.setVisibility(0);
                            } else {
                                animeSearchResultActivty.f14497v.setVisibility(8);
                            }
                            Collections.reverse(animeSearchResultActivty.f14494s);
                            animeSearchResultActivty.f14495t.getAdapter().notifyDataSetChanged();
                            animeSearchResultActivty.f14495t.invalidate();
                            animeSearchResultActivty.f14493r.setVisibility(8);
                            break;
                        } else if (str != null && str.length() < 3) {
                            Toast.makeText(animeSearchResultActivty, "enter at least 3 characters", 0).show();
                            break;
                        }
                        break;
                    case 1:
                        int i7 = AnimeSearchResultActivty.f14484z;
                        animeSearchResultActivty.onLetterClicked(StringUtils.SPACE);
                        break;
                    case 2:
                        animeSearchResultActivty.f14500y = AnimeSearchResultActivty.removeLastChar(animeSearchResultActivty.f14500y);
                        animeSearchResultActivty.e();
                        break;
                    default:
                        if (!animeSearchResultActivty.f14500y.isEmpty()) {
                            animeSearchResultActivty.f14500y = "";
                            animeSearchResultActivty.e();
                            break;
                        }
                        break;
                }
            }
        });
        final int i7 = 1;
        this.f14487f.setOnClickListener(new View.OnClickListener(this) { // from class: y4.j

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ AnimeSearchResultActivty f21241e;

            {
                this.f21241e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AnimeSearchResultActivty animeSearchResultActivty = this.f21241e;
                switch (i7) {
                    case 0:
                        String str = animeSearchResultActivty.f14500y;
                        if (str != null && !str.isEmpty() && str.length() >= 3) {
                            animeSearchResultActivty.f14493r.setVisibility(0);
                            animeSearchResultActivty.f14494s.addAll(App.getInstance().f14439r.searchGoAnime(str.replace("'", "")));
                            animeSearchResultActivty.f14493r.setVisibility(8);
                            if (animeSearchResultActivty.f14494s.size() < 1) {
                                animeSearchResultActivty.f14497v.setText("No anime found");
                                animeSearchResultActivty.f14497v.setVisibility(0);
                            } else {
                                animeSearchResultActivty.f14497v.setVisibility(8);
                            }
                            Collections.reverse(animeSearchResultActivty.f14494s);
                            animeSearchResultActivty.f14495t.getAdapter().notifyDataSetChanged();
                            animeSearchResultActivty.f14495t.invalidate();
                            animeSearchResultActivty.f14493r.setVisibility(8);
                            break;
                        } else if (str != null && str.length() < 3) {
                            Toast.makeText(animeSearchResultActivty, "enter at least 3 characters", 0).show();
                            break;
                        }
                        break;
                    case 1:
                        int i72 = AnimeSearchResultActivty.f14484z;
                        animeSearchResultActivty.onLetterClicked(StringUtils.SPACE);
                        break;
                    case 2:
                        animeSearchResultActivty.f14500y = AnimeSearchResultActivty.removeLastChar(animeSearchResultActivty.f14500y);
                        animeSearchResultActivty.e();
                        break;
                    default:
                        if (!animeSearchResultActivty.f14500y.isEmpty()) {
                            animeSearchResultActivty.f14500y = "";
                            animeSearchResultActivty.e();
                            break;
                        }
                        break;
                }
            }
        });
        final int i8 = 2;
        this.f14488j.setOnClickListener(new View.OnClickListener(this) { // from class: y4.j

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ AnimeSearchResultActivty f21241e;

            {
                this.f21241e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AnimeSearchResultActivty animeSearchResultActivty = this.f21241e;
                switch (i8) {
                    case 0:
                        String str = animeSearchResultActivty.f14500y;
                        if (str != null && !str.isEmpty() && str.length() >= 3) {
                            animeSearchResultActivty.f14493r.setVisibility(0);
                            animeSearchResultActivty.f14494s.addAll(App.getInstance().f14439r.searchGoAnime(str.replace("'", "")));
                            animeSearchResultActivty.f14493r.setVisibility(8);
                            if (animeSearchResultActivty.f14494s.size() < 1) {
                                animeSearchResultActivty.f14497v.setText("No anime found");
                                animeSearchResultActivty.f14497v.setVisibility(0);
                            } else {
                                animeSearchResultActivty.f14497v.setVisibility(8);
                            }
                            Collections.reverse(animeSearchResultActivty.f14494s);
                            animeSearchResultActivty.f14495t.getAdapter().notifyDataSetChanged();
                            animeSearchResultActivty.f14495t.invalidate();
                            animeSearchResultActivty.f14493r.setVisibility(8);
                            break;
                        } else if (str != null && str.length() < 3) {
                            Toast.makeText(animeSearchResultActivty, "enter at least 3 characters", 0).show();
                            break;
                        }
                        break;
                    case 1:
                        int i72 = AnimeSearchResultActivty.f14484z;
                        animeSearchResultActivty.onLetterClicked(StringUtils.SPACE);
                        break;
                    case 2:
                        animeSearchResultActivty.f14500y = AnimeSearchResultActivty.removeLastChar(animeSearchResultActivty.f14500y);
                        animeSearchResultActivty.e();
                        break;
                    default:
                        if (!animeSearchResultActivty.f14500y.isEmpty()) {
                            animeSearchResultActivty.f14500y = "";
                            animeSearchResultActivty.e();
                            break;
                        }
                        break;
                }
            }
        });
        final int i9 = 3;
        this.f14489m.setOnClickListener(new View.OnClickListener(this) { // from class: y4.j

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ AnimeSearchResultActivty f21241e;

            {
                this.f21241e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AnimeSearchResultActivty animeSearchResultActivty = this.f21241e;
                switch (i9) {
                    case 0:
                        String str = animeSearchResultActivty.f14500y;
                        if (str != null && !str.isEmpty() && str.length() >= 3) {
                            animeSearchResultActivty.f14493r.setVisibility(0);
                            animeSearchResultActivty.f14494s.addAll(App.getInstance().f14439r.searchGoAnime(str.replace("'", "")));
                            animeSearchResultActivty.f14493r.setVisibility(8);
                            if (animeSearchResultActivty.f14494s.size() < 1) {
                                animeSearchResultActivty.f14497v.setText("No anime found");
                                animeSearchResultActivty.f14497v.setVisibility(0);
                            } else {
                                animeSearchResultActivty.f14497v.setVisibility(8);
                            }
                            Collections.reverse(animeSearchResultActivty.f14494s);
                            animeSearchResultActivty.f14495t.getAdapter().notifyDataSetChanged();
                            animeSearchResultActivty.f14495t.invalidate();
                            animeSearchResultActivty.f14493r.setVisibility(8);
                            break;
                        } else if (str != null && str.length() < 3) {
                            Toast.makeText(animeSearchResultActivty, "enter at least 3 characters", 0).show();
                            break;
                        }
                        break;
                    case 1:
                        int i72 = AnimeSearchResultActivty.f14484z;
                        animeSearchResultActivty.onLetterClicked(StringUtils.SPACE);
                        break;
                    case 2:
                        animeSearchResultActivty.f14500y = AnimeSearchResultActivty.removeLastChar(animeSearchResultActivty.f14500y);
                        animeSearchResultActivty.e();
                        break;
                    default:
                        if (!animeSearchResultActivty.f14500y.isEmpty()) {
                            animeSearchResultActivty.f14500y = "";
                            animeSearchResultActivty.e();
                            break;
                        }
                        break;
                }
            }
        });
    }

    @Override // flix.com.vision.activities.base.a, e.AbstractActivityC0842v, androidx.fragment.app.H, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // U4.i
    public void onLetterClicked(String str) {
        this.f14500y = A.i.o(new StringBuilder(), this.f14500y, str);
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

    @Override // U4.d
    public void openAnime(Anime anime) {
        Intent intent = new Intent(this, (Class<?>) AnimeDetailActivity.class);
        intent.putExtra("anime", anime);
        intent.setFlags(268435456);
        startActivity(intent);
    }
}

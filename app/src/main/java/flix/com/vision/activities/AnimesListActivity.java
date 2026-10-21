package flix.com.vision.activities;

import C4.C0087k;
import S4.o;
import T4.k;
import U4.d;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Bundle;
import android.os.Handler;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.media3.exoplayer.ExoPlayer;
import com.malinskiy.superrecyclerview.SuperRecyclerView;
import com.uwetrottmann.trakt5.TraktV2;
import cz.msebera.android.httpclient.HttpStatus;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.AnimeHistoryActivity;
import flix.com.vision.activities.AnimeSearchResultActivty;
import flix.com.vision.activities.AnimesFavoritesAcvivity;
import flix.com.vision.activities.AnimesListActivity;
import flix.com.vision.helpers.CenterGridLayoutManager;
import flix.com.vision.materialsearchview.MaterialSearchView;
import flix.com.vision.models.Anime;
import java.util.ArrayList;
import y4.C1913l;
import y4.C1917n;
import y4.C1923q;
import y4.RunnableC1919o;
import y4.r;

/* loaded from: classes2.dex */
public class AnimesListActivity extends flix.com.vision.activities.base.a implements d {

    /* renamed from: E, reason: collision with root package name */
    public static final /* synthetic */ int f14504E = 0;

    /* renamed from: A, reason: collision with root package name */
    public ArrayList f14505A;

    /* renamed from: B, reason: collision with root package name */
    public C0087k f14506B;

    /* renamed from: C, reason: collision with root package name */
    public SuperRecyclerView f14507C;

    /* renamed from: b, reason: collision with root package name */
    public MaterialSearchView f14509b;

    /* renamed from: e, reason: collision with root package name */
    public RelativeLayout f14510e;

    /* renamed from: f, reason: collision with root package name */
    public RelativeLayout f14511f;

    /* renamed from: j, reason: collision with root package name */
    public RelativeLayout f14512j;

    /* renamed from: m, reason: collision with root package name */
    public RelativeLayout f14513m;

    /* renamed from: n, reason: collision with root package name */
    public TextView f14514n;

    /* renamed from: p, reason: collision with root package name */
    public TextView f14515p;

    /* renamed from: q, reason: collision with root package name */
    public TextView f14516q;

    /* renamed from: r, reason: collision with root package name */
    public TextView f14517r;

    /* renamed from: s, reason: collision with root package name */
    public ImageView f14518s;

    /* renamed from: t, reason: collision with root package name */
    public ImageView f14519t;

    /* renamed from: u, reason: collision with root package name */
    public ImageView f14520u;

    /* renamed from: v, reason: collision with root package name */
    public ImageView f14521v;

    /* renamed from: y, reason: collision with root package name */
    public RelativeLayout f14524y;

    /* renamed from: w, reason: collision with root package name */
    public int f14522w = 0;

    /* renamed from: x, reason: collision with root package name */
    public final int f14523x = HttpStatus.SC_OK;

    /* renamed from: z, reason: collision with root package name */
    public final String f14525z = "";

    /* renamed from: D, reason: collision with root package name */
    public boolean f14508D = false;

    public void ExtractDominentColor() {
        ValueAnimator ofObject = ValueAnimator.ofObject(new ArgbEvaluator(), 0, 2505092);
        ofObject.setDuration(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        ofObject.addUpdateListener(new A3.a(this, 9));
        ofObject.addListener(new r());
        ofObject.start();
    }

    public void applyFilter() {
        recreate();
    }

    public final void e(int i2) {
        String string = App.getInstance().f14440s.getString("server_anime", "1");
        String string2 = App.getInstance().f14440s.getString("genre_anime", "");
        String string3 = App.getInstance().f14440s.getString("year_anime", "");
        String string4 = App.getInstance().f14440s.getString("type_anime", "");
        String string5 = App.getInstance().f14440s.getString("lang_anime", "");
        if (string2.equals("All")) {
            string2 = "";
        }
        string4.equals("All");
        if (string3.equals("All")) {
            string3 = "";
        }
        if (string5.equals("All")) {
            string5 = "";
        }
        this.f14505A.addAll(App.getInstance().f14439r.getGoAnime(string2, string3, string.equals(TraktV2.API_VERSION) ? "" : string5, i2));
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    @SuppressLint({"MissingSuperCall"})
    public void onBackPressed() {
        if (this.f14508D) {
            this.f14508D = false;
            finish();
            return;
        }
        Toast.makeText(getBaseContext(), "Press again to Exit", 0).show();
        if (this.f14505A.size() < 200) {
            this.f14507C.getRecyclerView().smoothScrollToPosition(0);
        } else {
            this.f14507C.getRecyclerView().scrollToPosition(0);
        }
        this.f14508D = true;
        new Handler().postDelayed(new RunnableC1919o(this, 1), 1600L);
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(App.f14424I ? R.layout.activity_animes_list : R.layout.activity_animes_list_light);
        this.f14524y = (RelativeLayout) findViewById(R.id.activity_player);
        MaterialSearchView materialSearchView = (MaterialSearchView) findViewById(R.id.search_view);
        this.f14509b = materialSearchView;
        if (materialSearchView != null) {
            materialSearchView.setShouldKeepHistory(false);
            this.f14509b.setTintAlpha(1);
            this.f14509b.setOnQueryTextListener(new C1923q(this));
            this.f14509b.setOnItemClickListener(new C1913l(this, 0));
        }
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        if (toolbar != null) {
            setSupportActionBar(toolbar);
            getSupportActionBar().setTitle(getString(R.string.anime_label));
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }
        this.f14521v = (ImageView) findViewById(R.id.filter_anime_button_imageview);
        this.f14520u = (ImageView) findViewById(R.id.search_anime_button_imageview);
        this.f14519t = (ImageView) findViewById(R.id.progress_anime_button_image);
        this.f14518s = (ImageView) findViewById(R.id.anime_fav_textview_button_imageview);
        this.f14517r = (TextView) findViewById(R.id.anime_fav_textview);
        this.f14516q = (TextView) findViewById(R.id.progress_anime_textview);
        this.f14514n = (TextView) findViewById(R.id.filter_anime__textview);
        this.f14515p = (TextView) findViewById(R.id.search_anime__textview);
        this.f14513m = (RelativeLayout) findViewById(R.id.filter_anime_button);
        this.f14512j = (RelativeLayout) findViewById(R.id.search_anime_button);
        this.f14511f = (RelativeLayout) findViewById(R.id.anime_history_button);
        this.f14510e = (RelativeLayout) findViewById(R.id.anime_favorites);
        this.f14507C = (SuperRecyclerView) findViewById(R.id.recyclerview);
        if (this.f14513m != null) {
            final int i2 = 0;
            this.f14512j.setOnClickListener(new View.OnClickListener(this) { // from class: y4.p

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ AnimesListActivity f21272e;

                {
                    this.f21272e = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AnimesListActivity animesListActivity = this.f21272e;
                    switch (i2) {
                        case 0:
                            int i7 = AnimesListActivity.f14504E;
                            animesListActivity.getClass();
                            animesListActivity.startActivity(new Intent(animesListActivity, (Class<?>) AnimeSearchResultActivty.class));
                            break;
                        case 1:
                            int i8 = AnimesListActivity.f14504E;
                            animesListActivity.getClass();
                            animesListActivity.startActivity(new Intent(animesListActivity, (Class<?>) AnimesFavoritesAcvivity.class));
                            break;
                        case 2:
                            int i9 = AnimesListActivity.f14504E;
                            animesListActivity.getClass();
                            animesListActivity.startActivity(new Intent(animesListActivity, (Class<?>) AnimeHistoryActivity.class));
                            break;
                        default:
                            int i10 = AnimesListActivity.f14504E;
                            try {
                                S4.o.newInstance(false, animesListActivity).show(animesListActivity.getFragmentManager(), "");
                                break;
                            } catch (Exception e3) {
                                e3.printStackTrace();
                            }
                    }
                }
            });
            final int i7 = 1;
            this.f14510e.setOnClickListener(new View.OnClickListener(this) { // from class: y4.p

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ AnimesListActivity f21272e;

                {
                    this.f21272e = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AnimesListActivity animesListActivity = this.f21272e;
                    switch (i7) {
                        case 0:
                            int i72 = AnimesListActivity.f14504E;
                            animesListActivity.getClass();
                            animesListActivity.startActivity(new Intent(animesListActivity, (Class<?>) AnimeSearchResultActivty.class));
                            break;
                        case 1:
                            int i8 = AnimesListActivity.f14504E;
                            animesListActivity.getClass();
                            animesListActivity.startActivity(new Intent(animesListActivity, (Class<?>) AnimesFavoritesAcvivity.class));
                            break;
                        case 2:
                            int i9 = AnimesListActivity.f14504E;
                            animesListActivity.getClass();
                            animesListActivity.startActivity(new Intent(animesListActivity, (Class<?>) AnimeHistoryActivity.class));
                            break;
                        default:
                            int i10 = AnimesListActivity.f14504E;
                            try {
                                S4.o.newInstance(false, animesListActivity).show(animesListActivity.getFragmentManager(), "");
                                break;
                            } catch (Exception e3) {
                                e3.printStackTrace();
                            }
                    }
                }
            });
            final int i8 = 2;
            this.f14511f.setOnClickListener(new View.OnClickListener(this) { // from class: y4.p

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ AnimesListActivity f21272e;

                {
                    this.f21272e = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AnimesListActivity animesListActivity = this.f21272e;
                    switch (i8) {
                        case 0:
                            int i72 = AnimesListActivity.f14504E;
                            animesListActivity.getClass();
                            animesListActivity.startActivity(new Intent(animesListActivity, (Class<?>) AnimeSearchResultActivty.class));
                            break;
                        case 1:
                            int i82 = AnimesListActivity.f14504E;
                            animesListActivity.getClass();
                            animesListActivity.startActivity(new Intent(animesListActivity, (Class<?>) AnimesFavoritesAcvivity.class));
                            break;
                        case 2:
                            int i9 = AnimesListActivity.f14504E;
                            animesListActivity.getClass();
                            animesListActivity.startActivity(new Intent(animesListActivity, (Class<?>) AnimeHistoryActivity.class));
                            break;
                        default:
                            int i10 = AnimesListActivity.f14504E;
                            try {
                                S4.o.newInstance(false, animesListActivity).show(animesListActivity.getFragmentManager(), "");
                                break;
                            } catch (Exception e3) {
                                e3.printStackTrace();
                            }
                    }
                }
            });
            final int i9 = 3;
            this.f14513m.setOnClickListener(new View.OnClickListener(this) { // from class: y4.p

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ AnimesListActivity f21272e;

                {
                    this.f21272e = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AnimesListActivity animesListActivity = this.f21272e;
                    switch (i9) {
                        case 0:
                            int i72 = AnimesListActivity.f14504E;
                            animesListActivity.getClass();
                            animesListActivity.startActivity(new Intent(animesListActivity, (Class<?>) AnimeSearchResultActivty.class));
                            break;
                        case 1:
                            int i82 = AnimesListActivity.f14504E;
                            animesListActivity.getClass();
                            animesListActivity.startActivity(new Intent(animesListActivity, (Class<?>) AnimesFavoritesAcvivity.class));
                            break;
                        case 2:
                            int i92 = AnimesListActivity.f14504E;
                            animesListActivity.getClass();
                            animesListActivity.startActivity(new Intent(animesListActivity, (Class<?>) AnimeHistoryActivity.class));
                            break;
                        default:
                            int i10 = AnimesListActivity.f14504E;
                            try {
                                S4.o.newInstance(false, animesListActivity).show(animesListActivity.getFragmentManager(), "");
                                break;
                            } catch (Exception e3) {
                                e3.printStackTrace();
                            }
                    }
                }
            });
        }
        RelativeLayout relativeLayout = this.f14513m;
        if (relativeLayout != null) {
            final int i10 = 3;
            relativeLayout.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: y4.m

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ AnimesListActivity f21258e;

                {
                    this.f21258e = this;
                }

                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view, boolean z6) {
                    switch (i10) {
                        case 0:
                            AnimesListActivity animesListActivity = this.f21258e;
                            if (!z6) {
                                animesListActivity.f14518s.setColorFilter(new PorterDuffColorFilter(A.h.getColor(animesListActivity, R.color.white), PorterDuff.Mode.SRC_IN));
                                animesListActivity.f14517r.setTextColor(animesListActivity.getResources().getColor(R.color.white));
                                animesListActivity.f14510e.animate().scaleX(1.0f).start();
                                animesListActivity.f14510e.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                animesListActivity.f14518s.setColorFilter(new PorterDuffColorFilter(A.h.getColor(animesListActivity, R.color.black), PorterDuff.Mode.SRC_IN));
                                animesListActivity.f14517r.setTextColor(animesListActivity.getResources().getColor(R.color.black));
                                b.c.r(animesListActivity.f14510e, 100L, 1.03f);
                                b.c.w(animesListActivity.f14510e, 100L, 1.03f);
                                break;
                            }
                        case 1:
                            AnimesListActivity animesListActivity2 = this.f21258e;
                            if (!z6) {
                                animesListActivity2.f14519t.setColorFilter(new PorterDuffColorFilter(A.h.getColor(animesListActivity2, R.color.white), PorterDuff.Mode.SRC_IN));
                                animesListActivity2.f14516q.setTextColor(animesListActivity2.getResources().getColor(R.color.white));
                                animesListActivity2.f14511f.animate().scaleX(1.0f).start();
                                animesListActivity2.f14511f.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                animesListActivity2.f14519t.setColorFilter(new PorterDuffColorFilter(A.h.getColor(animesListActivity2, R.color.black), PorterDuff.Mode.SRC_IN));
                                animesListActivity2.f14516q.setTextColor(animesListActivity2.getResources().getColor(R.color.black));
                                b.c.r(animesListActivity2.f14511f, 100L, 1.03f);
                                b.c.w(animesListActivity2.f14511f, 100L, 1.03f);
                                break;
                            }
                        case 2:
                            AnimesListActivity animesListActivity3 = this.f21258e;
                            if (!z6) {
                                animesListActivity3.f14520u.setColorFilter(new PorterDuffColorFilter(A.h.getColor(animesListActivity3, R.color.white), PorterDuff.Mode.SRC_IN));
                                animesListActivity3.f14515p.setTextColor(animesListActivity3.getResources().getColor(R.color.white));
                                animesListActivity3.f14512j.animate().scaleX(1.0f).start();
                                animesListActivity3.f14512j.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                animesListActivity3.f14520u.setColorFilter(new PorterDuffColorFilter(A.h.getColor(animesListActivity3, R.color.black), PorterDuff.Mode.SRC_IN));
                                animesListActivity3.f14515p.setTextColor(animesListActivity3.getResources().getColor(R.color.black));
                                b.c.r(animesListActivity3.f14512j, 100L, 1.03f);
                                b.c.w(animesListActivity3.f14512j, 100L, 1.03f);
                                break;
                            }
                        default:
                            AnimesListActivity animesListActivity4 = this.f21258e;
                            if (!z6) {
                                animesListActivity4.f14521v.setColorFilter(new PorterDuffColorFilter(A.h.getColor(animesListActivity4, R.color.white), PorterDuff.Mode.SRC_IN));
                                animesListActivity4.f14514n.setTextColor(animesListActivity4.getResources().getColor(R.color.white));
                                animesListActivity4.f14513m.animate().scaleX(1.0f).start();
                                animesListActivity4.f14513m.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                animesListActivity4.f14521v.setColorFilter(new PorterDuffColorFilter(A.h.getColor(animesListActivity4, R.color.black), PorterDuff.Mode.SRC_IN));
                                animesListActivity4.f14514n.setTextColor(animesListActivity4.getResources().getColor(R.color.black));
                                b.c.r(animesListActivity4.f14513m, 100L, 1.03f);
                                b.c.w(animesListActivity4.f14513m, 100L, 1.03f);
                                break;
                            }
                    }
                }
            });
        }
        RelativeLayout relativeLayout2 = this.f14510e;
        if (relativeLayout2 != null) {
            final int i11 = 0;
            relativeLayout2.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: y4.m

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ AnimesListActivity f21258e;

                {
                    this.f21258e = this;
                }

                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view, boolean z6) {
                    switch (i11) {
                        case 0:
                            AnimesListActivity animesListActivity = this.f21258e;
                            if (!z6) {
                                animesListActivity.f14518s.setColorFilter(new PorterDuffColorFilter(A.h.getColor(animesListActivity, R.color.white), PorterDuff.Mode.SRC_IN));
                                animesListActivity.f14517r.setTextColor(animesListActivity.getResources().getColor(R.color.white));
                                animesListActivity.f14510e.animate().scaleX(1.0f).start();
                                animesListActivity.f14510e.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                animesListActivity.f14518s.setColorFilter(new PorterDuffColorFilter(A.h.getColor(animesListActivity, R.color.black), PorterDuff.Mode.SRC_IN));
                                animesListActivity.f14517r.setTextColor(animesListActivity.getResources().getColor(R.color.black));
                                b.c.r(animesListActivity.f14510e, 100L, 1.03f);
                                b.c.w(animesListActivity.f14510e, 100L, 1.03f);
                                break;
                            }
                        case 1:
                            AnimesListActivity animesListActivity2 = this.f21258e;
                            if (!z6) {
                                animesListActivity2.f14519t.setColorFilter(new PorterDuffColorFilter(A.h.getColor(animesListActivity2, R.color.white), PorterDuff.Mode.SRC_IN));
                                animesListActivity2.f14516q.setTextColor(animesListActivity2.getResources().getColor(R.color.white));
                                animesListActivity2.f14511f.animate().scaleX(1.0f).start();
                                animesListActivity2.f14511f.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                animesListActivity2.f14519t.setColorFilter(new PorterDuffColorFilter(A.h.getColor(animesListActivity2, R.color.black), PorterDuff.Mode.SRC_IN));
                                animesListActivity2.f14516q.setTextColor(animesListActivity2.getResources().getColor(R.color.black));
                                b.c.r(animesListActivity2.f14511f, 100L, 1.03f);
                                b.c.w(animesListActivity2.f14511f, 100L, 1.03f);
                                break;
                            }
                        case 2:
                            AnimesListActivity animesListActivity3 = this.f21258e;
                            if (!z6) {
                                animesListActivity3.f14520u.setColorFilter(new PorterDuffColorFilter(A.h.getColor(animesListActivity3, R.color.white), PorterDuff.Mode.SRC_IN));
                                animesListActivity3.f14515p.setTextColor(animesListActivity3.getResources().getColor(R.color.white));
                                animesListActivity3.f14512j.animate().scaleX(1.0f).start();
                                animesListActivity3.f14512j.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                animesListActivity3.f14520u.setColorFilter(new PorterDuffColorFilter(A.h.getColor(animesListActivity3, R.color.black), PorterDuff.Mode.SRC_IN));
                                animesListActivity3.f14515p.setTextColor(animesListActivity3.getResources().getColor(R.color.black));
                                b.c.r(animesListActivity3.f14512j, 100L, 1.03f);
                                b.c.w(animesListActivity3.f14512j, 100L, 1.03f);
                                break;
                            }
                        default:
                            AnimesListActivity animesListActivity4 = this.f21258e;
                            if (!z6) {
                                animesListActivity4.f14521v.setColorFilter(new PorterDuffColorFilter(A.h.getColor(animesListActivity4, R.color.white), PorterDuff.Mode.SRC_IN));
                                animesListActivity4.f14514n.setTextColor(animesListActivity4.getResources().getColor(R.color.white));
                                animesListActivity4.f14513m.animate().scaleX(1.0f).start();
                                animesListActivity4.f14513m.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                animesListActivity4.f14521v.setColorFilter(new PorterDuffColorFilter(A.h.getColor(animesListActivity4, R.color.black), PorterDuff.Mode.SRC_IN));
                                animesListActivity4.f14514n.setTextColor(animesListActivity4.getResources().getColor(R.color.black));
                                b.c.r(animesListActivity4.f14513m, 100L, 1.03f);
                                b.c.w(animesListActivity4.f14513m, 100L, 1.03f);
                                break;
                            }
                    }
                }
            });
        }
        RelativeLayout relativeLayout3 = this.f14511f;
        if (relativeLayout3 != null) {
            final int i12 = 1;
            relativeLayout3.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: y4.m

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ AnimesListActivity f21258e;

                {
                    this.f21258e = this;
                }

                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view, boolean z6) {
                    switch (i12) {
                        case 0:
                            AnimesListActivity animesListActivity = this.f21258e;
                            if (!z6) {
                                animesListActivity.f14518s.setColorFilter(new PorterDuffColorFilter(A.h.getColor(animesListActivity, R.color.white), PorterDuff.Mode.SRC_IN));
                                animesListActivity.f14517r.setTextColor(animesListActivity.getResources().getColor(R.color.white));
                                animesListActivity.f14510e.animate().scaleX(1.0f).start();
                                animesListActivity.f14510e.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                animesListActivity.f14518s.setColorFilter(new PorterDuffColorFilter(A.h.getColor(animesListActivity, R.color.black), PorterDuff.Mode.SRC_IN));
                                animesListActivity.f14517r.setTextColor(animesListActivity.getResources().getColor(R.color.black));
                                b.c.r(animesListActivity.f14510e, 100L, 1.03f);
                                b.c.w(animesListActivity.f14510e, 100L, 1.03f);
                                break;
                            }
                        case 1:
                            AnimesListActivity animesListActivity2 = this.f21258e;
                            if (!z6) {
                                animesListActivity2.f14519t.setColorFilter(new PorterDuffColorFilter(A.h.getColor(animesListActivity2, R.color.white), PorterDuff.Mode.SRC_IN));
                                animesListActivity2.f14516q.setTextColor(animesListActivity2.getResources().getColor(R.color.white));
                                animesListActivity2.f14511f.animate().scaleX(1.0f).start();
                                animesListActivity2.f14511f.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                animesListActivity2.f14519t.setColorFilter(new PorterDuffColorFilter(A.h.getColor(animesListActivity2, R.color.black), PorterDuff.Mode.SRC_IN));
                                animesListActivity2.f14516q.setTextColor(animesListActivity2.getResources().getColor(R.color.black));
                                b.c.r(animesListActivity2.f14511f, 100L, 1.03f);
                                b.c.w(animesListActivity2.f14511f, 100L, 1.03f);
                                break;
                            }
                        case 2:
                            AnimesListActivity animesListActivity3 = this.f21258e;
                            if (!z6) {
                                animesListActivity3.f14520u.setColorFilter(new PorterDuffColorFilter(A.h.getColor(animesListActivity3, R.color.white), PorterDuff.Mode.SRC_IN));
                                animesListActivity3.f14515p.setTextColor(animesListActivity3.getResources().getColor(R.color.white));
                                animesListActivity3.f14512j.animate().scaleX(1.0f).start();
                                animesListActivity3.f14512j.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                animesListActivity3.f14520u.setColorFilter(new PorterDuffColorFilter(A.h.getColor(animesListActivity3, R.color.black), PorterDuff.Mode.SRC_IN));
                                animesListActivity3.f14515p.setTextColor(animesListActivity3.getResources().getColor(R.color.black));
                                b.c.r(animesListActivity3.f14512j, 100L, 1.03f);
                                b.c.w(animesListActivity3.f14512j, 100L, 1.03f);
                                break;
                            }
                        default:
                            AnimesListActivity animesListActivity4 = this.f21258e;
                            if (!z6) {
                                animesListActivity4.f14521v.setColorFilter(new PorterDuffColorFilter(A.h.getColor(animesListActivity4, R.color.white), PorterDuff.Mode.SRC_IN));
                                animesListActivity4.f14514n.setTextColor(animesListActivity4.getResources().getColor(R.color.white));
                                animesListActivity4.f14513m.animate().scaleX(1.0f).start();
                                animesListActivity4.f14513m.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                animesListActivity4.f14521v.setColorFilter(new PorterDuffColorFilter(A.h.getColor(animesListActivity4, R.color.black), PorterDuff.Mode.SRC_IN));
                                animesListActivity4.f14514n.setTextColor(animesListActivity4.getResources().getColor(R.color.black));
                                b.c.r(animesListActivity4.f14513m, 100L, 1.03f);
                                b.c.w(animesListActivity4.f14513m, 100L, 1.03f);
                                break;
                            }
                    }
                }
            });
        }
        RelativeLayout relativeLayout4 = this.f14512j;
        if (relativeLayout4 != null) {
            final int i13 = 2;
            relativeLayout4.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: y4.m

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ AnimesListActivity f21258e;

                {
                    this.f21258e = this;
                }

                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view, boolean z6) {
                    switch (i13) {
                        case 0:
                            AnimesListActivity animesListActivity = this.f21258e;
                            if (!z6) {
                                animesListActivity.f14518s.setColorFilter(new PorterDuffColorFilter(A.h.getColor(animesListActivity, R.color.white), PorterDuff.Mode.SRC_IN));
                                animesListActivity.f14517r.setTextColor(animesListActivity.getResources().getColor(R.color.white));
                                animesListActivity.f14510e.animate().scaleX(1.0f).start();
                                animesListActivity.f14510e.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                animesListActivity.f14518s.setColorFilter(new PorterDuffColorFilter(A.h.getColor(animesListActivity, R.color.black), PorterDuff.Mode.SRC_IN));
                                animesListActivity.f14517r.setTextColor(animesListActivity.getResources().getColor(R.color.black));
                                b.c.r(animesListActivity.f14510e, 100L, 1.03f);
                                b.c.w(animesListActivity.f14510e, 100L, 1.03f);
                                break;
                            }
                        case 1:
                            AnimesListActivity animesListActivity2 = this.f21258e;
                            if (!z6) {
                                animesListActivity2.f14519t.setColorFilter(new PorterDuffColorFilter(A.h.getColor(animesListActivity2, R.color.white), PorterDuff.Mode.SRC_IN));
                                animesListActivity2.f14516q.setTextColor(animesListActivity2.getResources().getColor(R.color.white));
                                animesListActivity2.f14511f.animate().scaleX(1.0f).start();
                                animesListActivity2.f14511f.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                animesListActivity2.f14519t.setColorFilter(new PorterDuffColorFilter(A.h.getColor(animesListActivity2, R.color.black), PorterDuff.Mode.SRC_IN));
                                animesListActivity2.f14516q.setTextColor(animesListActivity2.getResources().getColor(R.color.black));
                                b.c.r(animesListActivity2.f14511f, 100L, 1.03f);
                                b.c.w(animesListActivity2.f14511f, 100L, 1.03f);
                                break;
                            }
                        case 2:
                            AnimesListActivity animesListActivity3 = this.f21258e;
                            if (!z6) {
                                animesListActivity3.f14520u.setColorFilter(new PorterDuffColorFilter(A.h.getColor(animesListActivity3, R.color.white), PorterDuff.Mode.SRC_IN));
                                animesListActivity3.f14515p.setTextColor(animesListActivity3.getResources().getColor(R.color.white));
                                animesListActivity3.f14512j.animate().scaleX(1.0f).start();
                                animesListActivity3.f14512j.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                animesListActivity3.f14520u.setColorFilter(new PorterDuffColorFilter(A.h.getColor(animesListActivity3, R.color.black), PorterDuff.Mode.SRC_IN));
                                animesListActivity3.f14515p.setTextColor(animesListActivity3.getResources().getColor(R.color.black));
                                b.c.r(animesListActivity3.f14512j, 100L, 1.03f);
                                b.c.w(animesListActivity3.f14512j, 100L, 1.03f);
                                break;
                            }
                        default:
                            AnimesListActivity animesListActivity4 = this.f21258e;
                            if (!z6) {
                                animesListActivity4.f14521v.setColorFilter(new PorterDuffColorFilter(A.h.getColor(animesListActivity4, R.color.white), PorterDuff.Mode.SRC_IN));
                                animesListActivity4.f14514n.setTextColor(animesListActivity4.getResources().getColor(R.color.white));
                                animesListActivity4.f14513m.animate().scaleX(1.0f).start();
                                animesListActivity4.f14513m.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                animesListActivity4.f14521v.setColorFilter(new PorterDuffColorFilter(A.h.getColor(animesListActivity4, R.color.black), PorterDuff.Mode.SRC_IN));
                                animesListActivity4.f14514n.setTextColor(animesListActivity4.getResources().getColor(R.color.black));
                                b.c.r(animesListActivity4.f14513m, 100L, 1.03f);
                                b.c.w(animesListActivity4.f14513m, 100L, 1.03f);
                                break;
                            }
                    }
                }
            });
        }
        this.f14507C.setRefreshListener(new C1917n(this));
        this.f14505A = new ArrayList();
        this.f14506B = new C0087k(getBaseContext(), this.f14505A, this, this.f14523x, this);
        this.f14507C.setLayoutManager(new CenterGridLayoutManager(this, Math.round((b.c.d(getWindowManager().getDefaultDisplay()).widthPixels / getResources().getDisplayMetrics().density) / 140)));
        this.f14507C.addItemDecoration(new k(12));
        this.f14507C.setAdapter(this.f14506B);
        this.f14507C.setupMoreListener(new C1917n(this), 10);
        this.f14507C.requestFocus();
        e(this.f14522w);
        new Handler().postDelayed(new RunnableC1919o(this, 0), 800L);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.anime_menu, menu);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.action_search) {
            this.f14509b.openSearch();
        } else if (itemId == R.id.action_filter) {
            try {
                o.newInstance(false, this).show(getFragmentManager(), "");
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        } else if (itemId == 16908332) {
            finish();
        } else if (itemId == R.id.action_favorites_anime) {
            startActivity(new Intent(this, (Class<?>) AnimesFavoritesAcvivity.class));
        } else if (itemId == R.id.action_history_anime) {
            startActivity(new Intent(this, (Class<?>) AnimeHistoryActivity.class));
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // U4.d
    public void openAnime(Anime anime) {
        Intent intent = new Intent(this, (Class<?>) AnimeDetailActivity.class);
        String str = anime.title;
        if (str.toLowerCase().contains("(dub)")) {
            str = str.toLowerCase().replace("(dub)", "").trim();
        }
        if (str.toLowerCase().contains("(sub)")) {
            str = str.toLowerCase().replace("(sub)", "").trim();
        }
        if (str.toLowerCase().endsWith(")")) {
            String substring = str.substring(str.length() - 6);
            str.replace(substring, "").getClass();
            anime.year = substring.replace("(", "").replace(")", "");
        }
        String str2 = anime.year;
        if (str2 != null && str2.length() == 4) {
            anime.title = anime.title.replace("(" + anime.year + ")", "");
        }
        intent.putExtra("anime", anime);
        intent.setFlags(268435456);
        startActivity(intent);
    }
}

package C4;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.MainActivity;
import flix.com.vision.activities.MovieDetailActivityLeanBack;
import flix.com.vision.activities.SearchResultsActivity;
import flix.com.vision.tv.ChannelsListActivityLegacy;
import flix.com.vision.tv.TVCategoriesActivity;
import m1.B0;

/* renamed from: C4.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class ViewOnFocusChangeListenerC0078b implements View.OnFocusChangeListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f639b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ m1.V f640e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ B0 f641f;

    public /* synthetic */ ViewOnFocusChangeListenerC0078b(m1.V v6, B0 b02, int i2) {
        this.f639b = i2;
        this.f640e = v6;
        this.f641f = b02;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z6) {
        switch (this.f639b) {
            case 0:
                C0080d c0080d = (C0080d) this.f640e;
                c0080d.getClass();
                C0079c c0079c = (C0079c) this.f641f;
                if (!z6) {
                    if (App.getInstance().f14440s.getBoolean("pref_adult_zone_animate", false)) {
                        b.c.e(view, 0.0f, 0.0f, 0.0f, 1.0f).scaleY(1.0f).start();
                    }
                    c0079c.f647v.setBackground(null);
                    break;
                } else {
                    if (App.getInstance().f14440s.getBoolean("pref_adult_zone_animate", false)) {
                        b.c.e(view, 20.0f, 20.0f, 20.0f, 1.1f).scaleY(1.1f).start();
                    }
                    c0079c.f647v.setBackground(c0080d.f657g.getResources().getDrawable(R.drawable.season_item_border_selected));
                    break;
                }
            case 1:
                C0084h c0084h = (C0084h) this.f640e;
                c0084h.getClass();
                C0083g c0083g = (C0083g) this.f641f;
                if (!z6) {
                    if (App.getInstance().f14440s.getBoolean("pref_adult_zone_animate", true)) {
                        b.c.e(view, 0.0f, 0.0f, 0.0f, 1.0f).scaleY(1.0f).start();
                    }
                    c0083g.f677v.setBackground(null);
                    break;
                } else {
                    if (App.getInstance().f14440s.getBoolean("pref_adult_zone_animate", true)) {
                        b.c.e(view, 20.0f, 20.0f, 20.0f, 1.1f).scaleY(1.1f).start();
                    }
                    c0083g.f677v.setBackground(c0084h.f688e.getResources().getDrawable(R.drawable.season_item_border_selected));
                    break;
                }
            case 2:
                C0087k c0087k = (C0087k) this.f640e;
                c0087k.getClass();
                C0086j c0086j = (C0086j) this.f641f;
                if (!z6) {
                    b.c.e(view, 0.0f, 0.0f, 0.0f, 1.0f).scaleY(1.0f).start();
                    c0086j.f704v.setBackground(null);
                    c0086j.f704v.setBackground(null);
                    TextView textView = c0086j.f706x;
                    textView.setHorizontalFadingEdgeEnabled(false);
                    textView.setEllipsize(TextUtils.TruncateAt.END);
                    textView.setMarqueeRepeatLimit(6);
                    textView.setFocusableInTouchMode(false);
                    textView.setHorizontallyScrolling(false);
                    textView.setSelected(false);
                    break;
                } else {
                    b.c.e(view, 20.0f, 20.0f, 20.0f, 1.1f).scaleY(1.1f).start();
                    c0086j.f704v.setBackground(c0087k.f717g.getResources().getDrawable(R.drawable.rounded_border_poster));
                    TextView textView2 = c0086j.f706x;
                    textView2.setHorizontalFadingEdgeEnabled(true);
                    textView2.setFocusable(true);
                    textView2.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                    textView2.setMarqueeRepeatLimit(6);
                    textView2.setFocusableInTouchMode(true);
                    textView2.setHorizontallyScrolling(true);
                    textView2.setSelected(true);
                    break;
                }
            case 3:
                C0096u c0096u = (C0096u) this.f640e;
                c0096u.getClass();
                C0095t c0095t = (C0095t) this.f641f;
                if (!z6) {
                    view.animate().scaleX(1.0f).scaleY(1.0f).setDuration(200L).start();
                    c0095t.f18217a.setElevation(0.0f);
                    c0095t.f775w.setSelected(false);
                    break;
                } else {
                    view.animate().scaleX(1.15f).scaleY(1.15f).setDuration(200L).start();
                    c0095t.f18217a.setElevation(10.0f);
                    c0095t.f775w.setSelected(true);
                    Context context = c0096u.f778e;
                    if (context instanceof ChannelsListActivityLegacy) {
                        ((ChannelsListActivityLegacy) context).ToastChannel(c0095t.f773u.label);
                        break;
                    }
                }
                break;
            case 4:
                Activity activity = ((C0098w) this.f640e).f789f;
                C0097v c0097v = (C0097v) this.f641f;
                if (!z6) {
                    b.c.e(view, 0.0f, 0.0f, 0.0f, 1.0f).scaleY(1.0f).start();
                    c0097v.f784w.setBackgroundColor(activity.getResources().getColor(R.color.transparent));
                    c0097v.f785x.setAlpha(1.0f);
                    break;
                } else {
                    b.c.e(view, 20.0f, 20.0f, 20.0f, 1.1f).scaleY(1.1f).start();
                    c0097v.f784w.setBackgroundColor(activity.getResources().getColor(R.color.colorAccent));
                    c0097v.f785x.setAlpha(0.8f);
                    break;
                }
            case 5:
                C0101z c0101z = (C0101z) this.f640e;
                c0101z.getClass();
                C0100y c0100y = (C0100y) this.f641f;
                if (!z6) {
                    c0100y.f796v.setBackground(null);
                    c0100y.f796v.setBackground(null);
                    TextView textView3 = c0100y.f798x;
                    textView3.setHorizontalFadingEdgeEnabled(false);
                    textView3.setEllipsize(TextUtils.TruncateAt.END);
                    textView3.setMarqueeRepeatLimit(6);
                    textView3.setFocusableInTouchMode(false);
                    textView3.setHorizontallyScrolling(false);
                    textView3.setSelected(false);
                    break;
                } else {
                    c0100y.f796v.setBackground(c0101z.f802e.getResources().getDrawable(R.drawable.rounded_border_poster));
                    TextView textView4 = c0100y.f798x;
                    textView4.setHorizontalFadingEdgeEnabled(true);
                    textView4.setFocusable(true);
                    textView4.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                    textView4.setMarqueeRepeatLimit(6);
                    textView4.setFocusableInTouchMode(true);
                    textView4.setHorizontallyScrolling(true);
                    textView4.setSelected(true);
                    break;
                }
            case 6:
                B b7 = (B) this.f640e;
                b7.getClass();
                A a7 = (A) this.f641f;
                if (!z6) {
                    a7.f529v.setBackground(null);
                    a7.f529v.setBackground(null);
                    TextView textView5 = a7.f531x;
                    textView5.setHorizontalFadingEdgeEnabled(false);
                    textView5.setEllipsize(TextUtils.TruncateAt.END);
                    textView5.setMarqueeRepeatLimit(6);
                    textView5.setFocusableInTouchMode(false);
                    textView5.setHorizontallyScrolling(false);
                    textView5.setSelected(false);
                    break;
                } else {
                    a7.f529v.setBackground(b7.f535e.getResources().getDrawable(R.drawable.rounded_border_poster));
                    TextView textView6 = a7.f531x;
                    textView6.setHorizontalFadingEdgeEnabled(true);
                    textView6.setFocusable(true);
                    textView6.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                    textView6.setMarqueeRepeatLimit(6);
                    textView6.setFocusableInTouchMode(true);
                    textView6.setHorizontallyScrolling(true);
                    textView6.setSelected(true);
                    break;
                }
            case 7:
                Context context2 = ((I) this.f640e).f569h;
                H h7 = (H) this.f641f;
                if (!z6) {
                    h7.f564w.setTextColor(context2.getResources().getColor(R.color.white));
                    break;
                } else {
                    h7.f564w.setTextColor(context2.getResources().getColor(R.color.black));
                    break;
                }
            case 8:
                P p6 = (P) this.f640e;
                Activity activity2 = p6.f595h;
                O o6 = (O) this.f641f;
                if (!z6) {
                    if ((activity2 instanceof MainActivity) || (activity2 instanceof SearchResultsActivity) || (activity2 instanceof MovieDetailActivityLeanBack)) {
                        view.animate().scaleX(1.0f).scaleY(1.0f).setDuration(200L).start();
                    }
                    o6.f586v.setBackground(null);
                    TextView textView7 = o6.f588x;
                    textView7.setHorizontalFadingEdgeEnabled(false);
                    textView7.setEllipsize(TextUtils.TruncateAt.END);
                    textView7.setMarqueeRepeatLimit(6);
                    textView7.setFocusableInTouchMode(false);
                    textView7.setHorizontallyScrolling(false);
                    textView7.setSelected(false);
                    break;
                } else {
                    MainActivity mainActivity = p6.f600m;
                    if (mainActivity != null) {
                        try {
                            o6.f584A.invalidate();
                            g1.g generate = g1.g.from(((BitmapDrawable) o6.f584A.getDrawable()).getBitmap()).generate();
                            o6.f585u.color = generate.getDarkVibrantColor(0);
                            mainActivity.extractDominantColor(o6.f585u.color);
                        } catch (Exception e3) {
                            e3.printStackTrace();
                        }
                    }
                    if ((activity2 instanceof MainActivity) || (activity2 instanceof SearchResultsActivity) || (activity2 instanceof MovieDetailActivityLeanBack)) {
                        view.animate().scaleX(1.1f).scaleY(1.1f).setDuration(200L).start();
                    }
                    o6.f586v.setBackground(activity2.getResources().getDrawable(R.drawable.rounded_border_poster));
                    TextView textView8 = o6.f588x;
                    textView8.setHorizontalFadingEdgeEnabled(true);
                    textView8.setFocusable(true);
                    textView8.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                    textView8.setMarqueeRepeatLimit(6);
                    textView8.setFocusableInTouchMode(true);
                    textView8.setHorizontallyScrolling(true);
                    textView8.setSelected(true);
                    break;
                }
                break;
            case 9:
                Activity activity3 = ((Z) this.f640e).f626d;
                Y y6 = (Y) this.f641f;
                if (!z6) {
                    view.animate().scaleX(1.0f).scaleY(1.0f).setDuration(200L).start();
                    y6.f623v.setTextColor(activity3.getResources().getColor(R.color.white));
                    int color = activity3.getResources().getColor(R.color.white);
                    TextView textView9 = y6.f624w;
                    textView9.setTextColor(color);
                    textView9.setVisibility(4);
                    break;
                } else {
                    y6.f624w.setVisibility(0);
                    if (!y6.f625x.isActivated()) {
                        y6.f623v.setTextColor(activity3.getResources().getColor(R.color.black));
                        y6.f624w.setTextColor(activity3.getResources().getColor(R.color.black));
                    }
                    view.animate().scaleX(1.1f).scaleY(1.1f).setDuration(200L).start();
                    break;
                }
            case 10:
                c0 c0Var = (c0) this.f640e;
                int i2 = c0Var.f651d;
                if (!z6) {
                    if (i2 != 200) {
                        b.c.e(view, 0.0f, 0.0f, 0.0f, 1.0f).scaleY(1.0f).start();
                        break;
                    }
                } else {
                    U4.l lVar = c0Var.f652e;
                    if (lVar instanceof TVCategoriesActivity) {
                        ((TVCategoriesActivity) lVar).ToastChannel(((b0) this.f641f).f642u.getCategoryName());
                    }
                    if (i2 != 200) {
                        b.c.e(view, 20.0f, 20.0f, 20.0f, 1.1f).scaleY(1.1f).start();
                        break;
                    }
                }
                break;
            case 11:
                h0 h0Var = (h0) this.f640e;
                h0Var.getClass();
                g0 g0Var = (g0) this.f641f;
                if (!z6) {
                    g0Var.f683v.setBackground(null);
                    break;
                } else {
                    g0Var.f683v.setBackground(h0Var.f691e.getResources().getDrawable(R.drawable.season_item_border_selected));
                    break;
                }
            default:
                m0 m0Var = (m0) this.f640e;
                l0 l0Var = (l0) this.f641f;
                if (!z6) {
                    m0Var.getClass();
                    l0Var.f729v.setBackground(null);
                    TextView textView10 = l0Var.f731x;
                    textView10.setHorizontalFadingEdgeEnabled(false);
                    textView10.setEllipsize(TextUtils.TruncateAt.END);
                    textView10.setMarqueeRepeatLimit(6);
                    textView10.setFocusableInTouchMode(false);
                    textView10.setHorizontallyScrolling(false);
                    textView10.setSelected(false);
                    break;
                } else {
                    MainActivity mainActivity2 = m0Var.f743l;
                    if (mainActivity2 != null) {
                        try {
                            l0Var.f726A.invalidate();
                            g1.g generate2 = g1.g.from(((BitmapDrawable) l0Var.f726A.getDrawable()).getBitmap()).generate();
                            l0Var.f728u.color = generate2.getDarkVibrantColor(0);
                            mainActivity2.extractDominantColor(l0Var.f728u.color);
                        } catch (Exception unused) {
                        }
                    }
                    l0Var.f729v.setBackground(m0Var.f738g.getResources().getDrawable(R.drawable.rounded_border_poster));
                    TextView textView11 = l0Var.f731x;
                    textView11.setHorizontalFadingEdgeEnabled(true);
                    textView11.setFocusable(true);
                    textView11.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                    textView11.setMarqueeRepeatLimit(6);
                    textView11.setFocusableInTouchMode(true);
                    textView11.setHorizontallyScrolling(true);
                    textView11.setSelected(true);
                    break;
                }
        }
    }
}

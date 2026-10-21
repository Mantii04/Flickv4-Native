package A3;

import K3.l;
import android.animation.ValueAnimator;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import androidx.drawerlayout.widget.DrawerLayout;
import flix.com.vision.App;
import flix.com.vision.activities.AnimeDetailActivity;
import flix.com.vision.activities.AnimeSearchResultActivty;
import flix.com.vision.activities.AnimesListActivity;
import flix.com.vision.activities.CastMoviesActivity;
import flix.com.vision.activities.DramaDetailActivity;
import flix.com.vision.activities.DramaSearchActivityMobile;
import flix.com.vision.activities.DramaSearchResultActivity;
import flix.com.vision.activities.FilterActivity;
import flix.com.vision.activities.MainActivity;
import flix.com.vision.activities.MovieDetailActivity;
import flix.com.vision.activities.MovieDetailActivityLeanBack;
import flix.com.vision.activities.SearchActivityClassic;
import flix.com.vision.activities.SearchActivityTV;
import flix.com.vision.activities.adult.AdultCategoriesActivity;
import flix.com.vision.activities.adult.AdultHistoryActivity;
import flix.com.vision.activities.adult.AdultVideosActivity;
import flix.com.vision.activities.adult.AdultVideosFavoritesActivity;
import flix.com.vision.activities.adult.AdultVideosSearchActivity;
import flix.com.vision.activities.leanback.CastMoviesActivityLeanBack;
import flix.com.vision.activities.leanback.FilterActivityLeanBack;
import flix.com.vision.tv.TVCategoriesActivity;
import g3.AbstractC0951a;
import io.github.giangpham96.expandable_textview.ExpandableTextView;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final /* synthetic */ class a implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f22b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f23e;

    public /* synthetic */ a(Object obj, int i2) {
        this.f22b = i2;
        this.f23e = obj;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator value) {
        Object obj = this.f23e;
        switch (this.f22b) {
            case 0:
                DrawerLayout drawerLayout = (DrawerLayout) obj;
                drawerLayout.setScrimColor(D.a.setAlphaComponent(-1728053248, AbstractC0951a.lerp(c.f26a, 0, value.getAnimatedFraction())));
                break;
            case 1:
                int i2 = CastMoviesActivityLeanBack.f15414H;
                CastMoviesActivityLeanBack castMoviesActivityLeanBack = (CastMoviesActivityLeanBack) obj;
                castMoviesActivityLeanBack.getClass();
                GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, new int[]{((Integer) value.getAnimatedValue()).intValue(), -16777216});
                gradientDrawable.setGradientRadius(450.0f);
                castMoviesActivityLeanBack.f15433u.setBackground(gradientDrawable);
                break;
            case 2:
                int i7 = FilterActivityLeanBack.f15439T;
                FilterActivityLeanBack filterActivityLeanBack = (FilterActivityLeanBack) obj;
                filterActivityLeanBack.getClass();
                GradientDrawable gradientDrawable2 = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, new int[]{((Integer) value.getAnimatedValue()).intValue(), -16777216});
                gradientDrawable2.setGradientRadius(450.0f);
                filterActivityLeanBack.f15474y.setBackground(gradientDrawable2);
                break;
            case 3:
                l lVar = (l) obj;
                lVar.getClass();
                lVar.f1727d.setAlpha(((Float) value.getAnimatedValue()).floatValue());
                break;
            case 4:
                int i8 = TVCategoriesActivity.f16255H;
                TVCategoriesActivity tVCategoriesActivity = (TVCategoriesActivity) obj;
                tVCategoriesActivity.getClass();
                GradientDrawable gradientDrawable3 = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, new int[]{((Integer) value.getAnimatedValue()).intValue(), -16777216});
                gradientDrawable3.setGradientRadius(450.0f);
                tVCategoriesActivity.f16264e.setBackground(gradientDrawable3);
                break;
            case 5:
                int i9 = ExpandableTextView.f16757A;
                ExpandableTextView this$0 = (ExpandableTextView) obj;
                kotlin.jvm.internal.j.checkNotNullParameter(this$0, "this$0");
                kotlin.jvm.internal.j.checkNotNullParameter(value, "value");
                ViewGroup.LayoutParams layoutParams = this$0.getLayoutParams();
                ViewGroup.LayoutParams layoutParams2 = this$0.getLayoutParams();
                Object animatedValue = value.getAnimatedValue();
                kotlin.jvm.internal.j.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
                layoutParams2.height = ((Integer) animatedValue).intValue();
                this$0.setLayoutParams(layoutParams);
                break;
            case 6:
                ArrayList arrayList = App.f14430z;
                GradientDrawable gradientDrawable4 = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, new int[]{((Integer) value.getAnimatedValue()).intValue(), -16777216});
                gradientDrawable4.setGradientRadius(450.0f);
                ((View) obj).setBackground(gradientDrawable4);
                break;
            case 7:
                int i10 = AnimeDetailActivity.f14449D;
                AnimeDetailActivity animeDetailActivity = (AnimeDetailActivity) obj;
                animeDetailActivity.getClass();
                GradientDrawable gradientDrawable5 = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, new int[]{((Integer) value.getAnimatedValue()).intValue(), -16777216});
                gradientDrawable5.setGradientRadius(450.0f);
                animeDetailActivity.f14469z.setBackground(gradientDrawable5);
                break;
            case 8:
                int i11 = AnimeSearchResultActivty.f14484z;
                AnimeSearchResultActivty animeSearchResultActivty = (AnimeSearchResultActivty) obj;
                animeSearchResultActivty.getClass();
                GradientDrawable gradientDrawable6 = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, new int[]{((Integer) value.getAnimatedValue()).intValue(), -16777216});
                gradientDrawable6.setGradientRadius(450.0f);
                animeSearchResultActivty.f14499x.setBackground(gradientDrawable6);
                break;
            case 9:
                int i12 = AnimesListActivity.f14504E;
                AnimesListActivity animesListActivity = (AnimesListActivity) obj;
                animesListActivity.getClass();
                GradientDrawable gradientDrawable7 = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, new int[]{((Integer) value.getAnimatedValue()).intValue(), -16777216});
                gradientDrawable7.setGradientRadius(450.0f);
                animesListActivity.f14524y.setBackground(gradientDrawable7);
                break;
            case 10:
                int i13 = CastMoviesActivity.f14526G;
                CastMoviesActivity castMoviesActivity = (CastMoviesActivity) obj;
                castMoviesActivity.getClass();
                GradientDrawable gradientDrawable8 = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, new int[]{((Integer) value.getAnimatedValue()).intValue(), -16777216});
                gradientDrawable8.setGradientRadius(450.0f);
                castMoviesActivity.f14549z.setBackground(gradientDrawable8);
                break;
            case 11:
                int i14 = DramaDetailActivity.f14551A;
                DramaDetailActivity dramaDetailActivity = (DramaDetailActivity) obj;
                dramaDetailActivity.getClass();
                GradientDrawable gradientDrawable9 = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, new int[]{((Integer) value.getAnimatedValue()).intValue(), -16777216});
                gradientDrawable9.setGradientRadius(450.0f);
                dramaDetailActivity.f14566x.setBackground(gradientDrawable9);
                break;
            case 12:
                int i15 = DramaSearchActivityMobile.f14627t;
                DramaSearchActivityMobile dramaSearchActivityMobile = (DramaSearchActivityMobile) obj;
                dramaSearchActivityMobile.getClass();
                GradientDrawable gradientDrawable10 = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, new int[]{((Integer) value.getAnimatedValue()).intValue(), -16777216});
                gradientDrawable10.setGradientRadius(450.0f);
                dramaSearchActivityMobile.f14628b.setBackground(gradientDrawable10);
                break;
            case 13:
                int i16 = DramaSearchResultActivity.f14638z;
                DramaSearchResultActivity dramaSearchResultActivity = (DramaSearchResultActivity) obj;
                dramaSearchResultActivity.getClass();
                GradientDrawable gradientDrawable11 = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, new int[]{((Integer) value.getAnimatedValue()).intValue(), -16777216});
                gradientDrawable11.setGradientRadius(450.0f);
                dramaSearchResultActivity.f14652w.setBackground(gradientDrawable11);
                break;
            case 14:
                int i17 = FilterActivity.f14667O;
                FilterActivity filterActivity = (FilterActivity) obj;
                filterActivity.getClass();
                GradientDrawable gradientDrawable12 = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, new int[]{((Integer) value.getAnimatedValue()).intValue(), -16777216});
                gradientDrawable12.setGradientRadius(450.0f);
                filterActivity.f14695w.setBackground(gradientDrawable12);
                break;
            case 15:
                int i18 = MainActivity.f14747T;
                MainActivity mainActivity = (MainActivity) obj;
                mainActivity.getClass();
                GradientDrawable gradientDrawable13 = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, new int[]{((Integer) value.getAnimatedValue()).intValue(), -16777216});
                gradientDrawable13.setGradientRadius(450.0f);
                mainActivity.f14777t.setBackground(gradientDrawable13);
                break;
            case 16:
                int i19 = MovieDetailActivity.f14792S0;
                MovieDetailActivity movieDetailActivity = (MovieDetailActivity) obj;
                movieDetailActivity.getClass();
                GradientDrawable gradientDrawable14 = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, new int[]{((Integer) value.getAnimatedValue()).intValue(), -16777216});
                gradientDrawable14.setGradientRadius(450.0f);
                movieDetailActivity.f14796B0.setBackground(gradientDrawable14);
                break;
            case 17:
                int i20 = MovieDetailActivityLeanBack.f14880a1;
                MovieDetailActivityLeanBack movieDetailActivityLeanBack = (MovieDetailActivityLeanBack) obj;
                movieDetailActivityLeanBack.getClass();
                GradientDrawable gradientDrawable15 = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, new int[]{((Integer) value.getAnimatedValue()).intValue(), -16777216});
                gradientDrawable15.setGradientRadius(450.0f);
                movieDetailActivityLeanBack.f14900J0.setBackground(gradientDrawable15);
                break;
            case 18:
                int i21 = SearchActivityClassic.f14976m;
                SearchActivityClassic searchActivityClassic = (SearchActivityClassic) obj;
                searchActivityClassic.getClass();
                GradientDrawable gradientDrawable16 = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, new int[]{((Integer) value.getAnimatedValue()).intValue(), -16777216});
                gradientDrawable16.setGradientRadius(450.0f);
                searchActivityClassic.f14977b.setBackground(gradientDrawable16);
                break;
            case 19:
                int i22 = SearchActivityTV.f14981I;
                SearchActivityTV searchActivityTV = (SearchActivityTV) obj;
                searchActivityTV.getClass();
                GradientDrawable gradientDrawable17 = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, new int[]{((Integer) value.getAnimatedValue()).intValue(), -16777216});
                gradientDrawable17.setGradientRadius(450.0f);
                searchActivityTV.f14985D.setBackground(gradientDrawable17);
                break;
            case 20:
                int i23 = AdultCategoriesActivity.f15309w;
                AdultCategoriesActivity adultCategoriesActivity = (AdultCategoriesActivity) obj;
                adultCategoriesActivity.getClass();
                GradientDrawable gradientDrawable18 = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, new int[]{((Integer) value.getAnimatedValue()).intValue(), -16777216});
                gradientDrawable18.setGradientRadius(450.0f);
                adultCategoriesActivity.f15312f.setBackground(gradientDrawable18);
                break;
            case 21:
                int i24 = AdultHistoryActivity.f15323v;
                AdultHistoryActivity adultHistoryActivity = (AdultHistoryActivity) obj;
                adultHistoryActivity.getClass();
                GradientDrawable gradientDrawable19 = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, new int[]{((Integer) value.getAnimatedValue()).intValue(), -16777216});
                gradientDrawable19.setGradientRadius(450.0f);
                adultHistoryActivity.f15325e.setBackground(gradientDrawable19);
                break;
            case 22:
                int i25 = AdultVideosActivity.f15347C;
                AdultVideosActivity adultVideosActivity = (AdultVideosActivity) obj;
                adultVideosActivity.getClass();
                GradientDrawable gradientDrawable20 = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, new int[]{((Integer) value.getAnimatedValue()).intValue(), -16777216});
                gradientDrawable20.setGradientRadius(450.0f);
                adultVideosActivity.f15352f.setBackground(gradientDrawable20);
                break;
            case 23:
                int i26 = AdultVideosFavoritesActivity.f15367v;
                AdultVideosFavoritesActivity adultVideosFavoritesActivity = (AdultVideosFavoritesActivity) obj;
                adultVideosFavoritesActivity.getClass();
                GradientDrawable gradientDrawable21 = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, new int[]{((Integer) value.getAnimatedValue()).intValue(), -16777216});
                gradientDrawable21.setGradientRadius(450.0f);
                adultVideosFavoritesActivity.f15369e.setBackground(gradientDrawable21);
                break;
            default:
                int i27 = AdultVideosSearchActivity.f15380y;
                AdultVideosSearchActivity adultVideosSearchActivity = (AdultVideosSearchActivity) obj;
                adultVideosSearchActivity.getClass();
                GradientDrawable gradientDrawable22 = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, new int[]{((Integer) value.getAnimatedValue()).intValue(), -16777216});
                gradientDrawable22.setGradientRadius(450.0f);
                adultVideosSearchActivity.f15381b.setBackground(gradientDrawable22);
                break;
        }
    }
}

package y4;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Parcelable;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.Toast;
import androidx.media3.exoplayer.ExoPlayer;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.LinksActivity;
import flix.com.vision.activities.MovieDetailActivityLeanBack;
import flix.com.vision.activities.SearchActivityTV;
import flix.com.vision.activities.SeriesDetailActivity;
import flix.com.vision.activities.SeriesDetailActivityLeanBack;
import flix.com.vision.activities.SettingsActivity;
import flix.com.vision.activities.player.YouTubeWebviewActivity;
import flix.com.vision.models.Movie;
import flix.com.vision.models.Season;
import h5.AbstractC0995i;
import io.github.giangpham96.expandable_textview.ExpandableTextView;
import java.util.ArrayList;

/* renamed from: y4.y0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class ViewOnClickListenerC1939y0 implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21314b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MovieDetailActivityLeanBack f21315e;

    public /* synthetic */ ViewOnClickListenerC1939y0(MovieDetailActivityLeanBack movieDetailActivityLeanBack, int i2) {
        this.f21314b = i2;
        this.f21315e = movieDetailActivityLeanBack;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i2 = 8;
        MovieDetailActivityLeanBack movieDetailActivityLeanBack = this.f21315e;
        switch (this.f21314b) {
            case 0:
                ExpandableTextView expandableTextView = movieDetailActivityLeanBack.f14965u0;
                if (expandableTextView != null) {
                    expandableTextView.toggle();
                    break;
                }
                break;
            case 1:
                int i7 = MovieDetailActivityLeanBack.f14880a1;
                movieDetailActivityLeanBack.getClass();
                movieDetailActivityLeanBack.startActivityForResult(new Intent(movieDetailActivityLeanBack, (Class<?>) SettingsActivity.class), 1100);
                break;
            case 2:
                int i8 = MovieDetailActivityLeanBack.f14880a1;
                movieDetailActivityLeanBack.getClass();
                try {
                    if (App.getInstance().f14439r.isMovieFavorited(movieDetailActivityLeanBack.f14963t0)) {
                        App.getInstance().f14439r.deleteFavoriteMovie(movieDetailActivityLeanBack.f14963t0);
                        movieDetailActivityLeanBack.f14917S = false;
                        AbstractC0995i.makeToast(movieDetailActivityLeanBack, "Removed from your List", true);
                    } else {
                        App.getInstance().f14439r.addMovieFavorites(movieDetailActivityLeanBack.f14963t0);
                        movieDetailActivityLeanBack.f14917S = true;
                        AbstractC0995i.makeToast(movieDetailActivityLeanBack, "Added to your List", true);
                    }
                } catch (Exception unused) {
                }
                if (!movieDetailActivityLeanBack.f14917S) {
                    movieDetailActivityLeanBack.f14898I0.setImageResource(R.drawable.ic_bookmark);
                    break;
                } else {
                    movieDetailActivityLeanBack.f14898I0.setImageResource(R.drawable.ic_delete_bookmark);
                    break;
                }
            case 3:
                movieDetailActivityLeanBack.f14890E0.setText("PLAY");
                LinearLayout linearLayout = movieDetailActivityLeanBack.f14970x;
                if (linearLayout != null) {
                    linearLayout.setVisibility(8);
                }
                movieDetailActivityLeanBack.f14896H0.setImageResource(R.drawable.ic_play);
                movieDetailActivityLeanBack.f14961s0.setVisibility(8);
                App.getInstance().f14439r.markAsWatched(movieDetailActivityLeanBack.f14963t0);
                if (movieDetailActivityLeanBack.f14963t0.isSeries()) {
                    App.getInstance().f14440s.edit().remove(movieDetailActivityLeanBack.f14963t0.getMovieId() + "watched_season_index").apply();
                    try {
                        SharedPreferences.Editor edit = App.getInstance().f14440s.edit();
                        int i9 = 0;
                        while (true) {
                            ArrayList arrayList = movieDetailActivityLeanBack.f14916R0;
                            if (i9 < arrayList.size()) {
                                int i10 = 0;
                                while (i10 < ((Season) arrayList.get(i9)).episode_count) {
                                    StringBuilder sb = new StringBuilder();
                                    sb.append(movieDetailActivityLeanBack.f14963t0.getMovieId());
                                    sb.append("");
                                    sb.append(i9 + 1);
                                    sb.append("");
                                    i10++;
                                    sb.append(i10);
                                    String sb2 = sb.toString();
                                    if (App.getInstance().f14440s.contains(sb2)) {
                                        edit.remove(sb2);
                                    }
                                }
                                i9++;
                            }
                        }
                    } catch (Exception unused2) {
                    }
                }
                App.getInstance().f14432e = true;
                try {
                    N4.a.Success(movieDetailActivityLeanBack.getApplicationContext(), "Marked as Watched", null, 48, 0);
                    break;
                } catch (Exception unused3) {
                    return;
                }
            case 4:
                movieDetailActivityLeanBack.f14953o0.setEnabled(false);
                new Handler().postDelayed(new RunnableC1933v0(movieDetailActivityLeanBack, 2), ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
                String str = movieDetailActivityLeanBack.f14922U0;
                if (str == null || str.length() == 0) {
                    Toast.makeText(movieDetailActivityLeanBack.getBaseContext(), "No Trailer Found!", 0).show();
                    break;
                } else {
                    try {
                        Intent intent = new Intent(movieDetailActivityLeanBack, (Class<?>) YouTubeWebviewActivity.class);
                        intent.putExtra("url", App.getInstance().f14444w + "/ext/goyt2.html?link=" + movieDetailActivityLeanBack.f14922U0);
                        intent.putExtra("video_id", movieDetailActivityLeanBack.f14922U0);
                        intent.putExtra("poster", movieDetailActivityLeanBack.f14963t0.getCover());
                        Movie movie = movieDetailActivityLeanBack.f14963t0;
                        if (movie.is_title_logo_available) {
                            intent.putExtra("title_logo", movie.logoUrl);
                        }
                        movieDetailActivityLeanBack.startActivity(intent);
                        break;
                    } catch (Exception unused4) {
                        return;
                    }
                }
                break;
            case 5:
                int i11 = MovieDetailActivityLeanBack.f14880a1;
                movieDetailActivityLeanBack.getClass();
                if (App.f14424I && !App.getInstance().f14440s.getBoolean("pref_classic_search", false)) {
                    movieDetailActivityLeanBack.startActivity(new Intent(movieDetailActivityLeanBack, (Class<?>) SearchActivityTV.class));
                    break;
                } else {
                    movieDetailActivityLeanBack.f14950m0.openSearch();
                    break;
                }
                break;
            case 6:
                Movie movie2 = movieDetailActivityLeanBack.f14963t0;
                A4.r.newInstance(movie2, movieDetailActivityLeanBack.f14951n, movieDetailActivityLeanBack.f14954p, movie2.is_title_logo_available ? movie2.logoUrl : null).show(movieDetailActivityLeanBack.getSupportFragmentManager(), "MovieDetailsDialog");
                break;
            default:
                boolean isSeries = movieDetailActivityLeanBack.f14963t0.isSeries();
                ArrayList<? extends Parcelable> arrayList2 = movieDetailActivityLeanBack.f14916R0;
                if (!isSeries) {
                    if (!movieDetailActivityLeanBack.f14924V0) {
                        if (movieDetailActivityLeanBack.f14963t0.raw_release_date == null) {
                            AbstractC0995i.makeToast(movieDetailActivityLeanBack, "This Movie Is Not Yet Released", true);
                            break;
                        } else {
                            AbstractC0995i.makeToastLong(movieDetailActivityLeanBack, "This Movie Is Not Yet Released \nRelease Date: " + movieDetailActivityLeanBack.f14926W0, true);
                            break;
                        }
                    } else {
                        movieDetailActivityLeanBack.f14953o0.setEnabled(false);
                        new Handler().postDelayed(new RunnableC1933v0(movieDetailActivityLeanBack, i2), 1000L);
                        Intent intent2 = new Intent(movieDetailActivityLeanBack, (Class<?>) LinksActivity.class);
                        intent2.putExtra("movie", movieDetailActivityLeanBack.f14963t0);
                        intent2.putParcelableArrayListExtra("seasons", arrayList2);
                        intent2.putExtra("mini_poster", movieDetailActivityLeanBack.f14963t0.getImage_url());
                        intent2.putExtra("plot", movieDetailActivityLeanBack.f14963t0.getPlot());
                        movieDetailActivityLeanBack.startActivity(intent2);
                        break;
                    }
                } else {
                    Intent intent3 = App.f14424I ? new Intent(movieDetailActivityLeanBack, (Class<?>) SeriesDetailActivityLeanBack.class) : new Intent(movieDetailActivityLeanBack, (Class<?>) SeriesDetailActivity.class);
                    intent3.putExtra("movie", movieDetailActivityLeanBack.f14963t0);
                    intent3.putParcelableArrayListExtra("seasons", new ArrayList<>(arrayList2));
                    movieDetailActivityLeanBack.f14963t0.seasons = new ArrayList<>();
                    movieDetailActivityLeanBack.startActivity(intent3);
                    break;
                }
        }
    }
}

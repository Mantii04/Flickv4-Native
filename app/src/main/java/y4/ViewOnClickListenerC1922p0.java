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
import flix.com.vision.activities.MovieDetailActivity;
import flix.com.vision.activities.SearchActivityTV;
import flix.com.vision.activities.SeriesDetailActivity;
import flix.com.vision.activities.SeriesDetailActivityLeanBack;
import flix.com.vision.activities.SettingsActivity;
import flix.com.vision.activities.player.YouTubeWebviewActivity;
import flix.com.vision.models.Season;
import h5.AbstractC0995i;
import io.github.giangpham96.expandable_textview.ExpandableTextView;
import java.util.ArrayList;

/* renamed from: y4.p0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class ViewOnClickListenerC1922p0 implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21273b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MovieDetailActivity f21274e;

    public /* synthetic */ ViewOnClickListenerC1922p0(MovieDetailActivity movieDetailActivity, int i2) {
        this.f21273b = i2;
        this.f21274e = movieDetailActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        MovieDetailActivity movieDetailActivity = this.f21274e;
        switch (this.f21273b) {
            case 0:
                ExpandableTextView expandableTextView = movieDetailActivity.f14854m0;
                if (expandableTextView != null) {
                    expandableTextView.toggle();
                    break;
                }
                break;
            case 1:
                int i2 = MovieDetailActivity.f14792S0;
                movieDetailActivity.getClass();
                movieDetailActivity.startActivityForResult(new Intent(movieDetailActivity, (Class<?>) SettingsActivity.class), 1100);
                break;
            case 2:
                int i7 = MovieDetailActivity.f14792S0;
                movieDetailActivity.getClass();
                try {
                    if (App.getInstance().f14439r.isMovieFavorited(movieDetailActivity.f14852l0)) {
                        App.getInstance().f14439r.deleteFavoriteMovie(movieDetailActivity.f14852l0);
                        movieDetailActivity.f14813K = false;
                        N4.a.Success(movieDetailActivity, "Removed from your List", null, 48, 0);
                    } else {
                        App.getInstance().f14439r.addMovieFavorites(movieDetailActivity.f14852l0);
                        movieDetailActivity.f14813K = true;
                        N4.a.Success(movieDetailActivity, "Added to your List", null, 48, 0);
                    }
                } catch (Exception unused) {
                }
                if (!movieDetailActivity.f14813K) {
                    movieDetailActivity.f14794A0.setImageResource(R.drawable.ic_bookmark);
                    break;
                } else {
                    movieDetailActivity.f14794A0.setImageResource(R.drawable.ic_delete_bookmark);
                    break;
                }
            case 3:
                movieDetailActivity.f14873w0.setText("PLAY");
                LinearLayout linearLayout = movieDetailActivity.f14858p;
                if (linearLayout != null) {
                    linearLayout.setVisibility(8);
                }
                movieDetailActivity.f14879z0.setImageResource(R.drawable.ic_play);
                movieDetailActivity.f14851k0.setVisibility(8);
                App.getInstance().f14439r.markAsWatched(movieDetailActivity.f14852l0);
                if (movieDetailActivity.f14852l0.isSeries()) {
                    App.getInstance().f14440s.edit().remove(movieDetailActivity.f14852l0.getMovieId() + "watched_season_index").apply();
                    try {
                        SharedPreferences.Editor edit = App.getInstance().f14440s.edit();
                        int i8 = 0;
                        while (true) {
                            ArrayList arrayList = movieDetailActivity.f14812J0;
                            if (i8 < arrayList.size()) {
                                int i9 = 0;
                                while (i9 < ((Season) arrayList.get(i8)).episode_count) {
                                    StringBuilder sb = new StringBuilder();
                                    sb.append(movieDetailActivity.f14852l0.getMovieId());
                                    sb.append("");
                                    sb.append(i8 + 1);
                                    sb.append("");
                                    i9++;
                                    sb.append(i9);
                                    String sb2 = sb.toString();
                                    if (App.getInstance().f14440s.contains(sb2)) {
                                        edit.remove(sb2);
                                    }
                                }
                                i8++;
                            }
                        }
                    } catch (Exception unused2) {
                    }
                }
                App.getInstance().f14432e = true;
                try {
                    N4.a.Success(movieDetailActivity, "Marked as Watched", null, 48, 0);
                    break;
                } catch (Exception unused3) {
                    return;
                }
            case 4:
                int i10 = MovieDetailActivity.f14792S0;
                movieDetailActivity.getClass();
                if (App.f14424I && !App.getInstance().f14440s.getBoolean("pref_classic_search", false)) {
                    movieDetailActivity.startActivity(new Intent(movieDetailActivity, (Class<?>) SearchActivityTV.class));
                    break;
                } else {
                    movieDetailActivity.f14843e0.openSearch();
                    break;
                }
                break;
            case 5:
                movieDetailActivity.f14846g0.setEnabled(false);
                new Handler().postDelayed(new RunnableC1912k0(movieDetailActivity, 3), ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
                String str = movieDetailActivity.f14818M0;
                if (str == null || str.length() == 0) {
                    Toast.makeText(movieDetailActivity.getBaseContext(), "No Trailer Found!", 0).show();
                    break;
                } else {
                    try {
                        Intent intent = new Intent(movieDetailActivity, (Class<?>) YouTubeWebviewActivity.class);
                        intent.putExtra("url", App.getInstance().f14444w + "/ext/goyt2.html?link=" + movieDetailActivity.f14818M0);
                        intent.putExtra("poster", movieDetailActivity.f14852l0.getCover());
                        intent.putExtra("video_id", movieDetailActivity.f14818M0);
                        if (movieDetailActivity.f14852l0.is_title_logo_available) {
                            String str2 = App.getInstance().f14444w + movieDetailActivity.getString(R.string.api_path_movie) + movieDetailActivity.f14852l0.getMovieId() + ".png";
                            if (movieDetailActivity.f14852l0.isSeries()) {
                                str2 = App.getInstance().f14444w + movieDetailActivity.getString(R.string.api_path_tv) + movieDetailActivity.f14852l0.getMovieId() + ".png";
                            }
                            intent.putExtra("title_logo", str2);
                        }
                        movieDetailActivity.startActivity(intent);
                        break;
                    } catch (Exception unused4) {
                        return;
                    }
                }
                break;
            default:
                boolean isSeries = movieDetailActivity.f14852l0.isSeries();
                ArrayList<? extends Parcelable> arrayList2 = movieDetailActivity.f14812J0;
                if (!isSeries) {
                    if (!movieDetailActivity.f14820N0) {
                        if (movieDetailActivity.f14852l0.raw_release_date == null) {
                            AbstractC0995i.makeToast(movieDetailActivity, "This Movie Is Not Yet Released", true);
                            break;
                        } else {
                            AbstractC0995i.makeToastLong(movieDetailActivity, "This Movie Is Not Yet Released \nRelease Date: " + movieDetailActivity.f14822O0, true);
                            break;
                        }
                    } else {
                        movieDetailActivity.f14846g0.setEnabled(false);
                        new Handler().postDelayed(new RunnableC1912k0(movieDetailActivity, 2), 1000L);
                        Intent intent2 = new Intent(movieDetailActivity, (Class<?>) LinksActivity.class);
                        intent2.putExtra("movie", movieDetailActivity.f14852l0);
                        intent2.putParcelableArrayListExtra("seasons", arrayList2);
                        intent2.putExtra("mini_poster", movieDetailActivity.f14852l0.getImage_url());
                        intent2.putExtra("plot", movieDetailActivity.f14852l0.getPlot());
                        movieDetailActivity.startActivity(intent2);
                        break;
                    }
                } else {
                    Intent intent3 = App.f14424I ? new Intent(movieDetailActivity, (Class<?>) SeriesDetailActivityLeanBack.class) : new Intent(movieDetailActivity, (Class<?>) SeriesDetailActivity.class);
                    intent3.putExtra("movie", movieDetailActivity.f14852l0);
                    intent3.putParcelableArrayListExtra("seasons", new ArrayList<>(arrayList2));
                    movieDetailActivity.f14852l0.seasons = new ArrayList<>();
                    movieDetailActivity.startActivity(intent3);
                    break;
                }
        }
    }
}

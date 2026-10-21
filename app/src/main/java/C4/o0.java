package C4;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.media3.exoplayer.ExoPlayer;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.MainActivity;
import flix.com.vision.models.Movie;
import flix.com.vision.subtitles.OpenSubtitles;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class o0 extends m1.V {

    /* renamed from: d, reason: collision with root package name */
    public final U4.j f757d;

    /* renamed from: e, reason: collision with root package name */
    public final MainActivity f758e;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f759f;

    public o0(Context context, ArrayList<Movie> arrayList, MainActivity mainActivity, U4.j jVar) {
        this.f759f = arrayList;
        this.f758e = mainActivity;
        this.f757d = jVar;
    }

    @Override // m1.V
    public int getItemCount() {
        return this.f759f.size();
    }

    @Override // m1.V
    public void onBindViewHolder(n0 n0Var, int i2) {
        n0Var.f748u = (Movie) this.f759f.get(i2);
        ProgressBar progressBar = n0Var.f752y;
        String str = n0Var.f748u.getMovieId() + "";
        String str2 = n0Var.f748u.backdrop;
        if (str2 != null && str2.length() > 1) {
            try {
                try {
                    m4.D.get().load("https://www.themoviedb.org/t/p/w300" + n0Var.f748u.backdrop).fit().centerCrop().into(n0Var.f751x);
                } catch (OutOfMemoryError e3) {
                    e3.printStackTrace();
                }
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
        if (App.getInstance().f14440s.getInt(str, -1) > 0) {
            try {
                if (n0Var.f748u.getDuration() > 0) {
                    progressBar.setVisibility(0);
                    progressBar.setProgress((int) ((r1 * 100) / (n0Var.f748u.getDuration() * ExoPlayer.DEFAULT_STUCK_PLAYING_NOT_ENDING_TIMEOUT_MS)));
                }
            } catch (Exception unused) {
            }
        }
        a0 a0Var = new a0(this, i2, 1);
        View view = n0Var.f749v;
        view.setOnLongClickListener(a0Var);
        view.setOnClickListener(new A4.m(16, this, n0Var));
        view.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0089m(3));
        Movie movie = n0Var.f748u;
        boolean isSeries = movie.isSeries();
        TextView textView = n0Var.f750w;
        if (!isSeries) {
            textView.setText(movie.getTitle());
            return;
        }
        try {
            int i7 = App.getInstance().f14440s.getInt(movie.getMovieId() + "watched_season_index", -1);
            if (i7 > -1) {
                int i8 = i7 + 1;
                int i9 = App.getInstance().f14440s.getInt(movie.getMovieId() + OpenSubtitles.Params.Key.SEASON + i8 + OpenSubtitles.Params.Key.EPISODE + i8, 0) + 1;
                String title = movie.getTitle();
                if (title.length() > 1) {
                    textView.setText("S" + i8 + "E" + i9 + " · " + title);
                } else {
                    textView.setText("S" + i8 + "E" + i9);
                }
            }
        } catch (Exception unused2) {
        }
    }

    @Override // m1.V
    public n0 onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new n0(this, LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.movie_item_view_watching, viewGroup, false));
    }
}

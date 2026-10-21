package W4;

import C4.ViewOnLongClickListenerC0085i;
import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.leanback.widget.A0;
import androidx.leanback.widget.C0;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.upstream.CmcdData;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.leanback.fragment.TVListFragmentMain;
import flix.com.vision.models.Movie;
import flix.com.vision.subtitles.OpenSubtitles;
import h5.AbstractC0990d;
import java.util.ArrayList;
import java.util.Iterator;
import m4.D;

/* loaded from: classes2.dex */
public final class b extends C0 {

    /* renamed from: a, reason: collision with root package name */
    public ProgressBar f4164a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f4165b;

    /* renamed from: c, reason: collision with root package name */
    public final Activity f4166c;

    /* renamed from: d, reason: collision with root package name */
    public final TVListFragmentMain f4167d;

    public b(ArrayList<Movie> arrayList, Activity activity, TVListFragmentMain tVListFragmentMain) {
        this.f4165b = arrayList;
        this.f4166c = activity;
        this.f4167d = tVListFragmentMain;
    }

    @Override // androidx.leanback.widget.C0
    public void onBindViewHolder(A0 a02, Object obj) {
        String str;
        Movie movie = (Movie) obj;
        ImageView imageView = (ImageView) a02.f6460a.findViewById(R.id.poster_image);
        int i2 = R.id.episode_title_card;
        View view = a02.f6460a;
        TextView textView = (TextView) view.findViewById(i2);
        this.f4164a = (ProgressBar) view.findViewById(R.id.progress_card);
        try {
            if (movie.isSeries()) {
                int i7 = App.getInstance().f14440s.getInt(movie.getMovieId() + "watched_season_index", -1);
                if (i7 > -1) {
                    int i8 = i7 + 1;
                    int i9 = App.getInstance().f14440s.getInt(movie.getMovieId() + OpenSubtitles.Params.Key.SEASON + i8 + OpenSubtitles.Params.Key.EPISODE + i8, 0) + 1;
                    String string = App.getInstance().f14440s.getString(movie.getMovieId() + CmcdData.STREAMING_FORMAT_SS + i8 + "e" + i8 + "title", "");
                    if (string.length() > 1) {
                        textView.setText("S" + i8 + "E" + i9 + ": " + string);
                    } else {
                        textView.setText("S" + i8 + "E" + i9);
                    }
                    textView.setVisibility(0);
                }
            } else {
                textView.setVisibility(8);
                int i10 = App.getInstance().f14440s.getInt(movie.getMovieId() + "", -1);
                if (i10 > 0) {
                    Iterator it = this.f4165b.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        if (((Movie) it.next()).getMovieId() == movie.getMovieId() && movie.getDuration() > 0) {
                            this.f4164a.setVisibility(0);
                            this.f4164a.setProgress((int) ((i10 * 100) / (movie.getDuration() * ExoPlayer.DEFAULT_STUCK_PLAYING_NOT_ENDING_TIMEOUT_MS)));
                            int duration = movie.getDuration() - (i10 / ExoPlayer.DEFAULT_STUCK_PLAYING_NOT_ENDING_TIMEOUT_MS);
                            if (duration > 60) {
                                str = (duration / 60) + "h " + (duration % 60) + CmcdData.OBJECT_TYPE_MANIFEST;
                            } else {
                                str = duration + CmcdData.OBJECT_TYPE_MANIFEST;
                            }
                            textView.setText(str + " remaining");
                            textView.setVisibility(0);
                        }
                    }
                }
            }
        } catch (Exception unused) {
        }
        String str2 = "https://www.themoviedb.org/t/p/w780" + movie.backdrop;
        String str3 = movie.backdrop;
        if (str3 == null || str3.length() <= 10) {
            D.get().load(R.drawable.ic_movie).fit().centerCrop().into(imageView);
        } else {
            try {
                D.get().load(str2).fit().centerCrop().error(R.drawable.ic_movie).into(imageView);
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
        view.setOnLongClickListener(new ViewOnLongClickListenerC0085i(3, this, movie));
    }

    @Override // androidx.leanback.widget.C0
    public A0 onCreateViewHolder(ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.movie_item_view_card, viewGroup, false);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) inflate.getLayoutParams();
        marginLayoutParams.width = AbstractC0990d.getWidthInPercent(viewGroup.getContext(), 20);
        marginLayoutParams.height = AbstractC0990d.getHeightInPercent(viewGroup.getContext(), 17);
        marginLayoutParams.setMarginEnd(24);
        inflate.setLayoutParams(marginLayoutParams);
        return new A0(inflate);
    }

    @Override // androidx.leanback.widget.C0
    public void onUnbindViewHolder(A0 a02) {
    }
}

package e5;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import flix.com.vision.App;
import flix.com.vision.models.Movie;
import flix.com.vision.processors.english.m;
import flix.com.vision.tv.Constant;
import java.util.ArrayList;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public final class f extends m {

    /* renamed from: a, reason: collision with root package name */
    public final Movie f13969a;

    public f(Context context, Movie movie, U4.f fVar) {
        this.f13969a = movie;
        this.callBack = fVar;
        new ArrayList();
        this.domain = "https://ww9.watchmovierulz.ws/";
    }

    public void process() {
        SharedPreferences sharedPreferences = App.getInstance().f14440s;
        String str = Constant.f16184b;
        this.domain = sharedPreferences.getString("MovieRulzHindi_url", this.domain);
        Movie movie = this.f13969a;
        String replace = movie.getTitle().replace(",", "").replace("(", "").replace(")", "");
        if (replace.toLowerCase().contains("birds of prey") && movie.year.equals("2020")) {
            replace = "Birds Of Prey";
        }
        replace.replace(StringUtils.SPACE, "+");
        new e(this, this.domain + "search_movies?s=" + m.removeSpecialCharsOld(movie.getTitle()).replace(StringUtils.SPACE, "+").trim()).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }
}

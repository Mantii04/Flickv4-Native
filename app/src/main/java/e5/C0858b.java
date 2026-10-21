package e5;

import android.content.Context;
import android.os.AsyncTask;
import flix.com.vision.models.Movie;
import flix.com.vision.processors.english.m;
import java.util.ArrayList;
import org.apache.commons.lang3.StringUtils;

/* renamed from: e5.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0858b extends m {

    /* renamed from: a, reason: collision with root package name */
    public final Movie f13963a;

    public C0858b(Context context, Movie movie, U4.f fVar) {
        this.f13963a = movie;
        this.callBack = fVar;
        new ArrayList();
        this.domain = "https://hindilinks4u.guru/";
    }

    public void process() {
        Movie movie = this.f13963a;
        String replace = movie.getTitle().replace(",", "").replace("(", "").replace(")", "");
        if (replace.toLowerCase().contains("birds of prey") && movie.year.equals("2020")) {
            replace = "Birds Of Prey";
        }
        replace.replace(StringUtils.SPACE, "+");
        new AsyncTaskC0857a(this, this.domain + "?s=" + m.removeSpecialCharsOld(movie.getTitle()).replace(StringUtils.SPACE, "+")).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }
}

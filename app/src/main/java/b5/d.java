package b5;

import U4.f;
import android.content.Context;
import android.os.AsyncTask;
import flix.com.vision.models.Movie;
import flix.com.vision.processors.english.m;
import java.util.ArrayList;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public final class d extends m {

    /* renamed from: a, reason: collision with root package name */
    public final Movie f8521a;

    public d(Context context, Movie movie, f fVar) {
        this.f8521a = movie;
        this.callBack = fVar;
        new ArrayList();
        this.domain = "https://moflix-stream.xyz";
    }

    public void process() {
        this.f8521a.getTitle().replace(StringUtils.SPACE, "-").getClass();
        new c(this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }
}

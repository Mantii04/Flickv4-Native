package c5;

import U4.f;
import android.content.Context;
import android.os.AsyncTask;
import flix.com.vision.models.Movie;
import flix.com.vision.processors.english.m;
import java.util.ArrayList;

/* renamed from: c5.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0738b extends m {

    /* renamed from: a, reason: collision with root package name */
    public final Movie f8974a;

    /* renamed from: b, reason: collision with root package name */
    public int f8975b;

    /* renamed from: c, reason: collision with root package name */
    public int f8976c;

    public C0738b(Context context, Movie movie, f fVar) {
        this.f8974a = movie;
        this.callBack = fVar;
        new ArrayList();
        this.domain = "https://moflix-stream.xyz";
    }

    public void process(int i2, int i7) {
        this.f8975b = i2;
        this.f8976c = i7;
        new AsyncTaskC0737a(this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }
}

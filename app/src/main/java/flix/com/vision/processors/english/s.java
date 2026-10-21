package flix.com.vision.processors.english;

import android.content.Context;
import android.webkit.WebView;
import flix.com.vision.models.Movie;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class s extends m {

    /* renamed from: a, reason: collision with root package name */
    public WebView f16115a;

    /* renamed from: b, reason: collision with root package name */
    public final Movie f16116b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f16117c;

    public s(Context context, Movie movie, U4.f fVar) {
        this.f16116b = movie;
        this.f16117c = context;
        this.callBack = fVar;
        new ArrayList();
        this.domain = "https://ridomovie.to/";
    }

    public void process() {
        D4.a.ridoSearch(this.domain, this.f16116b.getTitle()).subscribeOn(Schedulers.io()).subscribe(new j(this, 2), new A4.c(22));
    }
}

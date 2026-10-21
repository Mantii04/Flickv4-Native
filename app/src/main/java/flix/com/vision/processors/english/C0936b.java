package flix.com.vision.processors.english;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import flix.com.vision.App;
import flix.com.vision.models.Movie;
import flix.com.vision.tv.Constant;
import java.util.ArrayList;

/* renamed from: flix.com.vision.processors.english.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0936b extends m {

    /* renamed from: a, reason: collision with root package name */
    public final Context f16074a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f16075b;

    public C0936b(Context context, U4.f fVar, Movie movie) {
        this.f16074a = context;
        this.callBack = fVar;
        this.f16075b = new ArrayList();
        SharedPreferences sharedPreferences = App.getInstance().f14440s;
        String str = Constant.f16184b;
        this.domain = sharedPreferences.getString("anime_domain", "gogoanime.pe");
    }

    public void Process(String str) {
        new AsyncTaskC0935a(this, str.replace("www9.gogoanime.io", this.domain).replace("gogoanime.io", this.domain)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }
}

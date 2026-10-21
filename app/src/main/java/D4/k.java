package D4;

import com.google.gson.GsonBuilder;
import flix.com.vision.api.IntroDbApi;
import flix.com.vision.api.iAPIMovieInterface;
import flix.com.vision.api.offcloud.OffcloudApi;
import flix.com.vision.api.torbox.TorboxApi;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory;
import retrofit2.converter.gson.GsonConverterFactory;

/* loaded from: classes2.dex */
public abstract class k {

    /* renamed from: a, reason: collision with root package name */
    public static iAPIMovieInterface f914a;

    /* renamed from: b, reason: collision with root package name */
    public static iAPIMovieInterface f915b;

    /* renamed from: c, reason: collision with root package name */
    public static iAPIMovieInterface f916c;

    /* renamed from: d, reason: collision with root package name */
    public static iAPIMovieInterface f917d;

    /* renamed from: e, reason: collision with root package name */
    public static iAPIMovieInterface f918e;

    /* renamed from: f, reason: collision with root package name */
    public static TorboxApi f919f;

    /* renamed from: g, reason: collision with root package name */
    public static OffcloudApi f920g;

    /* renamed from: h, reason: collision with root package name */
    public static IntroDbApi f921h;

    public static iAPIMovieInterface getInstanceAllDebridAPI() {
        if (f916c == null) {
            HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor();
            httpLoggingInterceptor.setLevel(HttpLoggingInterceptor.Level.BODY);
            f916c = (iAPIMovieInterface) new Retrofit.Builder().baseUrl("https://api.alldebrid.com").addConverterFactory(GsonConverterFactory.create()).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).client(new OkHttpClient.Builder().addInterceptor(httpLoggingInterceptor).build()).build().create(iAPIMovieInterface.class);
        }
        return f916c;
    }

    public static iAPIMovieInterface getInstanceDebrid() {
        if (f917d == null) {
            HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor();
            httpLoggingInterceptor.setLevel(HttpLoggingInterceptor.Level.BODY);
            f917d = (iAPIMovieInterface) new Retrofit.Builder().baseUrl("https://api.real-debrid.com").addConverterFactory(GsonConverterFactory.create()).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).client(new OkHttpClient.Builder().addInterceptor(httpLoggingInterceptor).build()).build().create(iAPIMovieInterface.class);
        }
        return f917d;
    }

    public static iAPIMovieInterface getInstanceFlix(String str) {
        iAPIMovieInterface iapimovieinterface = (iAPIMovieInterface) new Retrofit.Builder().baseUrl(str).addConverterFactory(GsonConverterFactory.create(new GsonBuilder().setLenient().create())).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).client(new OkHttpClient.Builder().addInterceptor(new i()).build()).build().create(iAPIMovieInterface.class);
        f914a = iapimovieinterface;
        return iapimovieinterface;
    }

    public static IntroDbApi getInstanceIntroDBAPI() {
        if (f921h == null) {
            f921h = (IntroDbApi) new Retrofit.Builder().baseUrl("https://api.introdb.app/").addConverterFactory(GsonConverterFactory.create()).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).build().create(IntroDbApi.class);
        }
        return f921h;
    }

    public static OffcloudApi getInstanceOffcloudAPI() {
        if (f920g == null) {
            f920g = (OffcloudApi) new Retrofit.Builder().baseUrl("https://offcloud.com/").addConverterFactory(GsonConverterFactory.create()).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).build().create(OffcloudApi.class);
        }
        return f920g;
    }

    public static iAPIMovieInterface getInstancePremiumizeAPI() {
        if (f916c == null) {
            HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor();
            httpLoggingInterceptor.setLevel(HttpLoggingInterceptor.Level.BODY);
            f916c = (iAPIMovieInterface) new Retrofit.Builder().baseUrl("https://www.premiumize.me").addConverterFactory(GsonConverterFactory.create()).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).client(new OkHttpClient.Builder().addInterceptor(httpLoggingInterceptor).build()).build().create(iAPIMovieInterface.class);
        }
        return f916c;
    }

    public static iAPIMovieInterface getInstanceRidoMovies(String str) {
        f915b = (iAPIMovieInterface) new Retrofit.Builder().baseUrl(str).addConverterFactory(GsonConverterFactory.create()).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).client(new OkHttpClient.Builder().addInterceptor(new j()).build()).build().create(iAPIMovieInterface.class);
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor();
        httpLoggingInterceptor.setLevel(HttpLoggingInterceptor.Level.BODY);
        iAPIMovieInterface iapimovieinterface = (iAPIMovieInterface) new Retrofit.Builder().baseUrl(str).addConverterFactory(GsonConverterFactory.create()).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).client(new OkHttpClient.Builder().addInterceptor(httpLoggingInterceptor).build()).build().create(iAPIMovieInterface.class);
        f915b = iapimovieinterface;
        return iapimovieinterface;
    }

    public static TorboxApi getInstanceTorboxAPI() {
        if (f919f == null) {
            f919f = (TorboxApi) new Retrofit.Builder().baseUrl("https://api.torbox.app/").addConverterFactory(GsonConverterFactory.create()).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).build().create(TorboxApi.class);
        }
        return f919f;
    }

    public static OkHttpClient getNewHttpClient() {
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor();
        httpLoggingInterceptor.setLevel(HttpLoggingInterceptor.Level.BODY);
        return new OkHttpClient.Builder().addInterceptor(httpLoggingInterceptor).build();
    }

    public static iAPIMovieInterface getRequestTmdb() {
        if (f918e == null) {
            f918e = (iAPIMovieInterface) new Retrofit.Builder().baseUrl("https://api.themoviedb.org").addConverterFactory(GsonConverterFactory.create()).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).client(getNewHttpClient()).build().create(iAPIMovieInterface.class);
        }
        return f918e;
    }
}

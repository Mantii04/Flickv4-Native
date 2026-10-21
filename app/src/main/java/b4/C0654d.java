package b4;

import c4.C0731a;
import c4.C0732b;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import cz.msebera.android.httpclient.cookie.ClientCookie;
import java.util.ArrayList;
import org.apache.commons.lang3.StringUtils;

/* renamed from: b4.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0654d {

    /* renamed from: a, reason: collision with root package name */
    public final String f8475a;

    /* renamed from: b, reason: collision with root package name */
    public final String f8476b;

    /* renamed from: c, reason: collision with root package name */
    public final String f8477c;

    /* renamed from: d, reason: collision with root package name */
    public final String f8478d;

    /* renamed from: e, reason: collision with root package name */
    public final String f8479e;

    /* renamed from: f, reason: collision with root package name */
    public final String f8480f;

    /* renamed from: g, reason: collision with root package name */
    public final int f8481g;

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f8482h;

    /* renamed from: i, reason: collision with root package name */
    public final C0655e f8483i;

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f8484j;

    /* renamed from: k, reason: collision with root package name */
    public final ArrayList f8485k;

    /* renamed from: l, reason: collision with root package name */
    public final ArrayList f8486l;

    /* renamed from: m, reason: collision with root package name */
    public final String f8487m;

    public C0654d(C0732b c0732b) {
        this.f8475a = c0732b.j("moduleId");
        this.f8476b = c0732b.e(ClientCookie.VERSION_ATTR);
        this.f8477c = c0732b.e("url");
        this.f8478d = c0732b.e("className");
        this.f8479e = c0732b.a(RemoteConfigConstants.RequestFieldKey.PACKAGE_NAME, "org.weathero.app");
        this.f8480f = c0732b.e("instanceMode");
        C0732b i2 = c0732b.i("createInstance");
        this.f8483i = i2 == null ? null : new C0655e(i2.e(FirebaseAnalytics.Param.METHOD), a(i2.h("params")));
        this.f8481g = c0732b.a("minSdk", 1);
        this.f8482h = a(c0732b.h("constructorParams"));
        this.f8484j = b(c0732b.h("startSequence"));
        this.f8485k = b(c0732b.h("stopSequence"));
        if (c0732b.f("buildSequence")) {
            this.f8487m = c0732b.d("buildSequence").j("builderClass");
            this.f8486l = b(c0732b.d("buildSequence").h("sequence"));
        } else {
            this.f8487m = null;
            this.f8486l = null;
        }
    }

    public static ArrayList a(C0731a c0731a) {
        ArrayList arrayList = new ArrayList();
        if (c0731a != null) {
            for (int i2 = 0; i2 < c0731a.a(); i2++) {
                arrayList.add(new C0656f(c0731a.d(i2)));
            }
        }
        return arrayList;
    }

    public static ArrayList b(C0731a c0731a) {
        ArrayList arrayList = new ArrayList();
        if (c0731a != null) {
            for (int i2 = 0; i2 < c0731a.a(); i2++) {
                C0732b b7 = c0731a.b(i2);
                arrayList.add(new C0655e(b7.e(FirebaseAnalytics.Param.METHOD), a(b7.h("params"))));
            }
        }
        return arrayList;
    }

    public String toString() {
        return this.f8475a + " v" + this.f8476b + StringUtils.SPACE + this.f8480f;
    }
}

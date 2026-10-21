package E4;

import J0.g;
import Q4.d;
import Z4.o;
import a5.C0396b;
import a5.C0398d;
import a5.C0400f;
import a5.C0402h;
import a5.j;
import a5.l;
import a5.n;
import a5.p;
import a5.r;
import a5.t;
import a5.v;
import a5.x;
import android.widget.Toast;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import cz.msebera.android.httpclient.HttpHost;
import flix.com.vision.App;
import flix.com.vision.activities.FilterActivity;
import flix.com.vision.activities.LinksActivity;
import flix.com.vision.api.alldebrid.AllDebridApiKeyEntryActivity;
import flix.com.vision.api.offcloud.OffCloudApiKeyEntryActivity;
import flix.com.vision.api.premiumize.PremApiKeyEntryActivity;
import flix.com.vision.api.torbox.TorBoxApiKeyEntryActivity;
import flix.com.vision.models.Movie;
import flix.com.vision.utils.JsonUtils;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final /* synthetic */ class c implements Consumer {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f975b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f976e;

    public /* synthetic */ c(Object obj, int i2) {
        this.f975b = i2;
        this.f976e = obj;
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        String str;
        int i2 = 8;
        int i7 = 9;
        int i8 = 10;
        int i9 = 17;
        Object obj2 = this.f976e;
        switch (this.f975b) {
            case 0:
                int i10 = AllDebridApiKeyEntryActivity.f15797p;
                d dVar = ((AllDebridApiKeyEntryActivity) obj2).f15803n;
                if (dVar != null) {
                    try {
                        dVar.dismiss();
                        break;
                    } catch (Exception unused) {
                        return;
                    }
                }
                break;
            case 1:
                int i11 = OffCloudApiKeyEntryActivity.f15808p;
                OffCloudApiKeyEntryActivity offCloudApiKeyEntryActivity = (OffCloudApiKeyEntryActivity) obj2;
                d dVar2 = offCloudApiKeyEntryActivity.f15814n;
                if (dVar2 != null) {
                    try {
                        dVar2.dismiss();
                    } catch (Exception unused2) {
                    }
                }
                N4.a.Success(offCloudApiKeyEntryActivity, "Network error. Please try again.", null, 80, 1);
                break;
            case 2:
                int i12 = PremApiKeyEntryActivity.f15815p;
                d dVar3 = ((PremApiKeyEntryActivity) obj2).f15821n;
                if (dVar3 != null) {
                    try {
                        dVar3.dismiss();
                        break;
                    } catch (Exception unused3) {
                        return;
                    }
                }
                break;
            case 3:
                int i13 = TorBoxApiKeyEntryActivity.f15841p;
                TorBoxApiKeyEntryActivity torBoxApiKeyEntryActivity = (TorBoxApiKeyEntryActivity) obj2;
                d dVar4 = torBoxApiKeyEntryActivity.f15847n;
                if (dVar4 != null) {
                    try {
                        dVar4.dismiss();
                    } catch (Exception unused4) {
                    }
                }
                N4.a.Success(torBoxApiKeyEntryActivity, "Network error. Please try again.", null, 80, 1);
                break;
            case 4:
                String str2 = (String) obj;
                o oVar = (o) obj2;
                if (!oVar.f4578d) {
                    oVar.e(str2);
                    break;
                }
                break;
            case 5:
                JsonElement jsonElement = (JsonElement) obj;
                C0398d c0398d = (C0398d) obj2;
                if (!c0398d.f4771c) {
                    JsonObject asJsonObject = jsonElement.getAsJsonObject();
                    String asString = asJsonObject.get("id").getAsString();
                    String asString2 = asJsonObject.get("uri").getAsString();
                    if (asString2 != null && asString2.contains(HttpHost.DEFAULT_SCHEME_NAME)) {
                        App.getInstance().getRequestQueue().add(new C0396b(0, asString2, new X4.a(5, c0398d, asString), new A0.a(c0398d, i9)));
                        break;
                    } else if (asString != null && asString.length() > 0) {
                        App.getInstance().getRequestQueue().add(new C0396b(0, "https://api.real-debrid.com/rest/1.0/torrents/info/".concat(asString), new X4.a(5, c0398d, asString), new A0.a(c0398d, i9)));
                        break;
                    }
                }
                break;
            case 6:
                JsonElement jsonElement2 = (JsonElement) obj;
                C0402h c0402h = (C0402h) obj2;
                if (!c0402h.f4783f) {
                    JsonObject asJsonObject2 = jsonElement2.getAsJsonObject();
                    String asString3 = asJsonObject2.get("id").getAsString();
                    String asString4 = asJsonObject2.get("uri").getAsString();
                    if (asString4 != null && asString4.contains(HttpHost.DEFAULT_SCHEME_NAME)) {
                        App.getInstance().getRequestQueue().add(new C0400f(0, asString4, new X4.a(6, c0402h, asString3), new g(13)));
                        break;
                    } else if (asString3 != null && asString3.length() > 0) {
                        App.getInstance().getRequestQueue().add(new C0400f(0, "https://api.real-debrid.com/rest/1.0/torrents/info/".concat(asString3), new X4.a(6, c0402h, asString3), new g(13)));
                        break;
                    }
                }
                break;
            case 7:
                JsonElement jsonElement3 = (JsonElement) obj;
                l lVar = (l) obj2;
                if (!lVar.f4792c) {
                    JsonObject asJsonObject3 = jsonElement3.getAsJsonObject();
                    String asString5 = asJsonObject3.get("id").getAsString();
                    String asString6 = asJsonObject3.get("uri").getAsString();
                    if (asString6 != null && asString6.contains(HttpHost.DEFAULT_SCHEME_NAME)) {
                        App.getInstance().getRequestQueue().add(new j(0, asString6, new X4.a(7, lVar, asString5), new g(14)));
                        break;
                    } else if (asString5 != null && asString5.length() > 0) {
                        App.getInstance().getRequestQueue().add(new j(0, "https://api.real-debrid.com/rest/1.0/torrents/info/".concat(asString5), new X4.a(7, lVar, asString5), new g(14)));
                        break;
                    }
                }
                break;
            case 8:
                JsonElement jsonElement4 = (JsonElement) obj;
                p pVar = (p) obj2;
                if (!pVar.f4804f) {
                    JsonObject asJsonObject4 = jsonElement4.getAsJsonObject();
                    String asString7 = asJsonObject4.get("id").getAsString();
                    String asString8 = asJsonObject4.get("uri").getAsString();
                    if (asString8 != null && asString8.contains(HttpHost.DEFAULT_SCHEME_NAME)) {
                        App.getInstance().getRequestQueue().add(new n(0, asString8, new X4.a(i2, pVar, asString7), new g(15)));
                        break;
                    } else if (asString7 != null && asString7.length() > 0) {
                        App.getInstance().getRequestQueue().add(new n(0, "https://api.real-debrid.com/rest/1.0/torrents/info/".concat(asString7), new X4.a(i2, pVar, asString7), new g(15)));
                        break;
                    }
                }
                break;
            case 9:
                JsonElement jsonElement5 = (JsonElement) obj;
                t tVar = (t) obj2;
                if (!tVar.f4813c) {
                    JsonObject asJsonObject5 = jsonElement5.getAsJsonObject();
                    String asString9 = asJsonObject5.get("id").getAsString();
                    String asString10 = asJsonObject5.get("uri").getAsString();
                    if (asString10 != null && asString10.contains(HttpHost.DEFAULT_SCHEME_NAME)) {
                        App.getInstance().getRequestQueue().add(new r(0, asString10, new X4.a(i7, tVar, asString9), new g(16)));
                        break;
                    } else if (asString9 != null && asString9.length() > 0) {
                        App.getInstance().getRequestQueue().add(new r(0, "https://api.real-debrid.com/rest/1.0/torrents/info/".concat(asString9), new X4.a(i7, tVar, asString9), new g(16)));
                        break;
                    }
                }
                break;
            case 10:
                JsonElement jsonElement6 = (JsonElement) obj;
                x xVar = (x) obj2;
                if (!xVar.f4825g) {
                    JsonObject asJsonObject6 = jsonElement6.getAsJsonObject();
                    String asString11 = asJsonObject6.get("id").getAsString();
                    String asString12 = asJsonObject6.get("uri").getAsString();
                    if (asString12 != null && asString12.contains(HttpHost.DEFAULT_SCHEME_NAME)) {
                        App.getInstance().getRequestQueue().add(new v(0, asString12, new X4.a(i8, xVar, asString11), new g(17)));
                        break;
                    } else if (asString11 != null && asString11.length() > 0) {
                        App.getInstance().getRequestQueue().add(new v(0, "https://api.real-debrid.com/rest/1.0/torrents/info/".concat(asString11), new X4.a(i8, xVar, asString11), new g(17)));
                        break;
                    }
                }
                break;
            case 11:
                FilterActivity filterActivity = (FilterActivity) obj2;
                ArrayList<Movie> parseListMovie = JsonUtils.parseListMovie((JsonElement) obj, filterActivity.f14683e);
                int size = parseListMovie.size();
                ArrayList arrayList = filterActivity.f14690r;
                if (size > 0 && filterActivity.f14696x) {
                    arrayList.clear();
                    filterActivity.f14696x = false;
                } else if (parseListMovie.size() == 0) {
                    Toast.makeText(filterActivity.getBaseContext(), "No more result", 0).show();
                    filterActivity.f14670C.setupMoreListener(null, 20);
                    filterActivity.f14676I.notifyDataSetChanged();
                    break;
                }
                arrayList.addAll(App.getInstance().filterList(parseListMovie));
                if (arrayList.size() > parseListMovie.size()) {
                    filterActivity.f14676I.notifyItemRangeChanged(arrayList.size() - 1, parseListMovie.size());
                } else {
                    filterActivity.f14676I.notifyDataSetChanged();
                }
                if (parseListMovie.size() > 0 && arrayList.size() == 0) {
                    int i14 = filterActivity.f14678K + 1;
                    filterActivity.f14678K = i14;
                    filterActivity.e(i14);
                    break;
                }
                break;
            default:
                int i15 = LinksActivity.f14702b0;
                LinksActivity linksActivity = (LinksActivity) obj2;
                JsonObject asJsonObject7 = ((JsonElement) obj).getAsJsonObject();
                if (asJsonObject7.get("still_path").isJsonNull()) {
                    str = null;
                } else {
                    str = App.f14419D + "original" + asJsonObject7.get("still_path").getAsString();
                }
                String asString13 = !asJsonObject7.get("overview").isJsonNull() ? asJsonObject7.get("overview").getAsString() : null;
                String asString14 = asJsonObject7.get("name").isJsonNull() ? null : asJsonObject7.get("name").getAsString();
                if (!asJsonObject7.get("runtime").isJsonNull()) {
                    linksActivity.f14726X = asJsonObject7.get("runtime").getAsInt();
                }
                if (asString14 == null || asString14.isEmpty()) {
                    asString14 = "Episode ";
                } else {
                    linksActivity.f14725W = asString14;
                }
                String str3 = linksActivity.f14726X + "min  · aired on " + asJsonObject7.get("air_date").getAsString();
                if (str != null && asString13 != null) {
                    try {
                        linksActivity.g(str, asString13, asString14, str3);
                        break;
                    } catch (Exception unused5) {
                        return;
                    }
                }
                break;
        }
    }
}

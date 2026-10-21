package y4;

import com.android.volley.Response;
import flix.com.vision.activities.AnimesListActivity;
import flix.com.vision.activities.DramaHomeActivity;
import java.util.ArrayList;
import org.json.JSONArray;

/* renamed from: y4.A, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C1886A implements Response.Listener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21102b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ArrayList f21103e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ flix.com.vision.activities.base.a f21104f;

    public /* synthetic */ C1886A(flix.com.vision.activities.base.a aVar, ArrayList arrayList, int i2) {
        this.f21102b = i2;
        this.f21104f = aVar;
        this.f21103e = arrayList;
    }

    @Override // com.android.volley.Response.Listener
    public final void onResponse(Object obj) {
        ArrayList arrayList = this.f21103e;
        flix.com.vision.activities.base.a aVar = this.f21104f;
        String str = (String) obj;
        switch (this.f21102b) {
            case 0:
                int i2 = DramaHomeActivity.f14580W;
                DramaHomeActivity dramaHomeActivity = (DramaHomeActivity) aVar;
                try {
                    JSONArray jSONArray = (JSONArray) new JSONArray(str.substring(19, str.length() - 1)).get(1);
                    for (int i7 = 0; i7 < jSONArray.length(); i7++) {
                        arrayList.add(((JSONArray) jSONArray.get(i7)).get(0).toString());
                    }
                    dramaHomeActivity.f14604e.clearSuggestions();
                    dramaHomeActivity.f14604e.addSuggestions(arrayList);
                    break;
                } catch (Exception unused) {
                    return;
                }
            default:
                int i8 = AnimesListActivity.f14504E;
                AnimesListActivity animesListActivity = (AnimesListActivity) aVar;
                try {
                    JSONArray jSONArray2 = (JSONArray) new JSONArray(str.substring(19, str.length() - 1)).get(1);
                    for (int i9 = 0; i9 < jSONArray2.length(); i9++) {
                        arrayList.add(((JSONArray) jSONArray2.get(i9)).get(0).toString());
                    }
                    animesListActivity.f14509b.clearSuggestions();
                    animesListActivity.f14509b.addSuggestions(arrayList);
                    break;
                } catch (Exception unused2) {
                    return;
                }
        }
    }
}

package y4;

import com.google.gson.JsonElement;
import flix.com.vision.App;
import flix.com.vision.activities.SearchActivityTV;
import flix.com.vision.models.Movie;
import flix.com.vision.utils.JsonUtils;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes2.dex */
public final /* synthetic */ class F0 implements Consumer {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21124b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SearchActivityTV f21125e;

    public /* synthetic */ F0(SearchActivityTV searchActivityTV, int i2) {
        this.f21124b = i2;
        this.f21125e = searchActivityTV;
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        SearchActivityTV searchActivityTV = this.f21125e;
        switch (this.f21124b) {
            case 0:
                int i2 = SearchActivityTV.f14981I;
                searchActivityTV.getClass();
                ArrayList<Movie> parseSearchMulti = JsonUtils.parseSearchMulti((JsonElement) obj);
                int size = parseSearchMulti.size();
                ArrayList arrayList = searchActivityTV.f14992f;
                if (size > 0) {
                    searchActivityTV.f14999s.setVisibility(8);
                    arrayList.clear();
                }
                arrayList.addAll(parseSearchMulti);
                searchActivityTV.f14993j.notifyDataSetChanged();
                searchActivityTV.f15001u.scrollToPosition(0);
                searchActivityTV.f15001u.clearFocus();
                searchActivityTV.f14990b.setVisibility(4);
                break;
            case 1:
                ArrayList<Movie> parseListMovie = JsonUtils.parseListMovie((JsonElement) obj, searchActivityTV.f14987F);
                if (parseListMovie.size() > 0) {
                    searchActivityTV.f14999s.setVisibility(0);
                }
                boolean z6 = searchActivityTV.f14988G;
                ArrayList arrayList2 = searchActivityTV.f14991e;
                ArrayList arrayList3 = searchActivityTV.f14992f;
                if (z6) {
                    arrayList3.clear();
                    arrayList2.clear();
                }
                arrayList2.addAll(App.getInstance().filterList(parseListMovie));
                arrayList3.addAll(App.getInstance().filterList(parseListMovie));
                if (!searchActivityTV.f14988G) {
                    Collections.shuffle(arrayList3);
                    searchActivityTV.f14993j.notifyDataSetChanged();
                    searchActivityTV.f15001u.scrollToPosition(0);
                    searchActivityTV.f14990b.setVisibility(4);
                    break;
                } else {
                    searchActivityTV.f14988G = false;
                    searchActivityTV.f14987F = searchActivityTV.f14987F == 0 ? 1 : 0;
                    searchActivityTV.e();
                    break;
                }
            default:
                searchActivityTV.f14990b.setVisibility(4);
                break;
        }
    }
}

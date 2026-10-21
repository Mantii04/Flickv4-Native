package y4;

import com.google.gson.JsonElement;
import flix.com.vision.App;
import flix.com.vision.activities.SearchResultsActivity;
import flix.com.vision.models.Movie;
import flix.com.vision.utils.JsonUtils;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final /* synthetic */ class N0 implements Consumer {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21150b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SearchResultsActivity f21151e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f21152f;

    public /* synthetic */ N0(SearchResultsActivity searchResultsActivity, int i2, int i7) {
        this.f21150b = i7;
        this.f21151e = searchResultsActivity;
        this.f21152f = i2;
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        StringBuilder sb;
        StringBuilder sb2;
        StringBuilder sb3;
        StringBuilder sb4;
        JsonElement jsonElement = (JsonElement) obj;
        switch (this.f21150b) {
            case 0:
                SearchResultsActivity searchResultsActivity = this.f21151e;
                searchResultsActivity.f15012E.setVisibility(8);
                ArrayList<Movie> parseSearchMovies = JsonUtils.parseSearchMovies(jsonElement, 0);
                int size = parseSearchMovies.size();
                ArrayList arrayList = searchResultsActivity.f15025t;
                if (size >= 1) {
                    arrayList.addAll(App.getInstance().filterList(parseSearchMovies));
                    if (searchResultsActivity.f15024s == 0) {
                        ArrayList arrayList2 = searchResultsActivity.f15026u;
                        arrayList2.addAll(App.getInstance().filterList(parseSearchMovies));
                        if (arrayList2.size() == 0) {
                            searchResultsActivity.f15013F.notifyDataSetChanged();
                        } else {
                            searchResultsActivity.f15013F.notifyItemRangeInserted(arrayList2.size() - 1, parseSearchMovies.size());
                        }
                    }
                    if (arrayList.size() == 100) {
                        sb = new StringBuilder();
                        sb.append(arrayList.size());
                        sb.append("+");
                    } else {
                        sb = new StringBuilder();
                        sb.append(arrayList.size());
                        sb.append("");
                    }
                    String sb5 = sb.toString();
                    int i2 = this.f21152f;
                    if (i2 >= 5) {
                        searchResultsActivity.f15018j.setText("Movies · " + sb5);
                        break;
                    } else {
                        searchResultsActivity.e(i2 + 1);
                        break;
                    }
                } else {
                    if (arrayList.size() == 100) {
                        sb2 = new StringBuilder();
                        sb2.append(arrayList.size());
                        sb2.append("+");
                    } else {
                        sb2 = new StringBuilder();
                        sb2.append(arrayList.size());
                        sb2.append("");
                    }
                    String sb6 = sb2.toString();
                    searchResultsActivity.f15018j.setText("Movies · " + sb6);
                    break;
                }
            default:
                SearchResultsActivity searchResultsActivity2 = this.f21151e;
                searchResultsActivity2.f15012E.setVisibility(8);
                ArrayList<Movie> parseSearchMovies2 = JsonUtils.parseSearchMovies(jsonElement, 1);
                int size2 = parseSearchMovies2.size();
                ArrayList arrayList3 = searchResultsActivity2.f15028w;
                if (size2 >= 1) {
                    arrayList3.addAll(App.getInstance().filterList(parseSearchMovies2));
                    if (1 == searchResultsActivity2.f15024s) {
                        ArrayList arrayList4 = searchResultsActivity2.f15026u;
                        arrayList4.addAll(App.getInstance().filterList(parseSearchMovies2));
                        if (arrayList4.size() == 0) {
                            searchResultsActivity2.f15013F.notifyDataSetChanged();
                        } else {
                            searchResultsActivity2.f15013F.notifyItemRangeInserted(arrayList4.size() - 1, parseSearchMovies2.size());
                        }
                    }
                    if (arrayList3.size() == 100) {
                        sb3 = new StringBuilder();
                        sb3.append(arrayList3.size());
                        sb3.append("+");
                    } else {
                        sb3 = new StringBuilder();
                        sb3.append(arrayList3.size());
                        sb3.append("");
                    }
                    String sb7 = sb3.toString();
                    int i7 = this.f21152f;
                    if (i7 >= 5) {
                        searchResultsActivity2.f15017f.setText("Series · " + sb7);
                        break;
                    } else {
                        searchResultsActivity2.g(i7 + 1);
                        break;
                    }
                } else {
                    if (arrayList3.size() == 100) {
                        sb4 = new StringBuilder();
                        sb4.append(arrayList3.size());
                        sb4.append("+");
                    } else {
                        sb4 = new StringBuilder();
                        sb4.append(arrayList3.size());
                        sb4.append("");
                    }
                    String sb8 = sb4.toString();
                    searchResultsActivity2.f15017f.setText("Series · " + sb8);
                    break;
                }
        }
    }
}

package A4;

import com.google.gson.JsonElement;
import flix.com.vision.activities.leanback.SlideshowActivity;
import flix.com.vision.models.Movie;
import flix.com.vision.utils.JsonUtils;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes2.dex */
public final /* synthetic */ class v implements Consumer {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f99b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SlideshowActivity f100e;

    public /* synthetic */ v(SlideshowActivity slideshowActivity, int i2) {
        this.f99b = i2;
        this.f100e = slideshowActivity;
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        SlideshowActivity slideshowActivity = this.f100e;
        switch (this.f99b) {
            case 0:
                slideshowActivity.f15505f.setVisibility(8);
                slideshowActivity.f15503b.setVisibility(0);
                break;
            case 1:
                JsonElement jsonElement = (JsonElement) obj;
                if (slideshowActivity.f15510q == null) {
                    slideshowActivity.f15510q = new ArrayList();
                }
                ArrayList<Movie> parseListMovie = JsonUtils.parseListMovie(jsonElement, 0);
                slideshowActivity.f15510q = parseListMovie;
                if (parseListMovie != null && !parseListMovie.isEmpty()) {
                    Collections.shuffle(slideshowActivity.f15510q);
                    slideshowActivity.f(false);
                    slideshowActivity.f15509p.postDelayed(slideshowActivity.f15514u, 14000L);
                    break;
                }
                break;
            case 2:
                int i2 = SlideshowActivity.f15502v;
                slideshowActivity.finish();
                break;
            case 3:
                JsonElement jsonElement2 = (JsonElement) obj;
                if (slideshowActivity.f15510q == null) {
                    slideshowActivity.f15510q = new ArrayList();
                }
                slideshowActivity.f15510q.addAll(JsonUtils.parseListMovie(jsonElement2, 1));
                ArrayList arrayList = slideshowActivity.f15510q;
                if (arrayList != null && !arrayList.isEmpty()) {
                    Collections.shuffle(slideshowActivity.f15510q);
                    break;
                }
                break;
            case 4:
                JsonElement jsonElement3 = (JsonElement) obj;
                if (slideshowActivity.f15510q == null) {
                    slideshowActivity.f15510q = new ArrayList();
                }
                slideshowActivity.f15510q.addAll(JsonUtils.parseListMovie(jsonElement3, 1));
                ArrayList arrayList2 = slideshowActivity.f15510q;
                if (arrayList2 != null && !arrayList2.isEmpty()) {
                    Collections.shuffle(slideshowActivity.f15510q);
                    break;
                }
                break;
            default:
                JsonElement jsonElement4 = (JsonElement) obj;
                if (slideshowActivity.f15510q == null) {
                    slideshowActivity.f15510q = new ArrayList();
                }
                slideshowActivity.f15510q.addAll(JsonUtils.parseListMovie(jsonElement4, 1));
                ArrayList arrayList3 = slideshowActivity.f15510q;
                if (arrayList3 != null && !arrayList3.isEmpty()) {
                    Collections.shuffle(slideshowActivity.f15510q);
                    break;
                }
                break;
        }
    }
}
